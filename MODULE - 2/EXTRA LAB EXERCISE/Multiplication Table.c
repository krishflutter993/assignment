#include <stdio.h>

int main()
{
    int number, range_start, range_end, multiplier;

    // Input number and range
    printf("Enter the number for multiplication table: ");
    scanf("%d", &number);

    printf("Enter the starting range: ");
    scanf("%d", &range_start);

    printf("Enter the ending range: ");
    scanf("%d", &range_end);

    // Input validation
    if (range_start > range_end)
    {
        printf("Invalid range! Starting value should be less than or equal to ending value.\n");
        return 1;
    }

    // Print multiplication table in the given range
    printf("Multiplication table of %d from %d to %d:\n", number, range_start, range_end);
    for (multiplier = range_start; multiplier <= range_end; multiplier++)
    {
        printf("%d x %d = %d\n", number, multiplier, number * multiplier);
    }

    return 0;
}
