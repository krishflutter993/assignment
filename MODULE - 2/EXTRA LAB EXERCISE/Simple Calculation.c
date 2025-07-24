#include <stdio.h>

int main() {
    double num1, num2;
    char operator;

    printf("Enter first number: ");
    scanf("%lf", &num1);

    printf("Enter an operator (+, -, *, /, %%): ");
    scanf(" %c", &operator);  // Note the space before %c to catch stray newline characters

    printf("Enter second number: ");
    scanf("%lf", &num2);

    switch (operator) {
        case '+':
            printf("Result: %.2lf\n", num1 + num2);
            break;
        case '-':
            printf("Result: %.2lf\n", num1 - num2);
            break;
        case '*':
            printf("Result: %.2lf\n", num1 * num2);
            break;
        case '/':
            if (num2 == 0) {
                printf("Error: Division by zero is not allowed.\n");
            } else {
                printf("Result: %.2lf\n", num1 / num2);
            }
            break;
        case '%':
            if ((int)num2 == 0) {
                printf("Error: Modulus by zero is not allowed.\n");
            } else {
                printf("Result: %d\n", (int)num1 % (int)num2);
            }
            break;
        default:
            printf("Error: Invalid operator.\n");
            break;
    }

    return 0;
}
