#include <stdio.h>

int main() {
    int limit, i, j, isPrime;

    printf("Enter a number to print all prime numbers up to it: ");
    scanf("%d", &limit);

    printf("Prime numbers between 1 and %d are:\n", limit);

    for (i = 2; i <= limit; i++) {
        isPrime = 1;
        for (j = 2; j <= i / 2; j++) {
            if (i % j == 0) {
                isPrime = 0;
                break;
            }
        }
        if (isPrime)
            printf("%d ", i);
    }

    printf("\n");
    return 0;
}
