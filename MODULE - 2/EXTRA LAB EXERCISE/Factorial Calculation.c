#include <stdio.h>

// Function to calculate factorial
int factorial(int n)
{
    int result = 1;
    for (int i = 2; i <= n; i++)
    {
        result *= i;
    }
    return result;
}

int main()
{
    int num;

    // Input from user
    printf("Enter a non-negative integer: ");
    scanf("%d", &num);

    // Validate input
    if (num < 0)
    {
        printf("Factorial is not defined for negative numbers.\n");
    }
    else
    {
        printf("Factorial of %d = %d\n", num, factorial(num));
    }

    return 0;
}
