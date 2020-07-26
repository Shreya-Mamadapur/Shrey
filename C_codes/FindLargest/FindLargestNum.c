/*
 * FindLargestNum.c
 *
 *  Created on: Jul. 26, 2020
 *      Author: shreya
 */

#include<stdio.h>
#include<stdlib.h>

int find_largest_int(int *s,size_t N)
{
	int largest = s[0]; //initialize a variable to the first array element
//loop to compare "largest" to all elements of the array.
	for(int i=0; i<N; i++)
	{
		if(largest < s[i])
		{
			largest = s[i]; //The largest value till that point is stored in largest
		}
	}
	return largest; //return the largest value in the array
}

int main(void)
{
	int s[]={22,32,9,0,1,2,45,668,932,26,5,3,333,4,7}; // our data array
	size_t N=sizeof(s)/sizeof(int); // number of elements in s
	printf("The largest integer in the array is: %d\n", find_largest_int(s, N));
	printf("find_largest program complete.\n\n");
	return EXIT_SUCCESS;
}
