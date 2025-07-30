#include <stdio.h>

int main()
{
    int elementCount, index, sum = 0;
    float average;

    printf("Enter the number of elements: ");
    scanf("%d", &elementCount);

    int numbers[elementCount];

    printf("Enter %d numbers:\n", elementCount);
    for (index = 0; index < elementCount; index++)
    {
        scanf("%d", &numbers[index]);
    }

    for (index = 0; index < elementCount; index++)
    {
        sum += numbers[index];
    }

    average = (float)sum / elementCount;

    printf("Sum of the array elements = %d\n", sum);
    printf("Average of the array elements = %.2f\n", average);

    return 0;
}
