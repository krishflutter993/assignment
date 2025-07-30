#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int secretNumber, userGuess, attemptCount = 0, maxAttemptsAllowed = 10;

    srand(time(0));
    secretNumber = (rand() % 100) + 1; // 1 to 100

    printf("Welcome to the Number Guessing Game!\n");
    printf("Guess the number between 1 and 100. You have %d attempts.\n", maxAttemptsAllowed);

    while (attemptCount < maxAttemptsAllowed)
    {
        printf("Attempt %d: Enter your guess: ", attemptCount + 1);
        scanf("%d", &userGuess);
        attemptCount++;

        if (userGuess == secretNumber)
        {
            printf("🎉 Correct! You guessed the number in %d attempts.\n", attemptCount);
            break;
        }
        else if (userGuess < secretNumber)
        {
            printf("Too low! Try a higher number.\n");
        }
        else
        {
            printf("Too high! Try a lower number.\n");
        }
    }

    if (userGuess != secretNumber)
    {
        printf(" rong Out of attempts! The correct number was %d.\n", secretNumber);
    }

    return 0;
}
