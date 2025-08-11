#include <iostream>
#include <string>
using namespace std;

// Base class
class Person
{
public:
    string name;
    int age;

    // Method to input person details
    void getPersonDetails()
    {
        cout << "Enter name: ";
        cin >> name;
        cout << "Enter age: ";
        cin >> age;
    }

    // Method to display person details
    void displayPerson()
    {
        cout << "Name: " << name << ", Age: " << age << endl;
    }
};

// Derived class for Students
class Student : public Person
{
public:
    string grade;

    // Method to input student details
    void getStudentDetails()
    {
        getPersonDetails(); // Reusing the base class method
        cout << "Enter grade: ";
        cin >> grade;
    }

    // Method to display student details
    void displayStudent()
    {
        displayPerson(); // Reusing the base class method
        cout << "Grade: " << grade << endl;
    }
};

// Derived class for Teachers
class Teacher : public Person
{
public:
    string subject;

    // Method to input teacher details
    void getTeacherDetails()
    {
        getPersonDetails(); // Reusing the base class method
        cout << "Enter subject: ";
        cin >> subject;
    }

    // Method to display teacher details
    void displayTeacher()
    {
        displayPerson(); // Reusing the base class method
        cout << "Subject: " << subject << endl;
    }
};

int main()
{
    Student student1;
    Teacher teacher1;

    cout << "=== Student Details ===" << endl;
    student1.getStudentDetails();
    cout << endl
         << "=== Student Information ===" << endl;
    student1.displayStudent();

    cout << "\n=== Teacher Details ===" << endl;
    teacher1.getTeacherDetails();
    cout << endl
         << "=== Teacher Information ===" << endl;
    teacher1.displayTeacher();

    return 0;
}