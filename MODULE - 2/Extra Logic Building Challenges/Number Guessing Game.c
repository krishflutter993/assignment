#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int secretNumber, guess, attempts = 0;
    int maxAttempts = 7;

    // Seed the random number generator
    srand(time(0));
    secretNumber = rand() % 100 + 1; // Random number between 1 and 100

    printf("🎮 Welcome to the Number Guessing Game!\n");
    printf("Guess the number between 1 and 100. You have %d attempts.\n\n", maxAttempts);

    while (attempts < maxAttempts)
    {
        printf("Enter your guess: ");
        scanf("%d", &guess);

        attempts++;

        if (guess == secretNumber)
        {
            printf("🎉 Congratulations! You guessed the number in %d attempt(s).\n", attempts);
            break;
        }
        else if (guess < secretNumber)
        {
            printf("Too low! Try again.\n");
        }
        else
        {
            printf("Too high! Try again.\n");
        }

        if (attempts == maxAttempts)
        {
            printf("❌ You've used all %d attempts. The number was: %d\n", maxAttempts, secretNumber);
        }
    }

    return 0;
}
