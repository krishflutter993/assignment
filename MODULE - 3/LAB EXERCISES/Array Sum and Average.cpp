#include <iostream>
using namespace std;

int main()
{
    const int SIZE = 100;
    int arr[SIZE];
    int n;
    int sum = 0;
    double average;

    cout << "Enter the number of elements (1 to " << SIZE << "): ";
    cin >> n;

    if (n <= 0 || n > SIZE)
    {
        cout << "Invalid number of elements." << endl;
        return 1;
    }

    // Input array elements
    cout << "Enter " << n << " integers:" << endl;
    for (int i = 0; i < n; ++i)
    {
        cout << "Element " << i + 1 << ": ";
        cin >> arr[i];
        sum += arr[i];
    }

    // Calculate average
    average = static_cast<double>(sum) / n;

    // Output results
    cout << "\nSum = " << sum << endl;
    cout << "Average = " << average << endl;

    return 0;
}
