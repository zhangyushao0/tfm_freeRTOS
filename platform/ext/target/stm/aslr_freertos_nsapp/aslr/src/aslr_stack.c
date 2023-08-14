#include "aslr_stack.h"



int get_stack_top(stack_info *s){
	return s->top_of_stack;
}
int stack_is_full(stack_info *s){
    return (s->top_of_stack==MAXSIZE_ASLR);
}

int stack_push(stack_info *s,func_node_t item){
    if(stack_is_full(s)){

        return FAILURE_ASLR;
    }
   s->top_of_stack++;
   s->stack[s->top_of_stack]=item;
   return SUCCESS_ASLR;
}
int stack_is_empty(stack_info *s){
    return s->top_of_stack==0;
}
int stack_pop(stack_info *s,func_node_t *f){
    if(stack_is_empty(s)){
        return FAILURE_ASLR;
    }
	*f=s->stack[s->top_of_stack];
    s->top_of_stack--;
	return SUCCESS_ASLR;
}




