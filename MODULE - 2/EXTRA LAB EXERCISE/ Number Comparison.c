#include <stdio.h>

int main()
{
    int n1, n2, n3;
    int lar, sma;

    printf("Enter three number : ");
    scanf("%d %d %d", &n1, &n2, &n3);

    lar = n1;
    sma = n1;

    if (n2 > lar)
    {
        lar = n2;
    }
    if (n3 > lar)
    {
        lar = n3;
    }

    if (n2 < sma)
    {
        sma = n2;
    }
    if (n3 < sma)
    {
        sma = n3;
    }

    printf("\n Largest number: %d", lar);
    printf("\n Smallest number: %d", sma);

    return 0;
}