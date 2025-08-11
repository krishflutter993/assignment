#include <iostream>
using namespace std;

int main()
{
    int secretNumber = 51;
    int guess = 0;

    while (guess >= 0)
    {
        cout << "Guess a number For 1 and 100: ";
        cin >> guess;

        if (guess < secretNumber)
        {
            cout << "Too Low! Try again: " << endl;
        }
        else if (guess > secretNumber)
        {
            cout << "Too high! Try again: " << endl;
        }
        else
        {
            cout << " Congratulations You guessed the number." << endl;
            break;
        }
    }

    return 0;
}
