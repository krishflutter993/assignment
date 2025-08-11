#include <iostream>
using namespace std;

class SimpleCalculator
{
public:
    // Perform calculation based on operator
    int calculate(int a, char op, int b)
    {
        switch (op)
        {
        case '+':
            return a + b;
            break;

        case '-':
            return a - b;
            break;

        case '*':
            return a * b;
            break;

        case '/':
            if (b == 0)
            {
                cout << "Error: Division by zero is not allowed." << endl;
                return 0;
            }
            return a / b;
            break;

        default:
            cout << "Invalid operator!" << endl;
            return 0;
        }
    }
};

int main()
{
    SimpleCalculator c;
    int num1, num2, ans;
    char op;

    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter an operator (+, -, *, /): ";
    cin >> op;

    cout << "Enter second number: ";
    cin >> num2;

    ans = c.calculate(num1, op, num2);

    cout << "Result: " << ans << endl;

    return 0;
}
