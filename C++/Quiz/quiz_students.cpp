/*
 * quiz_students.cpp
 *
 *  Created on: Aug. 8, 2020
 *      Author: shreya
 */

#include <iostream>
using std::cout;
using std::endl;
using std::cin;

class student
{
public:
	int res1, expectedRes1 = 26;
	float res2, expectedRes2 = 3.142;
	bool res3, expectedRes3 = true;

	char name[30];
	int marks = 0;

	char ques1[50]={"Which day in December is Shreya's birthday?"};
	char ques2[60]={"What is the value of pi up to 3 decimal points?"};
	char ques3[50]={"Are you interested in Embedded Systems?"};


	void GetStudentName(void)
	{
		cout<<"Enter Your Name : ";
		cin>>name;
	}

	void ShowQuestionsAndGetResults(void)
	{
		cout<<ques1<<" ";
		cin>>res1;

		cout<<ques2<<" ";
		cin>>res2;

		cout<<ques3<<" ";
		cin>>res3;
	}

	void CheckAnswers(void)
	{
		cout<<"Resuls for "<<name<<endl;
		if(res1 == expectedRes1)
		{
			marks++;
			cout<<"Answer to Question 1 is right"<<endl;
		}
		else
		{
			cout<<"Answer to Question 1 is wrong"<<endl;
		}

		if(res2 == expectedRes2)
		{
			marks++;
			cout<<"Answer to Question 2 is right"<<endl;
		}
		else
		{
			cout<<"Answer to Question 2 is wrong"<<endl;
		}

		if(res3 == expectedRes3)
		{
			marks++;
			cout<<"Answer to Question 3 is right"<<endl;
		}
		else
		{
			cout<<"Answer to Question 3 is wrong"<<endl;
		}
		cout<<"Total marks : "<< marks << "/3";
	}

};
#define STUDENTSNUMBER 5
int main()
{
	class student stud[STUDENTSNUMBER];
	for(int i = 0; i< STUDENTSNUMBER;i++)
	{
		cout<<"\n============Hello=============\n";
		stud[i].GetStudentName();
		stud[i].ShowQuestionsAndGetResults();
		stud[i].CheckAnswers();
	}
}
