#include <iostream>
using namespace std;

// Define the Calculator class
class Calculator
{
public:
    // Function to add two numbers
    double add(double a, double b)
    {
        return a + b;
    }

    // Function to subtract two numbers
    double subtract(double a, double b)
    {
        return a - b;
    }

    // Function to multiply two numbers
    double multiply(double a, double b)
    {
        return a * b;
    }

    // Function to divide two numbers
    double divide(double a, double b)
    {
        if (b == 0)
        {
            cout << "Error: Division by zero is not allowed." << endl;
            return 0;
        }
        return a / b;
    }
};

int main()
{
    Calculator calc; // Create an object of Calculator

    double num1, num2;
    char op;

    // Input
    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter an operator (+, -, *, /): ";
    cin >> op;

    cout << "Enter second number: ";
    cin >> num2;

    double result;

    // Choose operation based on user input
    switch (op)
    {
    case '+':
        result = calc.add(num1, num2);
        break;
    case '-':
        result = calc.subtract(num1, num2);
        break;
    case '*':
        result = calc.multiply(num1, num2);
        break;
    case '/':
        result = calc.divide(num1, num2);
        break;
    default:
        cout << "Invalid operator!" << endl;
        return 1;
    }

    // Output result
    cout << "Result: " << result << endl;

    return 0;
}
