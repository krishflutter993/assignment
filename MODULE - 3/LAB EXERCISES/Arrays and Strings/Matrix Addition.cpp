#include <iostream>
using namespace std;

int main()
{
    int matrix1[2][2], matrix2[2][2], result[2][2];

    // Input first matrix
    cout << "Enter elements for Matrix 1 (2x2):" << endl;
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            cout << "Matrix1[" << i << "][" << j << "]: ";
            cin >> matrix1[i][j];
        }
    }

    // Input second matrix
    cout << "\nEnter elements for Matrix 2 (2x2):" << endl;
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            cout << "Matrix2[" << i << "][" << j << "]: ";
            cin >> matrix2[i][j];
        }
    }

    // Perform addition
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            result[i][j] = matrix1[i][j] + matrix2[i][j];
        }
    }

    // Display result
    cout << "\nResultant Matrix (Matrix1 + Matrix2):" << endl;
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            cout << result[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
