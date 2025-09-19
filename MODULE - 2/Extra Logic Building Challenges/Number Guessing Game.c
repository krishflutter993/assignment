#include <stdio.h>

int main()
{
    int secretNumber = 51;
    int guess = 0;

    printf("Guess a number between 1 and 100.\n");

    while (guess != secretNumber)
    {
        printf("Enter your guess: ");
        scanf("%d", &guess);

        if (guess < 1 || guess > 100)
        {
            printf("Please enter a number between 1 and 100.\n");
            continue;
        }

        if (guess < secretNumber)
        {
            printf("Too low! Try again.\n");
        }
        else if (guess > secretNumber)
        {
            printf("Too high! Try again.\n");
        }
        else
        {
            printf("Congratulations! You guessed the number.\n");
        }
    }

    return 0;
}
