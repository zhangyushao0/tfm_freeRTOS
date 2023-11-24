// Add by xinhui
#include "rand.h"
/* Standard includes. */
#include <stdint.h>

/* Secure context heap includes. */
#include "aslr_heap.h"

/* Secure port macros. */
#include "aslr_secure_port_macros.h"

#include "aslr_address_config.h"

// Total heap size.

#define secureconfigTOTAL_HEAP_SIZE_s_service1_aslr  \
    (((size_t)(ASLR_RAM_SECURE_SERVICE1_REGION_END - \
               ASLR_RAM_SECURE_SERVICE1_REGION_START + 1)))

#define secureconfigTOTAL_HEAP_SIZE_priv_aslr \
    (((size_t)(ASLR_RAM_PRIV_REGION_END - ASLR_RAM_PRIV_REGION_START + 1)))

#define secureconfigTOTAL_HEAP_SIZE_syscall_aslr                             \
    (((size_t)(ASLR_RAM_SYSCALL_REGION_END - ASLR_RAM_SYSCALL_REGION_START + \
               1)))

#define secureconfigTOTAL_HEAP_SIZE_npriv_aslr \
    (((size_t)(ASLR_RAM_UNPRIV_REGION_END - ASLR_RAM_UNPRIV_REGION_START + 1)))

// Block sizes must not get too small
#define secureheapMINIMUM_BLOCK_SIZE_aslr ((size_t)(xHeapStructSize_aslr << 1))
// 6 * heap block struct size
#define RAM_HEAP_PADDING_SIZE_aslr ((xHeapStructSize_aslr * 6))
// Assumes 8bit bytes!
#define secureheapBITS_PER_BYTE_aslr ((size_t)8)
/*-----------------------------------------------------------*/

/* Allocate the memory for the heap. */
static uint8_t* ucHeap_s_service1_aslr =
    (uint8_t*)ASLR_RAM_SECURE_SERVICE1_REGION_START;

static uint8_t* ucHeap_priv_aslr = (uint8_t*)ASLR_RAM_PRIV_REGION_START;

static uint8_t* ucHeap_syscall_aslr = (uint8_t*)ASLR_RAM_SYSCALL_REGION_START;

static uint8_t* ucHeap_npriv_aslr = (uint8_t*)ASLR_RAM_UNPRIV_REGION_START;

/**
 * @brief The linked list structure.
 * This is used to link free blocks in order of their memory address.
 */
typedef struct A_BLOCK_LINK_aslr {
    struct A_BLOCK_LINK_aslr*
        pxNextFreeBlock; /**< The next free block in the list. */
    size_t xBlockSize;   /**< The size of the free block. */
} BlockLink_t_aslr;
/*-----------------------------------------------------------*/

/**
 * @brief Called automatically to setup the required heap structures the first
 * time pvPortMalloc() is called.
 */
static void prvHeapInit_aslr(int type);

/**
 * @brief Inserts a block of memory that is being freed into the correct
 * position in the list of free memory blocks.
 *
 * The block being freed will be merged with the block in front it and/or the
 * block behind it if the memory blocks are adjacent to each other.
 *
 * @param[in] pxBlockToInsert The block being freed.
 */
static void prvInsertBlockIntoFreeList_aslr(BlockLink_t_aslr* pxBlockToInsert,
                                            int type);
/*-----------------------------------------------------------*/

/**
 * @brief The size of the structure placed at the beginning of each allocated
 * memory block must by correctly byte aligned.
 */
static const size_t xHeapStructSize_aslr =
    (sizeof(BlockLink_t_aslr) + ((size_t)(secureportBYTE_ALIGNMENT_aslr - 1))) &
    ~((size_t)secureportBYTE_ALIGNMENT_MASK_aslr);

/**
 * @brief Create a couple of list links to mark the start and end of the list.
 */
static BlockLink_t_aslr xStart_s_service1_aslr, *pxEnd_s_service1_aslr = NULL;
static BlockLink_t_aslr xStart_priv_aslr, *pxEnd_priv_aslr = NULL;
static BlockLink_t_aslr xStart_syscall_aslr, *pxEnd_syscall_aslr = NULL;
static BlockLink_t_aslr xStart_npriv_aslr, *pxEnd_npriv_aslr = NULL;

/**
 * @brief Keeps track of the number of free bytes remaining, but says nothing about fragmentation.
 */

static size_t xFreeBytesRemaining_s_service1_aslr = 0U;
static size_t xMinimumEverFreeBytesRemaining_s_service1_aslr = 0U;

static size_t xFreeBytesRemaining_priv_aslr = 0U;
static size_t xMinimumEverFreeBytesRemaining_priv_aslr = 0U;

static size_t xFreeBytesRemaining_syscall_aslr = 0U;
static size_t xMinimumEverFreeBytesRemaining_syscall_aslr = 0U;

static size_t xFreeBytesRemaining_npriv_aslr = 0U;
static size_t xMinimumEverFreeBytesRemaining_npriv_aslr = 0U;

/**
 * @brief Gets set to the top bit of an size_t type.
 *
 * When this bit in the xBlockSize member of an BlockLink_t structure is set
 * then the block belongs to the application. When the bit is free the block is
 * still part of the free heap space.
 */
static size_t xBlockAllocatedBit_s_service1_aslr = 0;
static size_t xBlockAllocatedBit_priv_aslr = 0;
static size_t xBlockAllocatedBit_syscall_aslr = 0;
static size_t xBlockAllocatedBit_npriv_aslr = 0;

/*-----------------------------------------------------------*/

static void prvHeapInit_aslr(int type) {
    BlockLink_t_aslr *xStart_aslr = NULL, **pxEnd_aslr = NULL;
    size_t xTotalHeapSize = 0;

    BlockLink_t_aslr* pxFirstFreeBlock;
    uint8_t* pucAlignedHeap;
    size_t uxAddress;
    if (type == ASLR_REGION_SECURE_TYPE) {
        xStart_aslr = &xStart_s_service1_aslr;
        pxEnd_aslr = &pxEnd_s_service1_aslr;
        xTotalHeapSize = secureconfigTOTAL_HEAP_SIZE_s_service1_aslr;
        uxAddress = (size_t)ucHeap_s_service1_aslr;
    } else if (type == ASLR_REGION_PRIV_TYPE) {
        xStart_aslr = &xStart_priv_aslr;
        pxEnd_aslr = &pxEnd_priv_aslr;
        xTotalHeapSize = secureconfigTOTAL_HEAP_SIZE_priv_aslr;
        uxAddress = (size_t)ucHeap_priv_aslr;
    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
        xStart_aslr = &xStart_syscall_aslr;
        pxEnd_aslr = &pxEnd_syscall_aslr;
        xTotalHeapSize = secureconfigTOTAL_HEAP_SIZE_syscall_aslr;
        uxAddress = (size_t)ucHeap_syscall_aslr;
    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
        xStart_aslr = &xStart_npriv_aslr;
        pxEnd_aslr = &pxEnd_npriv_aslr;
        xTotalHeapSize = secureconfigTOTAL_HEAP_SIZE_npriv_aslr;
        uxAddress = (size_t)ucHeap_npriv_aslr;
    }

    /* Ensure the heap starts on a correctly aligned boundary. */

    if ((uxAddress & secureportBYTE_ALIGNMENT_MASK_aslr) != 0) {
        uxAddress += (secureportBYTE_ALIGNMENT_aslr - 1);
        uxAddress &= ~((size_t)secureportBYTE_ALIGNMENT_MASK_aslr);
    }
    if (type == ASLR_REGION_SECURE_TYPE) {
        xTotalHeapSize -= uxAddress - (size_t)ucHeap_s_service1_aslr;
    } else if (type == ASLR_REGION_PRIV_TYPE) {
        xTotalHeapSize -= uxAddress - (size_t)ucHeap_priv_aslr;
    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
        xTotalHeapSize -= uxAddress - (size_t)ucHeap_syscall_aslr;
    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
        xTotalHeapSize -= uxAddress - (size_t)ucHeap_npriv_aslr;
    }

    pucAlignedHeap = (uint8_t*)uxAddress;

    /* xStart is used to hold a pointer to the first item in the list of free
     * blocks.  The void cast is used to prevent compiler warnings. */
    xStart_aslr->pxNextFreeBlock = (void*)pucAlignedHeap;
    xStart_aslr->xBlockSize = (size_t)0;

    /* pxEnd is used to mark the end of the list of free blocks and is inserted
     * at the end of the heap space. */
    uxAddress = ((size_t)pucAlignedHeap) + xTotalHeapSize;
    uxAddress -= xHeapStructSize_aslr;
    uxAddress &= ~((size_t)secureportBYTE_ALIGNMENT_MASK_aslr);
    (*pxEnd_aslr) = (void*)uxAddress;
    (*pxEnd_aslr)->xBlockSize = 0;
    (*pxEnd_aslr)->pxNextFreeBlock = NULL;

    /* To start with there is a single free block that is sized to take up the
     * entire heap space, minus the space taken by pxEnd. */
    pxFirstFreeBlock = (void*)pucAlignedHeap;
    pxFirstFreeBlock->xBlockSize = uxAddress - (size_t)pxFirstFreeBlock;
    pxFirstFreeBlock->pxNextFreeBlock = (*pxEnd_aslr);

    /* Only one block exists - and it covers the entire usable heap space. */
    if (type == ASLR_REGION_SECURE_TYPE) {
        xMinimumEverFreeBytesRemaining_s_service1_aslr =
            pxFirstFreeBlock->xBlockSize;
        xFreeBytesRemaining_s_service1_aslr = pxFirstFreeBlock->xBlockSize;
        xBlockAllocatedBit_s_service1_aslr =
            ((size_t)1) << ((sizeof(size_t) * secureheapBITS_PER_BYTE_aslr) -
                            1);
    } else if (type == ASLR_REGION_PRIV_TYPE) {
        xMinimumEverFreeBytesRemaining_priv_aslr = pxFirstFreeBlock->xBlockSize;
        xFreeBytesRemaining_priv_aslr = pxFirstFreeBlock->xBlockSize;
        xBlockAllocatedBit_priv_aslr =
            ((size_t)1) << ((sizeof(size_t) * secureheapBITS_PER_BYTE_aslr) -
                            1);
    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
        xMinimumEverFreeBytesRemaining_syscall_aslr =
            pxFirstFreeBlock->xBlockSize;
        xFreeBytesRemaining_syscall_aslr = pxFirstFreeBlock->xBlockSize;
        xBlockAllocatedBit_syscall_aslr =
            ((size_t)1) << ((sizeof(size_t) * secureheapBITS_PER_BYTE_aslr) -
                            1);
    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
        xMinimumEverFreeBytesRemaining_npriv_aslr =
            pxFirstFreeBlock->xBlockSize;
        xFreeBytesRemaining_npriv_aslr = pxFirstFreeBlock->xBlockSize;
        xBlockAllocatedBit_npriv_aslr =
            ((size_t)1) << ((sizeof(size_t) * secureheapBITS_PER_BYTE_aslr) -
                            1);
    }

    /* Work out the position of the top bit in a size_t variable. */
}
/*-----------------------------------------------------------*/

static void prvInsertBlockIntoFreeList_aslr(BlockLink_t_aslr* pxBlockToInsert,
                                            int type) {
    BlockLink_t_aslr* pxIterator;
    uint8_t* puc;

    BlockLink_t_aslr *xStart_aslr = NULL, **pxEnd_aslr = NULL;
    if (type == ASLR_REGION_SECURE_TYPE) {
        xStart_aslr = &xStart_s_service1_aslr;
        pxEnd_aslr = &pxEnd_s_service1_aslr;
    } else if (type == ASLR_REGION_PRIV_TYPE) {
        xStart_aslr = &xStart_priv_aslr;
        pxEnd_aslr = &pxEnd_priv_aslr;
    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
        xStart_aslr = &xStart_syscall_aslr;
        pxEnd_aslr = &pxEnd_syscall_aslr;
    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
        xStart_aslr = &xStart_npriv_aslr;
        pxEnd_aslr = &pxEnd_npriv_aslr;
    }

    /* Iterate through the list until a block is found that has a higher address
     * than the block being inserted. */

    for (pxIterator = xStart_aslr;
         pxIterator->pxNextFreeBlock < pxBlockToInsert;
         pxIterator = pxIterator->pxNextFreeBlock) {
        /* Nothing to do here, just iterate to the right position. */
    }

    /* Do the block being inserted, and the block it is being inserted after
     * make a contiguous block of memory? */
    puc = (uint8_t*)pxIterator;
    if ((puc + pxIterator->xBlockSize) == (uint8_t*)pxBlockToInsert) {
        pxIterator->xBlockSize += pxBlockToInsert->xBlockSize;
        pxBlockToInsert = pxIterator;
    }

    /* Do the block being inserted, and the block it is being inserted before
     * make a contiguous block of memory? */
    puc = (uint8_t*)pxBlockToInsert;
    if ((puc + pxBlockToInsert->xBlockSize) ==
        (uint8_t*)pxIterator->pxNextFreeBlock) {
        if (pxIterator->pxNextFreeBlock != (*pxEnd_aslr)) {
            /* Form one big block from the two blocks. */
            pxBlockToInsert->xBlockSize +=
                pxIterator->pxNextFreeBlock->xBlockSize;
            pxBlockToInsert->pxNextFreeBlock =
                pxIterator->pxNextFreeBlock->pxNextFreeBlock;
        } else {
            pxBlockToInsert->pxNextFreeBlock = (*pxEnd_aslr);
        }
    } else {
        pxBlockToInsert->pxNextFreeBlock = pxIterator->pxNextFreeBlock;
    }

    /* If the block being inserted plugged a gab, so was merged with the block
     * before and the block after, then it's pxNextFreeBlock pointer will have
     * already been set, and should not be set here as that would make it point
     * to itself. */
    if (pxIterator != pxBlockToInsert) {
        pxIterator->pxNextFreeBlock = pxBlockToInsert;
    }
}
/*-----------------------------------------------------------*/

void* pvPortMalloc_aslr(size_t xWantedSize, int type) {
    BlockLink_t_aslr *pxBlock, *pxPreviousBlock, *pxNewBlockLink1,
        *pxNewBlockLink2, *pxFuncBlockLink;

    void *pvReturn = NULL, *pvRamReturn = NULL;

    BlockLink_t_aslr *xStart_aslr = NULL, **pxEnd_aslr = NULL;
    size_t* xBlockAllocatedBit_aslr = NULL;
    size_t* xFreeBytesRemaining_aslr = NULL;
    if (type == ASLR_REGION_SECURE_TYPE) {
        xStart_aslr = &xStart_s_service1_aslr;
        pxEnd_aslr = &pxEnd_s_service1_aslr;
        xBlockAllocatedBit_aslr = &xBlockAllocatedBit_s_service1_aslr;
        xFreeBytesRemaining_aslr = &xFreeBytesRemaining_s_service1_aslr;
    } else if (type == ASLR_REGION_PRIV_TYPE) {
        xStart_aslr = &xStart_priv_aslr;
        pxEnd_aslr = &pxEnd_priv_aslr;
        xBlockAllocatedBit_aslr = &xBlockAllocatedBit_priv_aslr;
        xFreeBytesRemaining_aslr = &xFreeBytesRemaining_priv_aslr;
    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
        xStart_aslr = &xStart_syscall_aslr;
        pxEnd_aslr = &pxEnd_syscall_aslr;
        xBlockAllocatedBit_aslr = &xBlockAllocatedBit_syscall_aslr;
        xFreeBytesRemaining_aslr = &xFreeBytesRemaining_syscall_aslr;
    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
        xStart_aslr = &xStart_npriv_aslr;
        pxEnd_aslr = &pxEnd_npriv_aslr;
        xBlockAllocatedBit_aslr = &xBlockAllocatedBit_npriv_aslr;
        xFreeBytesRemaining_aslr = &xFreeBytesRemaining_npriv_aslr;
    }

    /* If this is the first call to malloc then the heap will require
     * initialisation to setup the list of free blocks. */
    if ((*pxEnd_aslr) == NULL) {
        prvHeapInit_aslr(type);
    }

    /* Check the requested block size is not so large that the top bit is set.
     * The top bit of the block size member of the BlockLink_t structure is used
     * to determine who owns the block - the application or the kernel, so it
     * must be free. */
    if ((xWantedSize & (*xBlockAllocatedBit_aslr)) == 0) {
        /* The wanted size is increased so it can contain a BlockLink_t
         * structure in addition to the requested amount of bytes. */
        if (xWantedSize > 0) {
            // Modified by xinhui
            // plus six xHeapStuctSize to align the random number.
            xWantedSize += 2 * xHeapStructSize_aslr;

            /* Ensure that blocks are always aligned to the required number of
             * bytes. */
            if ((xWantedSize & secureportBYTE_ALIGNMENT_MASK_aslr) != 0x00) {
                /* Byte alignment required. */
                xWantedSize +=
                    (secureportBYTE_ALIGNMENT_aslr -
                     (xWantedSize & secureportBYTE_ALIGNMENT_MASK_aslr));
                secureportASSERT_aslr(
                    (xWantedSize & secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
            }
        }

        if ((xWantedSize > 0) && (xWantedSize <= (*xFreeBytesRemaining_aslr))) {
            /* Traverse the list from the start (lowest address) block until
             * one of adequate size is found. */

            /**************** Modified by sxh ********************/
            // Reservoir Sampling to take a block
            /*****************************************************/
            pxPreviousBlock = xStart_aslr;
            pxBlock = xStart_aslr->pxNextFreeBlock;
            while ((pxBlock->xBlockSize < xWantedSize) &&
                   (pxBlock->pxNextFreeBlock != NULL)) {
                pxPreviousBlock = pxBlock;
                pxBlock = pxBlock->pxNextFreeBlock;
            }

            /* If the end marker was reached then a block of adequate size was
             * not found. */
            if (pxBlock != (*pxEnd_aslr)) {
                /* Return the memory space pointed to - jumping over the
                 * BlockLink_t structure at its start. */

                pvReturn =
                    (void*)(((uint8_t*)pxPreviousBlock->pxNextFreeBlock) +
                            xHeapStructSize_aslr);
                pvRamReturn = pvReturn;
                /* This block is being returned for use so must be taken out
                 * of the list of free blocks. */
                pxPreviousBlock->pxNextFreeBlock = pxBlock->pxNextFreeBlock;
                pxFuncBlockLink = pxBlock;
                /* If the block is larger than required it can be split into
                 * two. */
                /**************** Modified by sxh ********************/
                if ((pxBlock->xBlockSize - xWantedSize) >
                    RAM_HEAP_PADDING_SIZE_aslr) {
                    /* This block is to be split into two.  Create a new
                     * block following the number of bytes requested. The void
                     * cast is used to prevent byte alignment warnings from the
                     * compiler. */

                    // TODO ram
                    size_t sum_size = pxBlock->xBlockSize;
                    // uint32_t ram_num  = (rand_generate() % (pxBlock->xBlockSize - xWantedSize - RAM_HEAP_PADDING_SIZE_aslr)) & 0xfffffffc;   // The lowest bit must be 0
                    int32_t ram_num = 0;
                    pvRamReturn =
                        (void*)((uint8_t*)pvReturn +
                                secureheapMINIMUM_BLOCK_SIZE_aslr + ram_num);
                    pxNewBlockLink1 = (void*)(uint8_t*)pxBlock;
                    pxFuncBlockLink =
                        (void*)(((size_t)pvRamReturn & 0xfffffff8) -
                                xHeapStructSize_aslr);
                    pxNewBlockLink2 =
                        (void*)((uint8_t*)pxFuncBlockLink + xWantedSize);
                    // pxNewBlockLink = ( void * ) ( ( ( uint8_t * ) pxBlock ) +
                    // xWantedSize );
                    secureportASSERT_aslr(
                        (((size_t)pxNewBlockLink1) &
                         secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
                    secureportASSERT_aslr(
                        (((size_t)pxNewBlockLink2) &
                         secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
                    secureportASSERT_aslr(
                        (((size_t)pxFuncBlockLink) &
                         secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
                    /* Calculate the sizes of two blocks split from the single
                     * block. */
                    pxNewBlockLink1->xBlockSize =
                        (uint8_t*)pxFuncBlockLink - (uint8_t*)pxNewBlockLink1;
                    pxFuncBlockLink->xBlockSize = xWantedSize;
                    pxNewBlockLink2->xBlockSize = sum_size -
                                                  pxNewBlockLink1->xBlockSize -
                                                  pxFuncBlockLink->xBlockSize;
                    // pxBlock->xBlockSize = xWantedSize;

                    /* Insert the new block into the list of free blocks. */
                    prvInsertBlockIntoFreeList_aslr(pxNewBlockLink1, type);
                    prvInsertBlockIntoFreeList_aslr(pxNewBlockLink2, type);
                }
                if (type == ASLR_REGION_SECURE_TYPE) {
                    xFreeBytesRemaining_s_service1_aslr -=
                        pxFuncBlockLink->xBlockSize;
                    if ((*xFreeBytesRemaining_aslr) <
                        xMinimumEverFreeBytesRemaining_s_service1_aslr) {
                        xMinimumEverFreeBytesRemaining_s_service1_aslr =
                            (*xFreeBytesRemaining_aslr);
                    }
                } else if (type == ASLR_REGION_PRIV_TYPE) {
                    xFreeBytesRemaining_priv_aslr -=
                        pxFuncBlockLink->xBlockSize;
                    if ((*xFreeBytesRemaining_aslr) <
                        xMinimumEverFreeBytesRemaining_priv_aslr) {
                        xMinimumEverFreeBytesRemaining_priv_aslr =
                            (*xFreeBytesRemaining_aslr);
                    }
                } else if (type == ASLR_REGION_SYSCALL_TYPE) {
                    xFreeBytesRemaining_syscall_aslr -=
                        pxFuncBlockLink->xBlockSize;
                    if ((*xFreeBytesRemaining_aslr) <
                        xMinimumEverFreeBytesRemaining_syscall_aslr) {
                        xMinimumEverFreeBytesRemaining_syscall_aslr =
                            (*xFreeBytesRemaining_aslr);
                    }
                } else if (type == ASLR_REGION_UNPRIV_TYPE) {
                    xFreeBytesRemaining_npriv_aslr -=
                        pxFuncBlockLink->xBlockSize;
                    if ((*xFreeBytesRemaining_aslr) <
                        xMinimumEverFreeBytesRemaining_npriv_aslr) {
                        xMinimumEverFreeBytesRemaining_npriv_aslr =
                            (*xFreeBytesRemaining_aslr);
                    }
                }

                /* The block is being returned - it is allocated and owned by
                 * the application and has no "next" block. */
                pxFuncBlockLink->xBlockSize |= (*xBlockAllocatedBit_aslr);
                pxFuncBlockLink->pxNextFreeBlock = NULL;
            }
        }
    }

    secureportASSERT_aslr(
        (((size_t)pvReturn) & (size_t)secureportBYTE_ALIGNMENT_MASK_aslr) == 0);
    return pvRamReturn;
}
/*-----------------------------------------------------------*/

void vPortFree_aslr(void* pv, int type) {
    uint8_t* puc = (uint8_t*)pv;
    BlockLink_t_aslr* pxLink;

    if (pv != NULL) {
        /* The memory being freed will have an BlockLink_t structure immediately
         * before it. */
        puc = (uint8_t*)((uint32_t)puc & 0xfffffff8);
        puc -= xHeapStructSize_aslr;

        /* This casting is to keep the compiler from issuing warnings. */
        pxLink = (void*)puc;
        size_t xBlockAllocatedBit_aslr = 0;
        if (type == ASLR_REGION_SECURE_TYPE) {
            xBlockAllocatedBit_aslr = xBlockAllocatedBit_s_service1_aslr;
        } else if (type == ASLR_REGION_PRIV_TYPE) {
            xBlockAllocatedBit_aslr = xBlockAllocatedBit_priv_aslr;
        } else if (type == ASLR_REGION_SYSCALL_TYPE) {
            xBlockAllocatedBit_aslr = xBlockAllocatedBit_syscall_aslr;
        } else if (type == ASLR_REGION_UNPRIV_TYPE) {
            xBlockAllocatedBit_aslr = xBlockAllocatedBit_npriv_aslr;
        }
        /* Check the block is actually allocated. */
        secureportASSERT_aslr((pxLink->xBlockSize & xBlockAllocatedBit_aslr) !=
                              0);
        secureportASSERT_aslr(pxLink->pxNextFreeBlock == NULL);

        if ((pxLink->xBlockSize & xBlockAllocatedBit_aslr) != 0) {
            if (pxLink->pxNextFreeBlock == NULL) {
                /* The block is being returned to the heap - it is no longer
                 * allocated. */
                pxLink->xBlockSize &= ~xBlockAllocatedBit_aslr;

                secureportDISABLE_NON_SECURE_INTERRUPTS_aslr();
                {
                    /* Add this block to the list of free blocks. */
                    if (type == ASLR_REGION_SECURE_TYPE) {
                        xFreeBytesRemaining_s_service1_aslr +=
                            pxLink->xBlockSize;
                    } else if (type == ASLR_REGION_PRIV_TYPE) {
                        xFreeBytesRemaining_priv_aslr += pxLink->xBlockSize;
                    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
                        xFreeBytesRemaining_npriv_aslr += pxLink->xBlockSize;
                    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
                        xFreeBytesRemaining_syscall_aslr += pxLink->xBlockSize;
                    }
                    // traceFREE( pv, pxLink->xBlockSize );
                    prvInsertBlockIntoFreeList_aslr(((BlockLink_t_aslr*)pxLink),
                                                    type);
                }
                secureportENABLE_NON_SECURE_INTERRUPTS_aslr();
            }
        }
    }
}
/*-----------------------------------------------------------*/

size_t xPortGetFreeHeapSize_aslr(int type) {
    if (type == ASLR_REGION_SECURE_TYPE) {
        return xFreeBytesRemaining_s_service1_aslr;
    } else if (type == ASLR_REGION_PRIV_TYPE) {
        return xFreeBytesRemaining_priv_aslr;
    } else if (type == ASLR_REGION_SYSCALL_TYPE) {
        return xFreeBytesRemaining_syscall_aslr;
    } else if (type == ASLR_REGION_UNPRIV_TYPE) {
        return xFreeBytesRemaining_npriv_aslr;
    }
}
