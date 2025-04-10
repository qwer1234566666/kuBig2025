#include "queue.h"
#include <string.h>
#include <assert.h>
#include <stdlib.h>

void initQueue(Queue *pq, int size, int eleSize){
    pq->pArr = malloc(eleSize*size);
    assert(pq->pArr != NULL);
    pq->eleSize = eleSize;
    pq->size = size;
    
    pq->front = 0;
    pq->rear = 0;
}

void cleanupQueue(Queue *pq){
    free(pq->pArr);
}

void push(Queue *pq, const void *pData){
    assert(pq->rear != pq->size);

    // pq->pArr[pq->rear] = data;
    memcpy((unsigned char *)pq->pArr + pq->eleSize* pq->rear, pData, pq->eleSize);
    ++pq->rear;
}

void pop(Queue *pq, void *pData){
    assert(pq->front != pq->rear);

    int i = pq->front;
    ++pq->front;
    // return pq->pArr[index];
    memcpy(pData, (unsigned char *)pq->pArr + pq->eleSize * i, pq->eleSize);

}
