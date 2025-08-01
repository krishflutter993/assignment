#include <stdio.h>

int main()
{
    int matrix1[2][2], matrix2[2][2], sum[2][2];
    int i, j;

    // Input first matrix
    printf("Enter elements of first 2x2 matrix:\n");
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            printf("Element [%d][%d]: ", i, j);
            scanf("%d", &matrix1[i][j]);
        }
    }

    // Input second matrix
    printf("\nEnter elements of second 2x2 matrix:\n");
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            printf("Element [%d][%d]: ", i, j);
            scanf("%d", &matrix2[i][j]);
        }
    }

    // Calculate sum of matrices
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            sum[i][j] = matrix1[i][j] + matrix2[i][j];
        }
    }

    // Display the sum
    printf("\nSum of the two 2x2 matrices:\n");
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            printf("%d\t", sum[i][j]);
        }
        printf("\n");
    }

    return 0;
}
