#include <iostream>
using namespace std;

// Base class
class Person
{
protected:
    string name;
    int age;

public:
    void setPersonInfo(string n, int a)
    {
        name = n;
        age = a;
    }

    void displayPersonInfo() const
    {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }
};

// Derived class Student
class Student : public Person
{
private:
    string studentID;

public:
    void setStudentInfo(string n, int a, string id)
    {
        setPersonInfo(n, a); // Reuse base class function
        studentID = id;
    }

    void displayStudentInfo() const
    {
        displayPersonInfo(); // Reuse base class function
        cout << "Student ID: " << studentID << endl;
    }
};

// Derived class Teacher
class Teacher : public Person
{
private:
    string subject;

public:
    void setTeacherInfo(string n, int a, string sub)
    {
        setPersonInfo(n, a); // Reuse base class function
        subject = sub;
    }

    void displayTeacherInfo() const
    {
        displayPersonInfo(); // Reuse base class function
        cout << "Subject: " << subject << endl;
    }
};

int main()
{
    // Create a Student object
    Student student;
    student.setStudentInfo("Alice", 20, "S12345");
    cout << "Student Info:" << endl;
    student.displayStudentInfo();

    cout << endl;

    // Create a Teacher object
    Teacher teacher;
    teacher.setTeacherInfo("Mr. Smith", 40, "Mathematics");
    cout << "Teacher Info:" << endl;
    teacher.displayTeacherInfo();

    return 0;
}
