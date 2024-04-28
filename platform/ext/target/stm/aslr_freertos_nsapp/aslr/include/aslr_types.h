/*
 * types.h
 *
 * Created: 2022/1/14 13:41:23
 *  Author: dn
 */

#ifndef _ASLR_TYPES_H_
#define _ASLR_TYPES_H_

#define MAXSIZE_ASLR 0x40
#define SUCCESS_ASLR 0
#define FAILURE_ASLR -1

typedef struct rewrite_address
{
	uint32_t address;
	uint16_t value0;
	uint16_t value1;
	uint16_t value2;
	uint16_t value3;
};

typedef struct rewrite_info
{
	struct rewrite_address ra;
	struct rewrite_info *next;
} rewrite_info_t;

typedef struct func_node
{
	uint32_t load_address;
	uint32_t size;
	uint32_t func_address;
	uint32_t call_frame_size;
	int ref;

} func_node_t;

#endif /* TYPES_H_ */
