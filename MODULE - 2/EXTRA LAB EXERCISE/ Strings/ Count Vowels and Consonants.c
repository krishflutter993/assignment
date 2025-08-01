#include <stdio.h>
#include <ctype.h> // For tolower() and isalpha()
#include <string.h>

int main()
{
    char str[200];
    int vowels = 0, consonants = 0;

    // Input string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    size_t len = strlen(str);
    if (str[len - 1] == '\n')
        str[len - 1] = '\0';

    // Loop through the string
    for (int i = 0; str[i] != '\0'; i++)
    {
        char ch = tolower(str[i]);

        if (isalpha(ch))
        { // Check if character is a letter
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
                vowels++;
            else
                consonants++;
        }
    }

    // Output the counts
    printf("Number of vowels: %d\n", vowels);
    printf("Number of consonants: %d\n", consonants);

    return 0;
}
