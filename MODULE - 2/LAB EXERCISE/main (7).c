/*Write a C program that calculates the factorial of a number using a function. 
Include function declaration, definition, and call. */

#include <stdio.h>
#include <conio.h>

// Function declaration
int factorial(int n);

int main()   
{
    int number, result;

    printf("Enter a positive integer: ");
    scanf("%d", &number);

    if(number < 0) 
	{
        printf("Factorial is not defined for negative numbers.\n");
    } 
	else 
	{
        // Function call
        result = factorial(number);
        printf("Factorial of %d is %d\n", number, result);
    }

    return 0;  
}

// Function definition
int factorial(int n)
{
    int fact = 1;\
    int i;
    for(i = 1; i <= n; i++) {
        fact = fact * i;
    }
    return fact;
}
