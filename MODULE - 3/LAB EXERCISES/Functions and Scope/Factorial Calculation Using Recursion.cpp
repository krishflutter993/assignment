#include <iostream>
using namespace std;

// Recursive function to calculate factorial
unsigned long long factorial(int n)
{
    if (n < 0)
    {
        cout << "Error: Factorial is not defined for negative numbers." << endl;
        return 0;
    }
    if (n == 0 || n == 1)
        return 1;
    else
        return n * factorial(n - 1);
}

int main()
{
    int num;

    cout << "Enter a positive integer: ";
    cin >> num;

    unsigned long long result = factorial(num);

    if (num >= 0)
        cout << "Factorial of " << num << " is: " << result << endl;

    return 0;
}
