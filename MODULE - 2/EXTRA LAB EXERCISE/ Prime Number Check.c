#include <stdio.h>

int main()
{
    int num;
    int count = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    for (int i = 1; i <= num; i++)
    {
        if (num % i == 0)
        {
            count = count + 1;
        }
    }

    if (count == 2)
    {
        printf("%d is prime number", num);
    }
    else
    {
        printf("%d is not a prime number", num);
    }

    return 0;
}
