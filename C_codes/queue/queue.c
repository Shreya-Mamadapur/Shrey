/*
 * stack.c
 *
 *  Created on: Oct. 7, 2019
 *      Author: Shreya
 *	Adapted from: Takis
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "queue.h"


/* *************** FUNCTIONS ***************** */
/*
 * stack_empty() implementation
 */
bool queue_empty(queue_t *s)
{
	if (s->head == s->tail)
	{
		return true;
	}
	else
	{
		return false;
	}
}

/*
 * push() implementation
 */
void enqueue(queue_t *s, int x)
{
	s->data[(s->tail)++] = x; /* equivalent to: s -> data [(s->top)] = x; (s->top)++; */
	/* also equivalent to: (s->top)++; s -> data [(s->top)-1] = x; */
	return;
}

/*
 * pop() implementation
 */
int dequeue(queue_t *s)
{
	if (queue_empty(s))
	{
		printf("underflow error!");
		exit(EXIT_FAILURE);
	}
	else
	{
		return (*s).data[(s->head)++]; /* could also write: (s->data)[--(s->top)]; */
	}
}
