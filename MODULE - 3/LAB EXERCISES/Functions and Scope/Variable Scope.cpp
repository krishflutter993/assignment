#include <iostream>
using namespace std;

// Global variable
int globalVar = 10;

void showGlobal()
{
    cout << "Inside showGlobal() - globalVar: " << globalVar << endl;
}

void demonstrateScope()
{
    int localVar = 5; // Local variable
    cout << "Inside demonstrateScope() - localVar: " << localVar << endl;
    cout << "Inside demonstrateScope() - globalVar: " << globalVar << endl;
}

int main()
{
    cout << "Inside main() - globalVar: " << globalVar << endl;

    demonstrateScope(); // Call function that uses both local and global variables
    showGlobal();       // Call function that accesses only the global variable

    // Uncommenting the line below will cause a compiler error
    // cout << localVar;  // Error: localVar not accessible here

    return 0;
}
