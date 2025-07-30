#include <stdio.h>
#include <string.h>
#include <ctype.h>

int countWords(char inputString[])
{
    int wordCount = 0, insideWord = 0;

    for (int charIndex = 0; inputString[charIndex] != '\0'; charIndex++)
    {
        if (!isspace(inputString[charIndex]))
        {
            if (!insideWord)
            {
                insideWord = 1;
                wordCount++;
            }
        }
        else
        {
            insideWord = 0;
        }
    }

    return wordCount;
}

void findLongestWord(char inputString[], char longestWord[])
{
    int maxWordLength = 0, currentWordLength = 0, charIndex = 0, wordStartIndex = 0;

    while (inputString[charIndex] != '\0')
    {
        if (!isspace(inputString[charIndex]))
        {
            if (currentWordLength == 0)
                wordStartIndex = charIndex;
            currentWordLength++;
        }
        else
        {
            if (currentWordLength > maxWordLength)
            {
                maxWordLength = currentWordLength;
                strncpy(longestWord, &inputString[wordStartIndex], currentWordLength);
                longestWord[currentWordLength] = '\0';
            }
            currentWordLength = 0;
        }
        charIndex++;
    }

    // Check last word
    if (currentWordLength > maxWordLength)
    {
        maxWordLength = currentWordLength;
        strncpy(longestWord, &inputString[wordStartIndex], currentWordLength);
        longestWord[currentWordLength] = '\0';
    }
}

int main()
{
    char userSentence[200], longestWord[100];

    printf("Enter a sentence: ");
    fgets(userSentence, sizeof(userSentence), stdin);

    // Remove newline if present
    userSentence[strcspn(userSentence, "\n")] = '\0';

    int totalWords = countWords(userSentence);
    findLongestWord(userSentence, longestWord);

    printf("Number of words: %d\n", totalWords);
    printf("Longest word: %s\n", longestWord);

    return 0;
}
