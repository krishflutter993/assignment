#include <iostream>
using namespace std;

// Function declarations
int add(int a, int b)
{
    return a + b;
}

int subtract(int a, int b)
{
    return a - b;
}

int multiply(int a, int b)
{
    return a * b;
}

int divide(int a, int b)
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
    int num1, num2;
    char operation;

    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter an operator (+, -, *, /): ";
    cin >> operation;

    cout << "Enter second number: ";
    cin >> num2;

    int result;

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
