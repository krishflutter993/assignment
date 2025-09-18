#include <stdio.h>

int main()
{
    int N, i, sum = 0;

    // Ask user for number of elements
    printf("Enter the number of elements (N): ");
    scanf("%d", &N);

    // Check for invalid input
    if (N <= 0)
    {
        printf("Invalid number of elements.\n");
        return 1;
    }

    int numbers[N]; // Declare array of size N

    // Take input from user
    printf("Enter %d numbers:\n", N);
    for (i = 0; i < N; i++)
    {
        printf("Element %d: ", i + 1);
        scanf("%d", &numbers[i]);
        sum += numbers[i]; // Add to sum as we go
    }

    // Display the result
    printf("The sum of the array elements is: %d\n", sum);

    return 0;
}
