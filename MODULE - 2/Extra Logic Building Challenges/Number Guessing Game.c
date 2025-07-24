#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int secret, guess, attempts = 0, maxAttempts = 10;

    srand(time(0));
    secret = (rand() % 100) + 1;  // 1 to 100

    printf("Welcome to the Number Guessing Game!\n");
    printf("Guess the number between 1 and 100. You have %d attempts.\n", maxAttempts);

    while (attempts < maxAttempts) {
        printf("Attempt %d: Enter your guess: ", attempts + 1);
        scanf("%d", &guess);
        attempts++;

        if (guess == secret) {
            printf("🎉 Correct! You guessed the number in %d attempts.\n", attempts);
            break;
        } else if (guess < secret) {
            printf("Too low! Try a higher number.\n");
        } else {
            printf("Too high! Try a lower number.\n");
        }
    }

    if (guess != secret) {
        printf("❌ Out of attempts! The correct number was %d.\n", secret);
    }

    return 0;
}
