#include <stdio.h>

int main()
{
    int veliyu1[3][3], veliyu2[3][3];
    int veliyuAdd[3][3], veliyuMul[3][3];
    int veliyuI, veliyuJ, veliyuK;

    // Input first 3x3 matrix
    printf("Enter elements of 1st 3x3 matrix:\n");
    for (veliyuI = 0; veliyuI < 3; veliyuI++)
    {
        for (veliyuJ = 0; veliyuJ < 3; veliyuJ++)
        {
            scanf("%d", &veliyu1[veliyuI][veliyuJ]);
        }
    }

    // Input second 3x3 matrix
    printf("Enter elements of 2nd 3x3 matrix:\n");
    for (veliyuI = 0; veliyuI < 3; veliyuI++)
    {
        for (veliyuJ = 0; veliyuJ < 3; veliyuJ++)
        {
            scanf("%d", &veliyu2[veliyuI][veliyuJ]);
        }
    }

    // Matrix addition
    for (veliyuI = 0; veliyuI < 3; veliyuI++)
    {
        for (veliyuJ = 0; veliyuJ < 3; veliyuJ++)
        {
            veliyuAdd[veliyuI][veliyuJ] = veliyu1[veliyuI][veliyuJ] + veliyu2[veliyuI][veliyuJ];
        }
    }

    // Matrix multiplication
    for (veliyuI = 0; veliyuI < 3; veliyuI++)
    {
        for (veliyuJ = 0; veliyuJ < 3; veliyuJ++)
        {
            veliyuMul[veliyuI][veliyuJ] = 0;
            for (veliyuK = 0; veliyuK < 3; veliyuK++)
            {
                veliyuMul[veliyuI][veliyuJ] += veliyu1[veliyuI][veliyuK] * veliyu2[veliyuK][veliyuJ];
            }
        }
    }

    // Display addition result
    printf("Resultant matrix after addition:\n");
    for (veliyuI = 0; veliyuI < 3; veliyuI++)
    {
        for (veliyuJ = 0; veliyuJ < 3; veliyuJ++)
        {
            printf("%d ", veliyuAdd[veliyuI][veliyuJ]);
        }
        printf("\n");
    }

    // Display multiplication result
    printf("Resultant matrix after multiplication:\n");
    for (veliyuI = 0; veliyuI < 3; veliyuI++)
    {
        for (veliyuJ = 0; veliyuJ < 3; veliyuJ++)
        {
            printf("%d ", veliyuMul[veliyuI][veliyuJ]);
        }
        printf("\n");
    }

    return 0;
}
