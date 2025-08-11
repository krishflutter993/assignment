#include <iostream>
using namespace std;
int x = 10;

void test()
{
    int y = 5;
    cout << "Local y = " << y << endl;
}
int main()
{
    cout << "Global x = " << x << endl;

    test();
    return 0;
}