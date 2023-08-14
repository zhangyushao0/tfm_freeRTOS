#ifndef _QUEUE_H
#define _QUEUE_H

#include <stdio.h>
#include <stdlib.h>

#include "aslr_types.h"

typedef func_node_t ElementType;

#define MAX_SIZE_QUEUE_ASLR 0x80

typedef struct Queue
{
	int front;
	int rear;
	ElementType queue_array[MAX_SIZE_QUEUE_ASLR];
} QueueInfo;

#define FALSE_ASLR 0
#define TRUE_ASLR 1

int queue_delete(QueueInfo *queue);
int queue_insert(QueueInfo *queue, ElementType value);
int queue_is_empty(QueueInfo *queue);
int queue_is_full(QueueInfo *queue);
int queue_sum();

#endif
