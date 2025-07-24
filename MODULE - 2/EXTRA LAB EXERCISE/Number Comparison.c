#include <stdio.h>

int main() {
    int a, b, c;
    int largestFlag = 0, smallestFlag = 0;

    // Input three numbers
    printf("Enter three integers: ");
    scanf("%d %d %d", &a, &b, &c);

    // ===== Using if-else to determine flags =====

    // Determine the largest
    if (a >= b && a >= c)
        largestFlag = 1;  // a is largest
    else if (b >= a && b >= c)
        largestFlag = 2;  // b is largest
    else
        largestFlag = 3;  // c is largest

    // Determine the smallest
    if (a <= b && a <= c)
        smallestFlag = 1;  // a is smallest
    else if (b <= a && b <= c)
        smallestFlag = 2;  // b is smallest
    else
        smallestFlag = 3;  // c is smallest

    // ===== Using switch-case to display results =====

    printf("\n");

    switch (largestFlag) {
        case 1:
            printf("Largest number is: %d (a)\n", a);
            break;
        case 2:
            printf("Largest number is: %d (b)\n", b);
            break;
        case 3:
            printf("Largest number is: %d (c)\n", c);
            break;
    }

    switch (smallestFlag) {
        case 1:
            printf("Smallest number is: %d (a)\n", a);
            break;
        case 2:
            printf("Smallest number is: %d (b)\n", b);
            break;
        case 3:
            printf("Smallest number is: %d (c)\n", c);
            break;
    }

    return 0;
}
