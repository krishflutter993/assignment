#include <stdio.h>
#include <string.h>
#include <ctype.h>

int countWords(char str[]) {
    int count = 0, inWord = 0;

    for (int i = 0; str[i] != '\0'; i++) {
        if (!isspace(str[i])) {
            if (!inWord) {
                inWord = 1;
                count++;
            }
        } else {
            inWord = 0;
        }
    }

    return count;
}

void findLongestWord(char str[], char longest[]) {
    int maxLen = 0, currLen = 0, i = 0, start = 0;

    while (str[i] != '\0') {
        if (!isspace(str[i])) {
            if (currLen == 0) start = i;
            currLen++;
        } else {
            if (currLen > maxLen) {
                maxLen = currLen;
                strncpy(longest, &str[start], currLen);
                longest[currLen] = '\0';
            }
            currLen = 0;
        }
        i++;
    }

    // Check last word
    if (currLen > maxLen) {
        maxLen = currLen;
        strncpy(longest, &str[start], currLen);
        longest[currLen] = '\0';
    }
}

int main() {
    char sentence[200], longest[100];

    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);

    // Remove newline if present
    sentence[strcspn(sentence, "\n")] = '\0';

    int wordCount = countWords(sentence);
    findLongestWord(sentence, longest);

    printf("Number of words: %d\n", wordCount);
    printf("Longest word: %s\n", longest);

    return 0;
}
