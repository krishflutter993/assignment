#include <iostream>
using namespace std;

int main()
{
    int mark;

    cout << "enter Mark for 0 to 100: " << endl;
    cin >> mark;

    if (mark >= 80)
    {
        cout << "A grade" << endl;
    }
    else if (mark >= 65)
    {
        cout << "B grade" << endl;
    }
    else if (mark >= 55)
    {
        cout << "c grade" << endl;
    }
    else if (mark >= 40)
    {
        cout << "D grade" << endl;
    }
    else
    {
        cout << "fail" << endl;
    }

    return 0;
}