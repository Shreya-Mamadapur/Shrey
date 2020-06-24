/*
 * palindrome.c
 *
 *  Created on: Jun. 24, 2020
 *      Author: shreya
 */

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int num,rem;
	printf("Please enter an integer: ");
	scanf("%d",&num);
	int temp = num;
	int sum = 0;
	while(num>0)
	{
		rem = num%10;
		sum = (sum*10)+rem;
		num = num/10;
	}

	if(temp==sum)
	{
		printf("The number entered is a palindrome");
	}
	else
	{
		printf("The number entered is not a palindrome");
	}
	return EXIT_SUCCESS;
}

