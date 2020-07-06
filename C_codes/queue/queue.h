
/*
 * stack.h
 *
 *  Created on: Jun. 25, 2020
 *  	Author: Shreya
 *      Adapted from: Takis
 */

#ifndef INCLUDES_STACK_H_
#define INCLUDES_STACK_H_

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define	N	1024

/*
 * struct and typedef declarations
 */
struct queue_struct
{
	int data[N];
	size_t head;
	size_t tail;
};
typedef struct queue_struct queue_t;


bool queue_empty(queue_t *s);

void enqueue(queue_t *s, int x);

int dequeue(queue_t *s);

#endif /* INCLUDES_STACK_H_ */
