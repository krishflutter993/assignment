#include <stdio.h>

int main()
{
    int num1, num2, num3;
    int largestFlag = 0, smallestFlag = 0;

    // Input three numbers
    printf("Enter three integers: ");
    scanf("%d %d %d", &num1, &num2, &num3);

    // ===== Using if-else to determine flags =====

    // Determine the largest
    if (num1 >= num2 && num1 >= num3)
        largestFlag = 1; // num1 is largest
    else if (num2 >= num1 && num2 >= num3)
        largestFlag = 2; // num2 is largest
    else
        largestFlag = 3; // num3 is largest

    // Determine the smallest
    if (num1 <= num2 && num1 <= num3)
        smallestFlag = 1; // num1 is smallest
    else if (num2 <= num1 && num2 <= num3)
        smallestFlag = 2; // num2 is smallest
    else
        smallestFlag = 3; // num3 is smallest

    // ===== Using switch-case to display results =====

    printf("\n");

    switch (largestFlag)
    {
    case 1:
        printf("Largest number is: %d (num1)\n", num1);
        break;
    case 2:
        printf("Largest number is: %d (num2)\n", num2);
        break;
    case 3:
        printf("Largest number is: %d (num3)\n", num3);
        break;
    }

    switch (smallestFlag)
    {
    case 1:
        printf("Smallest number is: %d (num1)\n", num1);
        break;
    case 2:
        printf("Smallest number is: %d (num2)\n", num2);
        break;
    case 3:
        printf("Smallest number is: %d (num3)\n", num3);
        break;
    }

    return 0;
}
