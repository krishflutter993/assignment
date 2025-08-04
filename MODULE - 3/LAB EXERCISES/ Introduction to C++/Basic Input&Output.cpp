#include <iostream>
#include <string> // For using string

using namespace std; // So we don't need to prefix std::

int main()
{
    string name; // Variable to store user's name
    int age;     // Variable to store user's age

    // Ask for name
    cout << "Enter your name: ";
    getline(cin, name); // Read full name including spaces

    // Ask for age
    cout << "Enter your age: ";
    cin >> age;

    // Display personalized message
    cout << "Hello, " << name << "! You are " << age << " years old." << endl;

    return 0;
}