#include <stdio.h>

int main()
{
    double firstNumber, secondNumber;
    char mathOperator;

    printf("Enter first number: ");
    scanf("%lf", &firstNumber);

    printf("Enter an operator (+, -, *, /, %%): ");
    scanf(" %c", &mathOperator); // Note the space before %c to catch stray newline characters

    printf("Enter second number: ");
    scanf("%lf", &secondNumber);

    switch (mathOperator)
    {
    case '+':
        printf("Result: %.2lf\n", firstNumber + secondNumber);
        break;
    case '-':
        printf("Result: %.2lf\n", firstNumber - secondNumber);
        break;
    case '*':
        printf("Result: %.2lf\n", firstNumber * secondNumber);
        break;
    case '/':
        if (secondNumber == 0)
        {
            printf("Error: Division by zero is not allowed.\n");
        }
        else
        {
            printf("Result: %.2lf\n", firstNumber / secondNumber);
        }
        break;
    case '%':
        if ((int)secondNumber == 0)
        {
            printf("Error: Modulus by zero is not allowed.\n");
        }
        else
        {
            printf("Result: %d\n", (int)firstNumber % (int)secondNumber);
        }
        break;
    default:
        printf("Error: Invalid operator.\n");
        break;
    }

    return 0;
}
