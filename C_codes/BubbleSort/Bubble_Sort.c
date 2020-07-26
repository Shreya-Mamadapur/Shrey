/*
 * Bubble_Sort.c
 *
 *  Created on: Jul. 26, 2020
 *      Author: shreya
 */

#include <stdio.h>
#include <stdlib.h>
/*
* function to print out the array contents
*/
void dispArray(const int *s, size_t N)
{
	for (size_t i=0; i != N; ++i)
	{
		printf("%d ",s[i]);
	}
	printf("\n");
	return;
}
/*
* function to sort the array
*/
void bsort(int *s, size_t N)
{
	int temp;
	for(int i=0; i<N-1; i++)
	{
		for(int j=0; j<N-1; j++)
		{
			if(s[j]>s[j+1]) //compare an array element to the next element
			{
				temp=s[j]; //swap to push the larger number into higher index
				s[j]=s[j+1];
				s[j+1]=temp;
			}
		}
	}
}


int main(void)
{
	int s[]={22,32,9,0,1,2,45,668,932,26,5,3,333,4,7}; // our data array
	size_t N=sizeof(s)/sizeof(int); // number of elements in s
	printf("the original data is:\n");
	dispArray(s, N);
	bsort(s, N);
	printf("the sorted data is:\n");
	dispArray(s, N);
	printf("bsort program complete.\n\n");
	return EXIT_SUCCESS;
}
