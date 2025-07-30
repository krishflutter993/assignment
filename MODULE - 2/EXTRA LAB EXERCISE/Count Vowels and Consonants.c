#include <stdio.h>
#include <ctype.h>

int main()
{
    char input[100];
    size_t vowelCount = 0, consonantCount = 0, digitCount = 0, specialCount = 0;
    size_t index = 0;

    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);

    while (input[index] != '\0' && input[index] != '\n')
    {
        char ch = input[index];

        if (isalpha(ch))
        {
            ch = tolower(ch);
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
                vowelCount++;
            else
                consonantCount++;
        }
        else if (isdigit(ch))
        {
            digitCount++;
        }
        else if (!isspace(ch))
        { // exclude spaces from special characters
            specialCount++;
        }
        index++;
    }

    printf("Vowels: %zu\n", vowelCount);
    printf("Consonants: %zu\n", consonantCount);
    printf("Digits: %zu\n", digitCount);
    printf("Special characters: %zu\n", specialCount);

    return 0;
}
