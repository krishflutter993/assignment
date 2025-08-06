#include <iostream>
using namespace std;

int gVar = 10;

void difarns()
{

    int lVar = 5;

    cout << "Inside function:" << endl;
    cout << "Global variable: " << gVar << endl;
    cout << "Local variable: " << lVar << endl;
}

int main()
{

    difarns();

    cout << "In main function:" << endl;
    cout << "Global variable: " << gVar << endl;

    return 0;
}
