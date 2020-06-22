/*
 * findAve.c
 *
 *  Created on: Jun. 22, 2020
 *      Author: shreya
 */


#include <stdio.h>
#include <stdlib.h> //needed as we are using size_t datatype and return EXIT_SUCCESS
//function
float findAverage(float *data, size_t N)
{
    float Sum = 0; //initoalizing sum variable
	for( int i=0; i<N; i++)
	{
    	Sum += data[i]; //adding all the array elements in sum variable
	}

float Average = Sum / N;

return Average;
}


//Main code
int main(void)
{
    float data[] = {1.2, 3.465, 2.65, 3.2, 6.8346};
	size_t N=sizeof(data)/sizeof(float); // number of elements in data

    printf("The Average of all the floating-point numbers in the array is: %f\n", findAverage(data, N));
    printf("findAverage program complete.\n\n");

    return EXIT_SUCCESS;
}
