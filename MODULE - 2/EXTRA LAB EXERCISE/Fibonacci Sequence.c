#include <stdio.h>
#include <time.h>

// Recursive function
int fibonacci_recursive(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;
    return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2);
}

// Iterative function
int fibonacci_iterative(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;

    int a = 0, b = 1, c, i;
    for(i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main() {
    int N;
    clock_t start, end;
    double time_recursive, time_iterative;

    printf("Enter the term number (N): ");
    scanf("%d", &N);

    // Measure recursive time
    start = clock();
    int fib_rec = fibonacci_recursive(N);
    end = clock();
    time_recursive = ((double)(end - start)) / CLOCKS_PER_SEC;

    // Measure iterative time
    start = clock();
    int fib_itr = fibonacci_iterative(N);
    end = clock();
    time_iterative = ((double)(end - start)) / CLOCKS_PER_SEC;

    printf("Nth Fibonacci number (recursive): %d\n", fib_rec);
    printf("Time taken (recursive): %f seconds\n", time_recursive);

    printf("Nth Fibonacci number (iterative): %d\n", fib_itr);
    printf("Time taken (iterative): %f seconds\n", time_iterative);

    if(time_recursive > time_iterative)
        printf("Iterative method is faster.\n");
    else if(time_recursive < time_iterative)
        printf("Recursive method is faster.\n");
    else
        printf("Both methods have similar performance.\n");

    return 0;
}
