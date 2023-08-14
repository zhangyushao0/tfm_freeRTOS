#include "aslr_queue.h"



 QueueInfo funcs_queue={
	 .front=1,
	 .rear=0
	 };

static int sum_aslr=0;

int queue_is_full_aslr(QueueInfo *queue)
{
    if((queue->rear + 2) % MAX_SIZE_QUEUE_ASLR == queue->front)
    {

        return TRUE_ASLR;
    }
    else
        return FALSE_ASLR;
}

int queue_sum_aslr(){
	return sum_aslr;
}
/*判断队列是否为空*/
int queue_is_empty_aslr(QueueInfo *queue)
{
    if((queue->rear + 1) % MAX_SIZE_QUEUE_ASLR == queue->front)
    {

        return TRUE_ASLR;
    }
    else
        return FALSE_ASLR;
}

/*出队*/
int queue_delete_aslr(QueueInfo *queue)
{
    if(queue_is_empty_aslr(queue))
        return FAILURE_ASLR;


    sum_aslr--;
    queue->front = (queue->front + 1) % MAX_SIZE_QUEUE_ASLR;
    return SUCCESS_ASLR;
}

/*入队*/
int queue_insert_aslr(QueueInfo *queue,ElementType value)
{
    if(queue_is_full_aslr(queue))
        return FAILURE_ASLR;
    sum_aslr++;
    queue->rear = (queue->rear + 1) % MAX_SIZE_QUEUE_ASLR;
    queue->queue_array[queue->rear] = value;

    return SUCCESS_ASLR;
}
