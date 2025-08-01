#include <stdio.h>

int main()
{
    int num1, num2, num3;
    int largest, smallest;

    printf("Enter three numbers: ");
    scanf("%d %d %d", &num1, &num2, &num3);

    // Assume num1 is largest and smallest initially
    largest = smallest = num1;

    // Check for largest
    if (num2 > largest)
    {
        largest = num2;
    }
    if (num3 > largest)
    {
        largest = num3;
    }

    // Check for smallest
    if (num2 < smallest)
    {
        smallest = num2;
    }
    if (num3 < smallest)
    {
        smallest = num3;
    }

    printf("Largest number: %d\n", largest);
    printf("Smallest number: %d\n", smallest);

    return 0;
}
