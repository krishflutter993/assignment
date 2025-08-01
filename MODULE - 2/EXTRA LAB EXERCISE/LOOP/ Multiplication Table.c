#include <stdio.h>

int main()
{
    int num, i;

    // Get input from the user
    printf("Enter an integer: ");
    scanf("%d", &num);

    // Print multiplication table using a for loop
    printf("Multiplication table of %d:\n", num);
    for (i = 1; i <= 10; i++)
    {
        printf("%d x %d = %d\n", num, i, num * i);
    }

    return 0;
}
