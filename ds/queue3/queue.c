// static int queue[100];
// static int front;
// static int rear;

#include "queue.h"
#include <stdio.h>
#include <stdlib.h>

void initQueue(Queue *pq){
    pq->front = 0;
    pq->rear = 0;

}

void push(Queue *pq, int data){
    if (pq->rear == QUEUESIZE){
    	fprintf(stderr, "queue is full.\n");
    	exit(1);
    }

    pq->array[pq->rear] = data;
    ++pq->rear;
}

int pop(Queue *pq){
    if(pq->rear == pq->front){
    	fprintf(stderr, "quere is empty.\n");
    	exit(2);
    }

    int i = pq->front;
    ++pq->front;
    return pq->array[i];

}
