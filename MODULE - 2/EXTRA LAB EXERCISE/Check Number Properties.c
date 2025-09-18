#include <stdio.h>

int main()
{
    int num;

    printf("Enter an integer: ");
    scanf("%d", &num);

    if (num % 2 == 0)
    {
        printf("\n %d is even.", num);
    }
    else
    {
        printf("\n %d is odd.", num);
    }

    if (num > 0)
    {
        printf("\n %d is positive.", num);
    }
    else if (num < 0)
    {
        printf("\n %d is negative.", num);
    }
    else
    {
        printf("\n The number is zero.");
    }
    if (num % 3 == 0 && num % 5 == 0)
    {
        printf("\n %d  num is both 3 and 5.", num);
    }
    else
    {
        printf("\n %d num is NOT  both 3 and 5.", num);
    }

    return 0;
}
