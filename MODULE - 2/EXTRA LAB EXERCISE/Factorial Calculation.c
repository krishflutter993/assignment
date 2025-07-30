#include <stdio.h>
#include <time.h>

// Recursive factorial function
unsigned long long factorial_recursive(int n)
{
    if (n == 0 || n == 1)
        return 1;
    else
        return n * factorial_recursive(n - 1);
}

// Iterative factorial function
unsigned long long factorial_iterative(int n)
{
    unsigned long long result = 1;
    for (int i = 2; i <= n; i++)
    {
        result *= i;
    }
    return result;
}

int main()
{
    int num;
    clock_t start, end;
    double timeRecursive, timeIterative;

    printf("Enter a number to calculate factorial: ");
    scanf("%d", &num);

    // Measure recursive factorial time
    start = clock();
    unsigned long long factorialRec = factorial_recursive(num);
    end = clock();
    timeRecursive = ((double)(end - start)) / CLOCKS_PER_SEC;

    // Measure iterative factorial time
    start = clock();
    unsigned long long factorialItr = factorial_iterative(num);
    end = clock();
    timeIterative = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("Factorial (recursive): %llu\n", factorialRec);
    printf("Time taken (recursive): %f seconds\n", timeRecursive);

    printf("Factorial (iterative): %llu\n", factorialItr);
    printf("Time taken (iterative): %f seconds\n", timeIterative);

    if (timeRecursive > timeIterative)
        printf("Iterative method is faster.\n");
    else if (timeRecursive < timeIterative)
        printf("Recursive method is faster.\n");
    else
        printf("Both methods have similar performance.\n");

    return 0;
}
