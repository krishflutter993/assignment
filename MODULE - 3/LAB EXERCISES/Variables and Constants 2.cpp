#include <iostream>
using namespace std;

int main()
{
    // Constants (value cannot change)
    const float PI = 3.14159;
    const int MAX_USERS = 100;

    // Variables (value can change)
    int age = 20;
    float height = 5.9;
    char grade = 'A';
    string name = "Alice";
    bool isStudent = true;

    // Displaying variable values
    cout << "Name: " << name << endl;
    cout << "Age: " << age << endl;
    cout << "Height: " << height << " feet" << endl;
    cout << "Grade: " << grade << endl;
    cout << "Is a student? " << (isStudent ? "Yes" : "No") << endl;

    // Displaying constant values
    cout << "Value of PI: " << PI << endl;
    cout << "Max number of users: " << MAX_USERS << endl;

    // Performing operations
    age = age + 5;
    float circleArea = PI * 4 * 4; // Area of circle with radius 4

    cout << "\nAfter 5 years, age will be: " << age << endl;
    cout << "Area of circle with radius 4: " << circleArea << endl;

    return 0;
}
