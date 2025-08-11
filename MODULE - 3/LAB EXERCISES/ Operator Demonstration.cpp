#include <iostream>
using namespace std;

int main()
{
    int a = 24, b = 3;

    cout << "Arithmetic Operators:" << endl;
    cout << "a + b = " << a + b << endl; // Addition
    cout << "a - b = " << a - b << endl; // Subtraction
    cout << "a * b = " << a * b << endl; // Multiplication
    cout << "a / b = " << a / b << endl; // Division (integer division)
    cout << "a % b = " << a % b << endl; // Modulus
    cout << endl;

    cout << "Relational Operators:" << endl;
    cout << "a == b : " << (a == b) << endl; // Equal to
    cout << "a != b : " << (a != b) << endl; // Not equal to
    cout << "a > b : " << (a > b) << endl;   // Greater than
    cout << "a < b : " << (a < b) << endl;   // Less than
    cout << "a >= b : " << (a >= b) << endl; // Greater than or equal to
    cout << "a <= b : " << (a <= b) << endl; // Less than or equal to
    cout << endl;

    char x = true, y = false;
    cout << "Logical Operators:" << endl;
    cout << "x && y : " << (x && y) << endl; // Logical AND
    cout << "x || y : " << (x || y) << endl; // Logical OR
    cout << "!x : " << (!x) << endl;         // Logical NOT
    cout << endl;

   

    return 0;
}
