#ifndef _QUEUE_H
#define _QUEUE_H

#include "aslr_types.h"

typedef func_node_t ElementType;

#define MAX_SIZE_QUEUE_ASLR 0x80

typedef struct Queue {
    int front;
    int rear;
    ElementType queue_array[MAX_SIZE_QUEUE_ASLR];
} QueueInfo;

#define FALSE_ASLR 0
#define TRUE_ASLR 1

int queue_delete_aslr(QueueInfo* queue);
int queue_insert_aslr(QueueInfo* queue, ElementType value);
int queue_is_empty_aslr(QueueInfo* queue);
int queue_is_full_aslr(QueueInfo* queue);
int queue_sum_aslr();

#endif
