#ifndef _ASLR_STACK_H
#define _ASLR_STACK_H

#include <stdio.h>
#include <stdlib.h>

#include "aslr_types.h"

typedef struct
{
    func_node_t stack[MAXSIZE_ASLR + 1];
    int top_of_stack;
} stack_info;

int stack_is_empty(stack_info *s);
int stack_push(stack_info *s, func_node_t);
int stack_pop(stack_info *s, func_node_t *f);
int stack_is_full(stack_info *s);
int get_stack_top(stack_info *s);

#endif
