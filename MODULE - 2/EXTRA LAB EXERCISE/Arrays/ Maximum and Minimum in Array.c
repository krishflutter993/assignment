#include <stdio.h>

int main()
{
    int arr[10];
    int i, j, temp;
    int max, min;

    // Input 10 integers from user
    printf("Enter 10 integers:\n");
    for (i = 0; i < 10; i++)
    {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    // Initialize max and min
    max = arr[0];
    min = arr[0];

    // Find max and min
    for (i = 1; i < 10; i++)
    {
        if (arr[i] > max)
            max = arr[i];
        if (arr[i] < min)
            min = arr[i];
    }

    // Print max and min
    printf("\nMaximum value: %d\n", max);
    printf("Minimum value: %d\n", min);

    // Sort array in ascending order using simple Bubble Sort
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9 - i; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                // Swap arr[j] and arr[j+1]
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    // Print sorted array
    printf("\nSorted array in ascending order:\n");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}
