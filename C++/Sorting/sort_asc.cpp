/*
 * sort_asc.cpp
 *
 *  Created on: Jul. 27, 2020
 *      Author: shreya
 */
#include <iostream>
#include <vector>
#include <bits/stdc++.h>
using std::vector;
using std::cout;
using std::endl;
using std::cin;

void bSort(vector<int> Arr)
{
	int temp;
	for(vector<int>::size_type i = 0; i != Arr.size(); ++i)
	{
		for(vector<int>::size_type j = 0; j < Arr.size()-1; ++j)
		{
			if(Arr[j]>Arr[j+1]) //compare an array element to the next element
			{
				temp=Arr[j]; //swap to push the larger number into higher index
				Arr[j]=Arr[j+1];
				Arr[j+1]=temp;
			}
		}
	}
	//displaying the sorted array
	for (vector<int>::size_type i = 0; i != Arr.size(); ++i)
	{
		cout <<Arr[i] << "\t";
	}
	cout << endl;
}

int main()
{
	vector<int> Arr;
	int temp;
	cout << "Please enter some integers, followed by <CTRL><D>:" << endl;
	while (cin >> temp) // loop exits till user enters <CTRL><D>
	{
		Arr.push_back(temp); //in-built function to push into vector
	}
	cout << "\n";

	/* print integers from vector */
	cout << "Your integers are:	";
	for (vector<int>::size_type j = 0; j != Arr.size(); ++j) //looping to display the integers taken by users
	{
		cout << Arr[j] << "\t";
	}
	cout << endl;

	cout<<"\nSorting using my function" <<endl;
	bSort(Arr);

	cout<<"\nSorting using built-in function" <<endl;
	sort(Arr.begin(),Arr.end());
	for (vector<int>::size_type i = 0; i != Arr.size(); ++i)
		{
			cout <<Arr[i] << "\t";
		}
	cout <<endl;
	return 0;
}
