#include <stdio.h>
#include <time.h>

// Recursive factorial function
unsigned long long factorial_recursive(int n) {
    if (n == 0 || n == 1)
        return 1;
    else
        return n * factorial_recursive(n - 1);
}

// Iterative factorial function
unsigned long long factorial_iterative(int n) {
    unsigned long long result = 1;
    for (int i = 2; i <= n; i++) {
        result *= i;
    }
    return result;
}

int main() {
    int number;
    clock_t start, end;
    double time_recursive, time_iterative;

    printf("Enter a number to calculate factorial: ");
    scanf("%d", &number);

    // Measure recursive factorial time
    start = clock();
    unsigned long long fact_rec = factorial_recursive(number);
    end = clock();
    time_recursive = ((double)(end - start)) / CLOCKS_PER_SEC;

    // Measure iterative factorial time
    start = clock();
    unsigned long long fact_itr = factorial_iterative(number);
    end = clock();
    time_iterative = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("Factorial (recursive): %llu\n", fact_rec);
    printf("Time taken (recursive): %f seconds\n", time_recursive);

    printf("Factorial (iterative): %llu\n", fact_itr);
    printf("Time taken (iterative): %f seconds\n", time_iterative);

    if (time_recursive > time_iterative)
        printf("Iterative method is faster.\n");
    else if (time_recursive < time_iterative)
        printf("Recursive method is faster.\n");
    else
        printf("Both methods have similar performance.\n");

    return 0;
}
