#include <iostream>
using namespace std;

int main()
{
    int marks;
    char grade;

    cout << "Enter the student's marks (0-100): ";
    cin >> marks;

    if (marks < 0 || marks > 100)
    {
        cout << "Invalid marks entered. Please enter marks between 0 and 100." << endl;
        return 1; // Exit with error
    }

    if (marks >= 90)
    {
        grade = 'A';
    }
    else if (marks >= 80)
    {
        grade = 'B';
    }
    else if (marks >= 70)
    {
        grade = 'C';
    }
    else if (marks >= 60)
    {
        grade = 'D';
    }
    else
    {
        grade = 'F';
    }

    cout << "Grade: " << grade << endl;

    return 0;
}
