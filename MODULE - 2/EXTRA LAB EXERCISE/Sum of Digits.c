#include <stdio.h>

int main() {
    int num, sum = 0, reverse = 0, digit;

    printf("Enter an integer: ");
    scanf("%d", &num);

    int original = num;  // Save original number

    while (num != 0) {
        digit = num % 10;
        sum += digit;
        reverse = reverse * 10 + digit;
        num /= 10;
    }

    printf("Sum of digits of %d = %d\n", original, sum);
    printf("Reversed number = %d\n", reverse);

    return 0;
}
