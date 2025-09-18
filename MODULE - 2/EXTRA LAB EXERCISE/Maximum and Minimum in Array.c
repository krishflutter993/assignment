#include <stdio.h>

int main()
{
    int a[10], i, j, temp;

    for (i = 0; i < 10; i++)
        scanf("%d", &a[i]);

    for (i = 0; i < 10; i++)
        for (j = i + 1; j < 10; j++)
            if (a[i] > a[j])
            {
                temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }

    int min = a[0];
    int max = a[9];

    printf("Max: %d\nMin: ", max, min);
  
    return 0;
}
