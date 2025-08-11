#include <iostream>
#include <algorithm>
#include <string>
using namespace std;

int main()
{
    string key, buffer;
    cout << "Enter a string: ";
    cin >> key;

    reverse(key.begin(), key.end());

    if (key == buffer)
    {
        cout << "The string is a palindrome." << endl;
    }
    else
    {
        cout << "The string is not a palindrome." << endl;
    }

    return 0;
}
