/*
 * P1.c
 *
 *  Created on: Jun. 23, 2020
 *      Author: shreya
 */

#include <stdio.h>
#include <stdlib.h>

//function to check if input is valid TTL
int TTL_In(float Vin)
{
	if(Vin>2.0 && Vin<3.3)
	{
		printf("Input voltage is TTL high");
	}
	else if(Vin<0.8)
	{
		printf("Input voltage is TTL low");
	}
	else if(Vin>3.3)
	{
		printf("Increasing voltage beyond the absolute maximum may result in catastropic failure!!");
		return EXIT_FAILURE;
	}
	else
		{
			printf("Inputed voltage is floating-point TTL!!");
		}
	return EXIT_SUCCESS;
}

//function to check if output is valid TTL
void TTL_Out(float Vout)
{
	if(Vout>2.7 && Vout<3.3)
	{
		printf("Output voltage is TTL high");
	}
	else if(Vout<0.4)
	{
		printf("Output voltage is TTL low");
	}
	else
	{
		printf("Failure to produce valid output!!");
	}
}

//Main code
int main()
{
	float Vin, Vout;

	printf("Enter the input volatge: ");
	scanf("%f",&Vin);
	TTL_In(Vin);

	printf("\nEnter the measured output volatge: ");
	scanf("%f",&Vout);
	TTL_Out(Vout);

	return EXIT_SUCCESS;
}
