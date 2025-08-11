#include <iostream>
using namespace std;

int main()
{
    int a = 10;
    double b = a;

    cout << "Implicit Conversion:" << endl;
    cout << "The value of a is: " << a << endl;
    cout << "The value of b is: " << b << endl;

    double c = 3.14;
    int d = (int)c;

    cout << "Explicit Conversion:" << endl;
    cout << "The value of c is: " << c << endl;
    cout << "The value of d is: " << d << endl;

    return 0;
}