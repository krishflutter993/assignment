#include <stdio.h>
#include <time.h>

// Recursive function
int fibonacci_recursive(int n)
{
    if (n == 0)
        return 0;
    if (n == 1)
        return 1;
    return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2);
}

// Iterative function
int fibonacci_iterative(int n)
{
    if (n == 0)
        return 0;
    if (n == 1)
        return 1;

    int a = 0, b = 1, c, i;
    for (i = 2; i <= n; i++)
    {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main()
{
    int term;
    clock_t start, end;
    double timeRecursive, timeIterative;

    printf("Enter the term number (N): ");
    scanf("%d", &term);

    // Measure recursive time
    start = clock();
    int fibRec = fibonacci_recursive(term);
    end = clock();
    timeRecursive = ((double)(end - start)) / CLOCKS_PER_SEC;

    // Measure iterative time
    start = clock();
    int fibItr = fibonacci_iterative(term);
    end = clock();
    timeIterative = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("Nth Fibonacci number (recursive): %d\n", fibRec);
    printf("Time taken (recursive): %f seconds\n", timeRecursive);

    printf("Nth Fibonacci number (iterative): %d\n", fibItr);
    printf("Time taken (iterative): %f seconds\n", timeIterative);

    if (timeRecursive > timeIterative)
        printf("Iterative method is faster.\n");
    else if (timeRecursive < timeIterative)
        printf("Recursive method is faster.\n");
    else
        printf("Both methods have similar performance.\n");

    return 0;
}
