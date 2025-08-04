#include <iostream>
using namespace std;

// Function declarations
double add(double a, double b)
{
    return a + b;
}

double subtract(double a, double b)
{
    return a - b;
}

double multiply(double a, double b)
{
    return a * b;
}

double divide(double a, double b)
{
    if (b == 0)
    {
        cout << "Error: Division by zero is not allowed." << endl;
        return 0;
    }
    return a / b;
}

int main()
{
    double num1, num2;
    char operation;

    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter an operator (+, -, *, /): ";
    cin >> operation;

    cout << "Enter second number: ";
    cin >> num2;

    double result;

    // Choose operation based on user input
    if (operation == '+')
    {
        result = add(num1, num2);
    }
    else if (operation == '-')
    {
        result = subtract(num1, num2);
    }
    else if (operation == '*')
    {
        result = multiply(num1, num2);
    }
    else if (operation == '/')
    {
        result = divide(num1, num2);
    }
    else
    {
        cout << "Invalid operator!" << endl;
        return 1;
    }

    cout << "Result: " << result << endl;

    return 0;
}
