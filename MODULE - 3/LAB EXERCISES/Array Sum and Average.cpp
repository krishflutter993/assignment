#include <iostream>
using namespace std;

int main()
{
    int a[3];
    int sum = 0;

    for (int i = 0; i < 3; i++)
    {
        cout << "Enter 3 numbers: ";
        cin >> a[i];
        sum += a[i];
    }

    float avg = sum / 3.0;

    cout << "Sum = " << sum << endl;
    cout << "Average = " << avg << endl;

    return 0;
}
