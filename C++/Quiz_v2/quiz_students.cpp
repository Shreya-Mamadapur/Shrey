/*
 * quiz_students.cpp
 *
 *  Created on: Aug. 8, 2020
 *      Author: shreya
 */

#include <iostream>
#include <stdexcept>
#include <algorithm>
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
		cout<<"-----Results for "<<name<<"-----"<<endl;
		if(res1 == expectedRes1)
			marks++;

		if(res2 == expectedRes2)
			marks++;

		if(res3 == expectedRes3)
			marks++;
		cout<<"Total marks :"<<marks<<"/3";

		if(marks!= 3)
			throw std::logic_error("You got one or more wrong answer(s)");
	}

};
#define STUDENTSNUMBER 3
int main()
{
	class student stud[STUDENTSNUMBER];
	for(int i = 0; i< STUDENTSNUMBER;i++)
	{
		cout<<"\n============Quiz=============\n";
		stud[i].GetStudentName();
		stud[i].ShowQuestionsAndGetResults();

	}

	for(int i = 0; i< STUDENTSNUMBER;i++)
		{
			cout<<"\n============Results for "<<stud[i].name<<"=============\n";
			try
			{
				stud[i].CheckAnswers();
			}
			catch (std::logic_error str)
			{
				cout <<"\n" <<str.what() << endl;
			}
		}


}
