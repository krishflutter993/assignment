#include <stdio.h>

int main()
{
    int veliyu[10], i, j, temp;
    int max, min;

    printf("Enter 10 integers:\n");
    for (i = 0; i < 10; i++)
    {
        printf("Element %d: ", i + 1);
        scanf("%d", &veliyu[i]);
    }

    // Find max and min
    max = veliyu[0];
    min = veliyu[0];

    for (i = 1; i < 10; i++)
    {
        if (veliyu[i] > max)
            max = veliyu[i];
        if (veliyu[i] < min)
            min = veliyu[i];
    }

    printf("\nMaximum value = %d\n", max);
    printf("Minimum value = %d\n", min);

    // Bubble Sort - Ascending Order
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9 - i; j++)
        {
            if (veliyu[j] > veliyu[j + 1])
            {
                // Swap
                temp = veliyu[j];
                veliyu[j] = veliyu[j + 1];
                veliyu[j + 1] = temp;
            }
        }
    }

    // Print sorted array
    printf("\nArray in ascending order:\n");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", veliyu[i]);
    }
    printf("\n");

    return 0;
}
