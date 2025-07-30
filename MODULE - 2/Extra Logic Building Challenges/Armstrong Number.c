#include <stdio.h>
#include <math.h>

// Function to count digits
int countDigits(int number)
{
    int digitCount = 0;
    while (number != 0)
    {
        number /= 10;
        digitCount++;
    }
    return digitCount;
}

// Function to check Armstrong number
int isArmstrong(int number)
{
    int sum = 0, tempNumber = number, digit, power = countDigits(number);

    while (tempNumber != 0)
    {
        digit = tempNumber % 10;
        sum += pow(digit, power);
        tempNumber /= 10;
    }

    return (sum == number);
}

int main()
{
    printf("Armstrong numbers between 1 and 1000:\n");

    for (int i = 1; i <= 1000; i++)
    {
        if (isArmstrong(i))
        {
            printf("%d ", i);
        }
    }

    printf("\n");
    return 0;
}
