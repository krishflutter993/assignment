#include <stdio.h>

// Recursive function to calculate binomial coefficient C(n, k)
int binomialCoefficient(int n, int k)
{
    if (k == 0 || k == n)
        return 1;
    return binomialCoefficient(n - 1, k - 1) + binomialCoefficient(n - 1, k);
}

// Function to generate Pascal’s Triangle using recursion
void generatePascalsTriangle(int rows)
{
    for (int row = 0; row < rows; row++)
    {
        // Print leading spaces
        for (int spaceCount = 0; spaceCount < rows - row - 1; spaceCount++)
            printf("  ");

        for (int col = 0; col <= row; col++)
        {
            printf("%4d", binomialCoefficient(row, col));
        }
        printf("\n");
    }
}

int main()
{
    int totalRows;

    printf("Enter the number of rows: ");
    scanf("%d", &totalRows);

    generatePascalsTriangle(totalRows);

    return 0;
}
