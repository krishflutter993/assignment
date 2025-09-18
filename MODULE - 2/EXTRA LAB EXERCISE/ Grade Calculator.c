#include <stdio.h>

int main()
{
    int Marks;

    printf("enter Mark for 0 to 100: ");
    scanf("%d"), &Marks;

    if (Marks > 90)
    {
        printf("A grade");
    }
    else if (Marks > 75 && Marks <= 90)
    {
        printf("B grade");
    }
    else if (Marks > 50 && Marks <= 75)
    {
        printf("C grade");
    }
    else if (Marks <= 50)
    {
        printf("D grade");
    }
    else
    {
        printf("fail");
    }

    return 0;
}