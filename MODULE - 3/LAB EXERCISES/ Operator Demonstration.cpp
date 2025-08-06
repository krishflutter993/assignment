#include <iostream>
using namespace std;

int main()
{
    int a = 24, b = 3;

    // Arithmetic Operators
    cout << "Arithmetic Operators:" << endl;
    cout << "a + b = " << a + b << endl; // Addition
    cout << "a - b = " << a - b << endl; // Subtraction
    cout << "a * b = " << a * b << endl; // Multiplication
    cout << "a / b = " << a / b << endl; // Division (integer division)
    cout << "a % b = " << a % b << endl; // Modulus
    cout << endl;

    // Relational Operators
    cout << "Relational Operators:" << endl;
    cout << "a == b : " << (a == b) << endl; // Equal to
    cout << "a != b : " << (a != b) << endl; // Not equal to
    cout << "a > b : " << (a > b) << endl;   // Greater than
    cout << "a < b : " << (a < b) << endl;   // Less than
    cout << "a >= b : " << (a >= b) << endl; // Greater than or equal to
    cout << "a <= b : " << (a <= b) << endl; // Less than or equal to
    cout << endl;

    // Logical Operators
    bool x = true, y = false;
    cout << "Logical Operators:" << endl;
    cout << "x && y : " << (x && y) << endl; // Logical AND
    cout << "x || y : " << (x || y) << endl; // Logical OR
    cout << "!x : " << (!x) << endl;         // Logical NOT
    cout << endl;

    // Bitwise Operators
    cout << "Bitwise Operators:" << endl;
    cout << "a = " << a << ", b = " << b << endl;
    cout << "a & b = " << (a & b) << endl;   // Bitwise AND
    cout << "a | b = " << (a | b) << endl;   // Bitwise OR
    cout << "a ^ b = " << (a ^ b) << endl;   // Bitwise XOR
    cout << "~a = " << (~a) << endl;         // Bitwise NOT
    cout << "a << 1 = " << (a << 1) << endl; // Left shift
    cout << "a >> 1 = " << (a >> 1) << endl; // Right shift

    return 0;
}
