#include <stdio.h>

int main()
{
    int inputNumber, digitSum = 0, reversedNumber = 0, currentDigit;

    printf("Enter an integer: ");
    scanf("%d", &inputNumber);

    int originalNumber = inputNumber; // Save original number

    while (inputNumber != 0)
    {
        currentDigit = inputNumber % 10;
        digitSum += currentDigit;
        reversedNumber = reversedNumber * 10 + currentDigit;
        inputNumber /= 10;
    }

    printf("Sum of digits of %d = %d\n", originalNumber, digitSum);
    printf("Reversed number = %d\n", reversedNumber);

    return 0;
}
