#include "stdint.h"
#include "port.h"
#include <stdlib.h>
#ifndef LOADER_H
#define LOADER_H

#if defined ( __ICCARM__ )
#  define CMSE_NS_CALL  __cmse_nonsecure_call
#  define CMSE_NS_ENTRY __cmse_nonsecure_entry
#else
#  define CMSE_NS_CALL  __attribute((cmse_nonsecure_call))
#  define CMSE_NS_ENTRY __attribute((cmse_nonsecure_entry))
#endif

#if defined ( __ICCARM__ )
typedef void (CMSE_NS_CALL *funcptr)(void);
#else
typedef void CMSE_NS_CALL (*funcptr)(void);
#endif

typedef funcptr funcptr_NS;



#define REL_END 0x00000001
#define SUCCESS 0
#define FAIL 1

#define SECURE_ADDRESS 0x0c010000
#define NON_SECURE_CODE_ADDRESS_MARK 0x08000000
#define NON_SECURE_AREA1 0x0c040000
#define NON_SECURE_AREA2 0x0c060000
#define NON_SECURE_AREA_SIZE 0x020000
#define NEW_IMAGE_INFO 0x0c03fff8
#define NON_SECURE_DATA_ADDRESS 0x20018000

uint32_t getVersion();
void load_init(uint32_t newVersion, uint32_t vectorAddress, uint32_t vectorSize, uint32_t imageSize, uint32_t relAddress, uint32_t relSize, uint32_t dataPhysAddress);
void generating_rel_array();
int loading_image();
int image_relocating(uint32_t vector_relocate_base, uint32_t image_relocate_base);
int relocating_words(uint32_t start, uint32_t end, uint32_t page, uint32_t page_relocate_base, uint32_t relocate_base);
void NonSecure_Init(void);

#endif
