#include <iostream>
using namespace std;

// Function to calculate area
float rectangle(float length, float width)
{
    return length * width;
}

int main()
{
    float length, width;

    cout << "Enter the length of the rectangle: ";
    cin >> length;

    cout << "Enter the width of the rectangle: ";
    cin >> width;

    float area = rectangle(length, width);
    cout << "Area of the rectangle: " << area << endl;

    return 0;
}
