#include <stdio.h>

// Function to calculate factorial (iteratively)
long long factorial(int n)
{
    long long fact = 1;
    for (int i = 2; i <= n; i++)
    {
        fact *= i;
    }
    return fact;
}

// Function to calculate combination (nCr)
long long combination(int n, int r)
{
    return factorial(n) / (factorial(r) * factorial(n - r));
}

int main()
{
    int n;

    printf("Enter number of rows for Pascal's Triangle: ");
    scanf("%d", &n);

    for (int i = 0; i < n; i++)
    {
        // Print leading spaces for triangle alignment
        for (int space = 0; space < n - i - 1; space++)
        {
            printf("  ");
        }

        for (int j = 0; j <= i; j++)
        {
            printf("%4lld", combination(i, j));
        }

        printf("\n");
    }

    return 0;
}
