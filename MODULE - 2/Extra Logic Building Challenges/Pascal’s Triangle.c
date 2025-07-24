#include <stdio.h>

// Recursive function to calculate binomial coefficient C(n, k)
int binomialCoeff(int n, int k) {
    if (k == 0 || k == n)
        return 1;
    return binomialCoeff(n - 1, k - 1) + binomialCoeff(n - 1, k);
}

// Function to generate Pascal’s Triangle using recursion
void generatePascalRecursive(int rows) {
    for (int i = 0; i < rows; i++) {
        // Print leading spaces
        for (int space = 0; space < rows - i - 1; space++)
            printf("  ");

        for (int j = 0; j <= i; j++) {
            printf("%4d", binomialCoeff(i, j));
        }
        printf("\n");
    }
}

int main() {
    int N;

    printf("Enter the number of rows: ");
    scanf("%d", &N);

    generatePascalRecursive(N);

    return 0;
}
