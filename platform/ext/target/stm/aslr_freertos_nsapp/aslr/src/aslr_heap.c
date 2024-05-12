/*
 * FreeRTOS Kernel V10.3.1
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

// Add by xinhui
#include "rand.h"
/* Standard includes. */
// #include <stdint.h>

/* Secure context heap includes. */
#include "aslr_heap.h"

/* Secure port macros. */
#include "aslr_secure_port_macros.h"

/**
 * @brief Total heap size.
 */
#define secureconfigTOTAL_HEAP_SIZE_aslr (((size_t)(0xb000)))

/* No test marker by default. */
// #ifndef mtCOVERAGE_TEST_MARKER
//	#define mtCOVERAGE_TEST_MARKER()
// #endif
//
///* No tracing by default. */
// #ifndef traceMALLOC
//	#define traceMALLOC( pvReturn, xWantedSize )
// #endif
//
///* No tracing by default. */
// #ifndef traceFREE
//	#define traceFREE( pv, xBlockSize )
// #endif

/* Block sizes must not get too small. */
#define secureheapMINIMUM_BLOCK_SIZE_aslr ((size_t)(xHeapStructSize_aslr << 1))
#define RAM_HEAP_PADDING_SIZE_aslr ((xHeapStructSize_aslr * 6)) // 6 * heap block struct size
/* Assumes 8bit bytes! */
#define secureheapBITS_PER_BYTE_aslr ((size_t)8)
/*-----------------------------------------------------------*/

/* Allocate the memory for the heap. */
#if (configAPPLICATION_ALLOCATED_HEAP == 1)
//	/* The application writer has already defined the array used for the RTOS
//	 * heap - probably so it can be placed in a special segment or address. */
extern uint8_t *ucHeap_aslr = 0x20002800;
#else  /* configAPPLICATION_ALLOCATED_HEAP */
static uint8_t *ucHeap_aslr = 0x20004600;
#endif /* configAPPLICATION_ALLOCATED_HEAP */

/**
 * @brief The linked list structure.
 *
 * This is used to link free blocks in order of their memory address.
 */
typedef struct A_BLOCK_LINK_aslr
{
	struct A_BLOCK_LINK_aslr *pxNextFreeBlock; /**< The next free block in the list. */
	size_t xBlockSize;						   /**< The size of the free block. */
} BlockLink_t_aslr;
/*-----------------------------------------------------------*/

/**
 * @brief Called automatically to setup the required heap structures the first
 * time pvPortMalloc() is called.
 */
static void prvHeapInit_aslr(void);

/**
 * @brief Inserts a block of memory that is being freed into the correct
 * position in the list of free memory blocks.
 *
 * The block being freed will be merged with the block in front it and/or the
 * block behind it if the memory blocks are adjacent to each other.
 *
 * @param[in] pxBlockToInsert The block being freed.
 */
static void prvInsertBlockIntoFreeList_aslr(BlockLink_t_aslr *pxBlockToInsert);
/*-----------------------------------------------------------*/

/**
 * @brief The size of the structure placed at the beginning of each allocated
 * memory block must by correctly byte aligned.
 */
static const size_t xHeapStructSize_aslr = (sizeof(BlockLink_t_aslr) + ((size_t)(secureportBYTE_ALIGNMENT_aslr - 1))) & ~((size_t)secureportBYTE_ALIGNMENT_MASK_aslr);

/**
 * @brief Create a couple of list links to mark the start and end of the list.
 */
static BlockLink_t_aslr xStart_aslr, *pxEnd_aslr = NULL;

/**
 * @brief Keeps track of the number of free bytes remaining, but says nothing
 * about fragmentation.
 */
static size_t xFreeBytesRemaining_aslr = 0U;
static size_t xMinimumEverFreeBytesRemaining_aslr = 0U;

/**
 * @brief Gets set to the top bit of an size_t type.
 *
 * When this bit in the xBlockSize member of an BlockLink_t structure is set
 * then the block belongs to the application. When the bit is free the block is
 * still part of the free heap space.
 */
static size_t xBlockAllocatedBit_aslr = 0;
/*-----------------------------------------------------------*/

static void prvHeapInit_aslr(void)
{
	BlockLink_t_aslr *pxFirstFreeBlock;
	uint8_t *pucAlignedHeap;
	size_t uxAddress;
	size_t xTotalHeapSize = secureconfigTOTAL_HEAP_SIZE_aslr;

	/* Ensure the heap starts on a correctly aligned boundary. */
	uxAddress = (size_t)ucHeap_aslr;

	if ((uxAddress & secureportBYTE_ALIGNMENT_MASK_aslr) != 0)
	{
		uxAddress += (secureportBYTE_ALIGNMENT_aslr - 1);
		uxAddress &= ~((size_t)secureportBYTE_ALIGNMENT_MASK_aslr);
		xTotalHeapSize -= uxAddress - (size_t)ucHeap_aslr;
	}

	pucAlignedHeap = (uint8_t *)uxAddress;

	/* xStart is used to hold a pointer to the first item in the list of free
	 * blocks.  The void cast is used to prevent compiler warnings. */
	xStart_aslr.pxNextFreeBlock = (void *)pucAlignedHeap;
	xStart_aslr.xBlockSize = (size_t)0;

	/* pxEnd is used to mark the end of the list of free blocks and is inserted
	 * at the end of the heap space. */
	uxAddress = ((size_t)pucAlignedHeap) + xTotalHeapSize;
	uxAddress -= xHeapStructSize_aslr;
	uxAddress &= ~((size_t)secureportBYTE_ALIGNMENT_MASK_aslr);
	pxEnd_aslr = (void *)uxAddress;
	pxEnd_aslr->xBlockSize = 0;
	pxEnd_aslr->pxNextFreeBlock = NULL;

	/* To start with there is a single free block that is sized to take up the
	 * entire heap space, minus the space taken by pxEnd. */
	pxFirstFreeBlock = (void *)pucAlignedHeap;
	pxFirstFreeBlock->xBlockSize = uxAddress - (size_t)pxFirstFreeBlock;
	pxFirstFreeBlock->pxNextFreeBlock = pxEnd_aslr;

	/* Only one block exists - and it covers the entire usable heap space. */
	xMinimumEverFreeBytesRemaining_aslr = pxFirstFreeBlock->xBlockSize;
	xFreeBytesRemaining_aslr = pxFirstFreeBlock->xBlockSize;

	/* Work out the position of the top bit in a size_t variable. */
	xBlockAllocatedBit_aslr = ((size_t)1) << ((sizeof(size_t) * secureheapBITS_PER_BYTE_aslr) - 1);
}
/*-----------------------------------------------------------*/

static void prvInsertBlockIntoFreeList_aslr(BlockLink_t_aslr *pxBlockToInsert)
{
	BlockLink_t_aslr *pxIterator;
	uint8_t *puc;

	/* Iterate through the list until a block is found that has a higher address
	 * than the block being inserted. */

	for (pxIterator = &xStart_aslr; pxIterator->pxNextFreeBlock < pxBlockToInsert; pxIterator = pxIterator->pxNextFreeBlock)
	{
		/* Nothing to do here, just iterate to the right position. */
	}

	/* Do the block being inserted, and the block it is being inserted after
	 * make a contiguous block of memory? */
	puc = (uint8_t *)pxIterator;
	if ((puc + pxIterator->xBlockSize) == (uint8_t *)pxBlockToInsert)
	{
		pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
		pxBlockToInsert = pxIterator;
	}
	//	else
	//	{
	//		mtCOVERAGE_TEST_MARKER();
	//	}

	/* Do the block being inserted, and the block it is being inserted before
	 * make a contiguous block of memory? */
	puc = (uint8_t *)pxBlockToInsert;
	if ((puc + pxBlockToInsert->xBlockSize) == (uint8_t *)pxIterator->pxNextFreeBlock)
	{
		if (pxIterator->pxNextFreeBlock != pxEnd_aslr)
		{
			/* Form one big block from the two blocks. */
			pxBlockToInsert->xBlockSize += pxIterator->pxNextFreeBlock->xBlockSize;
			pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock->pxNextFreeBlock;
		}
		else
		{
			pxBlockToInsert->pxNextFreeBlock = pxEnd_aslr;
		}
	}
	else
	{
		pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
	}

	/* If the block being inserted plugged a gab, so was merged with the block
	 * before and the block after, then it's pxNextFreeBlock pointer will have
	 * already been set, and should not be set here as that would make it point
	 * to itself. */
	if (pxIterator != pxBlockToInsert)
	{
		pxIterator->pxNextFreeBlock = pxBlockToInsert;
	}
	//	else
	//	{
	//		mtCOVERAGE_TEST_MARKER();
	//	}
}
/*-----------------------------------------------------------*/

void *pvPortMalloc_aslr(size_t xWantedSize)
{
	BlockLink_t_aslr *pxBlock, *pxPreviousBlock, *pxNewBlockLink1, *pxNewBlockLink2, *pxFuncBlockLink;

	void *pvReturn = NULL, *pvRamReturn = NULL;

	/* If this is the first call to malloc then the heap will require
	 * initialisation to setup the list of free blocks. */
	if (pxEnd_aslr == NULL)
	{
		prvHeapInit_aslr();
	}
	//	else
	//	{
	//		mtCOVERAGE_TEST_MARKER();
	//	}

	/* Check the requested block size is not so large that the top bit is set.
	 * The top bit of the block size member of the BlockLink_t structure is used
	 * to determine who owns the block - the application or the kernel, so it
	 * must be free. */
	if ((xWantedSize & xBlockAllocatedBit_aslr) == 0)
	{
		/* The wanted size is increased so it can contain a BlockLink_t
		 * structure in addition to the requested amount of bytes. */
		if (xWantedSize > 0)
		{
			// Modified by xinhui
			// plus six xHeapStuctSize to align the random number.
			xWantedSize += 2 * xHeapStructSize_aslr;

			/* Ensure that blocks are always aligned to the required number of
			 * bytes. */
			if ((xWantedSize & secureportBYTE_ALIGNMENT_MASK_aslr) != 0x00)
			{
				/* Byte alignment required. */
				xWantedSize += (secureportBYTE_ALIGNMENT_aslr - (xWantedSize & secureportBYTE_ALIGNMENT_MASK_aslr));
				secureportASSERT_aslr((xWantedSize & secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
			}
			//			else
			//			{
			//				mtCOVERAGE_TEST_MARKER();
			//			}
		}
		//		else
		//		{
		//			mtCOVERAGE_TEST_MARKER();
		//		}

		if ((xWantedSize > 0) && (xWantedSize <= xFreeBytesRemaining_aslr))
		{
			/* Traverse the list from the start (lowest address) block until
			 * one of adequate size is found. */

			/**************** Modified by sxh ********************/
			// Reservoir Sampling to take a block
			/*****************************************************/
			pxPreviousBlock = &xStart_aslr;
			pxBlock = xStart_aslr.pxNextFreeBlock;
			while ((pxBlock->xBlockSize < xWantedSize) && (pxBlock->pxNextFreeBlock != NULL))
			{
				pxPreviousBlock = pxBlock;
				pxBlock = pxBlock->pxNextFreeBlock;
			}

			/* If the end marker was reached then a block of adequate size was
			 * not found. */
			if (pxBlock != pxEnd_aslr)
			{
				/* Return the memory space pointed to - jumping over the
				 * BlockLink_t structure at its start. */

				pvReturn = (void *)(((uint8_t *)pxPreviousBlock->pxNextFreeBlock) + xHeapStructSize_aslr);
				pvRamReturn = pvReturn;
				/* This block is being returned for use so must be taken out
				 * of the list of free blocks. */
				pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
				pxFuncBlockLink = pxBlock;
				/* If the block is larger than required it can be split into
				 * two. */
				/**************** Modified by sxh ********************/
				if ((pxBlock->xBlockSize - xWantedSize) > RAM_HEAP_PADDING_SIZE_aslr)
				{
					/* This block is to be split into two.  Create a new
					 * block following the number of bytes requested. The void
					 * cast is used to prevent byte alignment warnings from the
					 * compiler. */

					// TODO ram
					size_t sum_size = pxBlock->xBlockSize;
					// uint32_t ram_num = (rand_generate() % (pxBlock->xBlockSize - xWantedSize - RAM_HEAP_PADDING_SIZE_aslr)) & 0xfffffffc; // The lowest bit must be 0
					int32_t ram_num = 0;
					pvRamReturn = (void *)((uint8_t *)pvReturn + secureheapMINIMUM_BLOCK_SIZE_aslr + ram_num);
					pxNewBlockLink1 = (void *)(uint8_t *)pxBlock;
					pxFuncBlockLink = (void *)(((size_t)pvRamReturn & 0xfffffff8) - xHeapStructSize_aslr);
					pxNewBlockLink2 = (void *)((uint8_t *)pxFuncBlockLink + xWantedSize);
					// pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) + xWantedSize );
					secureportASSERT_aslr((((size_t)pxNewBlockLink1) & secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
					secureportASSERT_aslr((((size_t)pxNewBlockLink2) & secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
					secureportASSERT_aslr((((size_t)pxFuncBlockLink) & secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
					/* Calculate the sizes of two blocks split from the single
					 * block. */
					pxNewBlockLink1->xBlockSize = (uint8_t *)pxFuncBlockLink - (uint8_t *)pxNewBlockLink1;
					pxFuncBlockLink->xBlockSize = xWantedSize;
					pxNewBlockLink2->xBlockSize = sum_size - pxNewBlockLink1->xBlockSize - pxFuncBlockLink->xBlockSize;
					// pxBlock->xBlockSize = xWantedSize;

					/* Insert the new block into the list of free blocks. */
					prvInsertBlockIntoFreeList_aslr(pxNewBlockLink1);
					prvInsertBlockIntoFreeList_aslr(pxNewBlockLink2);
				}
				//				else
				//				{
				//					mtCOVERAGE_TEST_MARKER();
				//				}

				xFreeBytesRemaining_aslr -= pxFuncBlockLink->xBlockSize;

				if (xFreeBytesRemaining_aslr < xMinimumEverFreeBytesRemaining_aslr)
				{
					xMinimumEverFreeBytesRemaining_aslr = xFreeBytesRemaining_aslr;
				}
				//				else
				//				{
				//					mtCOVERAGE_TEST_MARKER();
				//				}

				/* The block is being returned - it is allocated and owned by
				 * the application and has no "next" block. */
				pxFuncBlockLink->xBlockSize |= xBlockAllocatedBit_aslr;
				pxFuncBlockLink->pxNextFreeBlock = NULL;
			}
			//			else
			//			{
			//				mtCOVERAGE_TEST_MARKER();
			//			}
		}
		//		else
		//		{
		//			mtCOVERAGE_TEST_MARKER();
		//		}
	}
	//	else
	//	{
	//		mtCOVERAGE_TEST_MARKER();
	//	}

	//	traceMALLOC( pvReturn, xWantedSize );

	//	#if( secureconfigUSE_MALLOC_FAILED_HOOK == 1 )
	//	{
	//		if( pvReturn == NULL )
	//		{
	//			extern void vApplicationMallocFailedHook( void );
	//			vApplicationMallocFailedHook();
	//		}
	////		else
	////		{
	////			mtCOVERAGE_TEST_MARKER();
	////		}
	//	}
	//	#endif

	secureportASSERT_aslr((((size_t)pvReturn) & (size_t)secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
	return pvRamReturn;
}
/*-----------------------------------------------------------*/

void vPortFree_aslr(void *pv)
{
	uint8_t *puc = (uint8_t *)pv;
	BlockLink_t_aslr *pxLink;

	if (pv != NULL)
	{
		/* The memory being freed will have an BlockLink_t structure immediately
		 * before it. */
		puc = (uint8_t *)((uint32_t)puc & 0xfffffff8);
		puc -= xHeapStructSize_aslr;

		/* This casting is to keep the compiler from issuing warnings. */
		pxLink = (void *)puc;

		/* Check the block is actually allocated. */
		secureportASSERT_aslr((pxLink->xBlockSize & xBlockAllocatedBit_aslr) != 0);
		secureportASSERT_aslr(pxLink->pxNextFreeBlock == NULL);

		if ((pxLink->xBlockSize & xBlockAllocatedBit_aslr) != 0)
		{
			if (pxLink->pxNextFreeBlock == NULL)
			{
				/* The block is being returned to the heap - it is no longer
				 * allocated. */
				pxLink->xBlockSize &= ~xBlockAllocatedBit_aslr;

				secureportDISABLE_NON_SECURE_INTERRUPTS_aslr();
				{
					/* Add this block to the list of free blocks. */
					xFreeBytesRemaining_aslr += pxLink->xBlockSize;
					// traceFREE( pv, pxLink->xBlockSize );
					prvInsertBlockIntoFreeList_aslr(((BlockLink_t_aslr *)pxLink));
				}
				secureportENABLE_NON_SECURE_INTERRUPTS_aslr();
			}
			//			else
			//			{
			//				mtCOVERAGE_TEST_MARKER();
			//			}
		}
		//		else
		//		{
		//			mtCOVERAGE_TEST_MARKER();
		//		}
	}
}
/*-----------------------------------------------------------*/

// size_t xPortGetFreeHeapSize_aslr( void )
//{
//	return xFreeBytesRemaining_aslr;
// }
///*-----------------------------------------------------------*/
//
// size_t xPortGetMinimumEverFreeHeapSize_aslr( void )
//{
//	return xMinimumEverFreeBytesRemaining_aslr;
//}
///*-----------------------------------------------------------*/
//
// void vPortInitialiseBlocks_aslr( void )
//{
//	/* This just exists to keep the linker quiet. */
//}
/*-----------------------------------------------------------*/
