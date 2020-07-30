/*
 * Newtonform.c
 *
 *  Created on: Jul. 23, 2020
 *      Author: shreya
 */
// CPP program for implementing interpolation in Newton form
#include <bits/stdc++.h>
using namespace std;

// Function for calculating divided difference table
void div_diffTable(float x[], float f[][10], int n)
{
    for (int i = 1; i < n; i++)
    {
        for (int j = 0; j < n - i; j++)
        {
            f[j][i] = (f[j][i - 1] - f[j + 1]  [i - 1]) / (x[j] - x[i + j]);
        }
    }
}

// Function to find the product term
float prod_term(int i, float value, float x[])
{
    float mul = 1;
    for (int j = 0; j < i; j++)
    {
        mul = mul * (value - x[j]);
    }
    return mul;
}

// Function for applying Newton's divided difference formula
float applyFormula(float value, float x[],
                   float f[][10], int n)
{
    float sum = f[0][0];

    for (int i = 1; i < n; i++) {
      sum = sum + (prod_term(i, value, x) * f[0][i]);
    }
    return sum;
}

// Function for displaying divided difference table
void printDiffTable(float f[][10],int n)
{
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n - i; j++)
        {
            cout << setprecision(4) << f[i][j] << "\t ";
        }
        cout << "\n";
    }
}

void printEqn(float x[],float f[][10], int n)
{
    for(int i =0 ; i< n; i++)
    {
        printf(" %.02f",f[0][i]);
        for(int j =0; j<i; j++)
        {
            if(x[j]<0)
                printf("(X + %.02f)",-1*x[j]);
            else
                printf("(X - %.02f)",x[j]);
        }
        printf(" +");
    }
}

// Main Function
int main()
{
    // number of inputs given
    int n = 6;
    float value, sum, f[10][10];
    float x[] = { 0, 1, -1, 2, -2, -4};

    // y[][] is used for divided difference
    // table where y[][0] is used for input
    f[0][0] = -5;
    f[1][0] = -3;
    f[2][0] = -15;
    f[3][0] = 39;
    f[4][0] = -9;
    f[5][0] = -3;

    // calculating divided difference table
    div_diffTable(x, f, n);

    // displaying divided difference table
     printf("x        b0      b1      b2      b3      b4\n\n");
    printDiffTable(f,n);

    printf("\nThe interpolated polynomial function equation can be found by solving the below equation: \n f(x) = ");
    printEqn(x,f,n);

    return 0;
}
