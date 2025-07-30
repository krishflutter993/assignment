#include <stdio.h>

// Function to calculate length without using strlen
int stringLength(char inputString[])
{
    int charCount = 0;
    while (inputString[charCount] != '\0')
    {
        charCount++;
    }
    return charCount;
}

// Function to reverse string without built-in functions
void reverseString(char inputString[])
{
    int length = stringLength(inputString);
    int index;
    char tempChar;

    for (index = 0; index < length / 2; index++)
    {
        tempChar = inputString[index];
        inputString[index] = inputString[length - index - 1];
        inputString[length - index - 1] = tempChar;
    }
}

int main()
{
    char userInput[100];
    int charIndex;

    printf("Enter a string: ");

    // Read input char by char until newline or EOF
    charIndex = 0;
    char currentChar;
    while ((currentChar = getchar()) != '\n' && currentChar != EOF && charIndex < 99)
    {
        userInput[charIndex++] = currentChar;
    }
    userInput[charIndex] = '\0';

    reverseString(userInput);

    printf("Reversed string: %s\n", userInput);

    return 0;
}
