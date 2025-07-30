#include <stdio.h>

int main()
{
    int veliyu;
    printf("Enter the student's marks (0 - 100): ");
    scanf("%d", &veliyu);

    if (veliyu < 0 || veliyu > 100)
    {
        printf("Invalid marks.\n");
        return 0;
    }

    switch (veliyu / 10)
    {
    case 10: // for marks = 100
    case 9:
        printf("Grade: A\n");
        break;
    case 8:
    case 7:
        if (veliyu > 75)
            printf("Grade: B\n");
        else
            printf("Grade: C\n");
        break;
    case 6:
    case 5:
        printf("Grade: C\n");
        break;
    default:
        printf("Grade: D\n");
    }

    return 0;
}
