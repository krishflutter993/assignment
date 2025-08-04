//===================================OOP=====
#include <iostream>
using namespace std;

// Class representing a rectangle
class Rectangle
{
private:
    float length;
    float width;

public:
    // Method to set dimensions
    void setDimensions(float l, float w)
    {
        length = l;
        width = w;
    }

    // Method to calculate area
    float getArea()
    {
        return length * width;
    }
};

int main()
{
    Rectangle rect; // Create object of Rectangle class
    float length, width;

    cout << "Enter the length of the rectangle: ";
    cin >> length;

    cout << "Enter the width of the rectangle: ";
    cin >> width;

    rect.setDimensions(length, width);
    cout << "Area of the rectangle: " << rect.getArea() << endl;

    return 0;
}
//===================================POP=====
// #include <iostream>
// using namespace std;

// // Function to calculate area
// float calculateArea(float length, float width) {
//     return length * width;
// }

// int main() {
//     float length, width;

//     cout << "Enter the length of the rectangle: ";
//     cin >> length;

//     cout << "Enter the width of the rectangle: ";
//     cin >> width;

//     float area = calculateArea(length, width);
//     cout << "Area of the rectangle: " << area << endl;

//     return 0;
// }
