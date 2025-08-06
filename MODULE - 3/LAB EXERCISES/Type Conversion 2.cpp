#include <iostream>
using namespace std;

int main()
{
    // Implicit type conversion example
    int intNum = 42;
    double doubleNum = 3.14;

    // intNum is implicitly converted to double for the addition
    double implicitResult = intNum + doubleNum;
    cout << "Implicit conversion (int + double): " << implicitResult << endl;

    // Explicit type conversion examples

    double doubleValue = 9.99;
    // Explicit cast from double to int (fractional part lost)
    int explicitInt = (int)doubleValue; // C-style cast
    cout << "Explicit conversion (double to int): " << explicitInt << endl;

    // Another explicit cast using C++ style cast
    int asciiCode = 66;
    char explicitChar = static_cast<char>(asciiCode);
    cout << "Explicit conversion (int to char): " << explicitChar << endl;

    return 0;
}
