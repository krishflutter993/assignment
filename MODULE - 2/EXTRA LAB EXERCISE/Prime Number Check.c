#include <stdio.h>

int main()
{
    int upperLimit, currentNumber, divisor, isPrimeFlag;

    printf("Enter a number to print all prime numbers up to it: ");
    scanf("%d", &upperLimit);

    printf("Prime numbers between 1 and %d are:\n", upperLimit);

    for (currentNumber = 2; currentNumber <= upperLimit; currentNumber++)
    {
        isPrimeFlag = 1;
        for (divisor = 2; divisor <= currentNumber / 2; divisor++)
        {
            if (currentNumber % divisor == 0)
            {
                isPrimeFlag = 0;
                break;
            }
        }
        if (isPrimeFlag)
            printf("%d ", currentNumber);
    }

    printf("\n");
    return 0;
}
