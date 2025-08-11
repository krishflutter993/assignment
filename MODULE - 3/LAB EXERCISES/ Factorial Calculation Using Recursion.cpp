#include <iostream>
using namespace std;

int fac(int n)
{
    if (n == 0 || n == 1)
    {
        return 1;
    }
    else
    {
        return n * fac(n - 1);
    }
}

int main()
{
    int number;

    cout << "Enter a number: ";
    cin >> number;

    if (number < 0)
    {
        cout << "Factorial is not possible for negative numbers." << endl;
    }
    else
    {
        int answer = fac(number);
        cout << "Factorial of " << number << " is: " << answer << endl;
    }

    return 0;
}
