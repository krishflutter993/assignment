#include <stdio.h>

int main() {
    int matrix1[3][3], matrix2[3][3];
    int add[3][3], multiply[3][3];
    int i, j, k;

    // Input first 3x3 matrix
    printf("Enter elements of 1st 3x3 matrix:\n");
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            scanf("%d", &matrix1[i][j]);
        }
    }

    // Input second 3x3 matrix
    printf("Enter elements of 2nd 3x3 matrix:\n");
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            scanf("%d", &matrix2[i][j]);
        }
    }

    // Matrix addition
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            add[i][j] = matrix1[i][j] + matrix2[i][j];
        }
    }

    // Matrix multiplication
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            multiply[i][j] = 0;
            for(k = 0; k < 3; k++) {
                multiply[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }

    // Display addition result
    printf("Resultant matrix after addition:\n");
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            printf("%d ", add[i][j]);
        }
        printf("\n");
    }

    // Display multiplication result
    printf("Resultant matrix after multiplication:\n");
    for(i = 0; i < 3; i++) {
        for(j = 0; j < 3; j++) {
            printf("%d ", multiply[i][j]);
        }
        printf("\n");
    }

    return 0;
}
