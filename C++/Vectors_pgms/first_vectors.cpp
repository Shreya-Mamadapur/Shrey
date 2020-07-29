/*
 * find_large_num.cpp
 *
 *  Created on: Jul. 26, 2020
 *      Author: shreya
 */

#include <iostream>
#include <vector>
#include <bits/stdc++.h>
using std::vector;
using std::cout;
using std::endl;
using std::cin;

int FindLarge(vector<int> Arr)
{
	int tempLargest = Arr[0];
	for (vector<int>::size_type j = 0; j != Arr.size(); ++j)
		{
			if(Arr[j] > tempLargest) //comparing each vector element
			{
				tempLargest = Arr[j]; //storing the largest in tempLargest
			}
		}
	return tempLargest;
}

int FindSmall(vector<int> Arr)
{
	int tempSmallest = Arr[0];
	for (vector<int>::size_type j = 0; j != Arr.size(); ++j)
		{
			if(Arr[j] < tempSmallest) //comparing each vector element
			{
				tempSmallest = Arr[j]; //storing the largest in tempLargest
			}
		}
	return tempSmallest;
}

float FindAve(vector<int> Arr, float sum)
{
	for (vector<int>::size_type j = 0; j != Arr.size(); ++j)
	{
    	sum += Arr[j]; //adding all the array elements in sum variable
	}
	float Average = (float)sum/Arr.size();
	return Average;
}


int FindMedian(vector<int> Arr)
{
	sort(Arr.begin(),Arr.end());
	float Median;
	//size_t N = (sizeof(SortArr)/sizeof(int)) - 1;
	if ( Arr.size()%2 == 0) //if even
	{
		Median = (Arr[(Arr.size()/2)-1] + Arr[Arr.size()/2]) / 2.0;
	}
	else //if odd
	{
		Median = Arr[Arr.size()/2];
	}
	return Median;
}

int main()
{
	vector<int> Arr;
	int temp; float sum=0.0;
	cout << "Please enter some integers, followed by <CTRL><D>:" << endl;
	while (cin >> temp) // loop exits till user enters <CTRL><D>
	{
		Arr.push_back(temp); //in-built function to push into vector
	}

	/* print integers from vector */
	cout << "Integers entered are:   ";
	for (vector<int>::size_type j = 0; j != Arr.size(); ++j) //looping to display the integers taken by users
	{
		cout << Arr[j] << "\t";
	}
	cout << endl;

	cout<<"\nUsing built-in functions"<<endl;
	cout<<"Max = "<<*max_element(Arr.begin(),Arr.end())<<endl;
	cout<<"Min = "<<*min_element(Arr.begin(),Arr.end())<<endl;
	cout<<"Mean = "<<accumulate(Arr.begin(),Arr.end(),sum)/Arr.size()<<endl;
	sort(Arr.begin(),Arr.end());
	cout <<"Median: " << ((Arr.size() % 2 == 0) ? ((Arr[Arr.size()/2]+ Arr[(Arr.size()/2)-1])/2) : (Arr[Arr.size()/2]));

	cout<<"\n\nUsing my user-defined functions"<<endl;
	cout << "Max = "<<FindLarge(Arr) <<endl;
	cout << "Min = "<<FindSmall(Arr) <<endl;
	cout << "Mean = " <<FindAve(Arr,sum) <<endl;
	cout << "Median = " <<FindMedian(Arr) <<endl;

	return 0;
}
