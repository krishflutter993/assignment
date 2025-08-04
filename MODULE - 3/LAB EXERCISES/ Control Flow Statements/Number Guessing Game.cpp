
#include <iostream>
#include <cstdlib>  // For rand() and srand()
#include <ctime>    // For time()

using namespace std;

int main() {
    // Initialize random seed
    srand(time(0));

    int secretNumber = rand() % 100 + 1;  // Random number between 1 and 100
    int guess;
    int attempts = 0;

    cout << "Guess the number between 1 and 100!" << endl;

    // Loop until the user guesses correctly
    while (true) {
        cout << "Enter your guess: ";
        cin >> guess;

        attempts++;

        if (guess < 1 || guess > 100) {
            cout << "Please enter a number between 1 and 100." << endl;
            continue;  // Ask again without counting as a valid attempt
        }

        if (guess > secretNumber) {
            cout << "Too high! Try again." << endl;
        } else if (guess < secretNumber) {
            cout << "Too low! Try again." << endl;
        } else {
            cout << "Congratulations! You guessed the number in " << attempts << " attempts." << endl;
            break;  // Exit the loop when guessed correctly
        }
    }

    return 0;
}
