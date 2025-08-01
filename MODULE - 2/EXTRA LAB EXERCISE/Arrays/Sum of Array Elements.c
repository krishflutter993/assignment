#include <stdio.h>

int main()
{
    int arr[100]; // You can adjust the size as needed
    int n, i, sum = 0;

    // Get number of elements from the user
    printf("Enter the number of elements (N): ");
    scanf("%d", &n);

    // Validate input
    if (n <= 0 || n > 100)
    {
        printf("Invalid number of elements. Please enter a number between 1 and 100.\n");
        return 1;
    }

    // Input elements
    printf("Enter %d integers:\n", n);
    for (i = 0; i < n; i++)
    {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
        sum += arr[i];
    }

    // Display sum
    printf("\nSum of array elements = %d\n", sum);

    return 0;
}
