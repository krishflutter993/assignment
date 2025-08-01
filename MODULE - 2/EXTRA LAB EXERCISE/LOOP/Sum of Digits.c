#include <stdio.h>

int main() {
    int num, originalNum, digit;
    int sum = 0;
    int reverse = 0;

    // Get input from the user
    printf("Enter an integer: ");
    scanf("%d", &num);

    originalNum = num;

    // Make number positive if it's negative (optional handling)
    if (num < 0) {
        num = -num;
    }

    // Loop to calculate sum of digits and reverse the number
    while (num > 0) {
        digit = num % 10;         // Get last digit
        sum += digit;             // Add digit to sum
        reverse = reverse * 10 + digit; // Append digit to reverse
        num /= 10;                // Remove last digit
    }

    printf("Sum of digits of %d is %d\n", originalNum, sum);
    if (originalNum < 0)
        printf("Reversed number is -%d\n", reverse);
    else
        printf("Reversed number is %d\n", reverse);

    return 0;
}
