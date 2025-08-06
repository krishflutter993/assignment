#include <iostream>
using namespace std;

int main()
{
    int secretNumber = 51;
    int guess;

    cout << "Guess a number For 1 and 100: ";

    while (true)
    {
        cin >> guess;

        if (guess < secretNumber)
        {
            cout << "Too low! Try again: " << endl;
        }
        else if (guess > secretNumber)
        {
            cout << "Too high! Try again: " << endl;
        }
        else
        {
            cout << " Congratulations! You guessed the number." << endl;
            break;
        }
    }

    return 0;
}
