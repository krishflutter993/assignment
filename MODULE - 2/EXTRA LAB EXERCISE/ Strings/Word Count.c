#include <stdio.h>
#include <string.h>
#include <ctype.h>

int countWords(const char str[])
{
    int i, words = 0;
    int inWord = 0;

    for (i = 0; str[i] != '\0'; i++)
    {
        if (!isspace(str[i]) && inWord == 0)
        {
            inWord = 1; // We are inside a word
            words++;
        }
        else if (isspace(str[i]))
        {
            inWord = 0; // We are outside a word
        }
    }

    return words;
}

int main()
{
    char sentence[200];

    // Input sentence
    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);

    // Remove trailing newline if present
    size_t len = strlen(sentence);
    if (sentence[len - 1] == '\n')
        sentence[len - 1] = '\0';

    // Count and display words
    int wordCount = countWords(sentence);
    printf("Number of words: %d\n", wordCount);

    return 0;
}
