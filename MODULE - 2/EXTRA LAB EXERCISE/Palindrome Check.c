#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Function to check if a string is palindrome (case-insensitive)
int isPalindromeString(char inputString[])
{
    int leftIndex = 0, rightIndex = strlen(inputString) - 1;

    while (leftIndex < rightIndex)
    {
        // Convert to lowercase for case-insensitive comparison
        char leftChar = tolower(inputString[leftIndex]);
        char rightChar = tolower(inputString[rightIndex]);

        if (leftChar != rightChar)
        {
            return 0; // Not a palindrome
        }
        leftIndex++;
        rightIndex--;
    }
    return 1; // Palindrome
}

int main()
{
    char userInput[100];

    printf("Enter a string: ");
    fgets(userInput, sizeof(userInput), stdin);

    // Remove newline character from fgets input if present
    userInput[strcspn(userInput, "\n")] = '\0';

    if (isPalindromeString(userInput))
        printf("\"%s\" is a palindrome string.\n", userInput);
    else
        printf("\"%s\" is NOT a palindrome string.\n", userInput);

    return 0;
}
