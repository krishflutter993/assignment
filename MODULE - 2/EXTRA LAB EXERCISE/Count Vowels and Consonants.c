#include <stdio.h>

int main()
{
    char str[100];
    int vowels = 0, consonants = 0;

    printf("Enter a string: ");
    scanf("%s", &str); // Note: gets() is unsafe, but simple for learning purposes

    for (int i = 0; str[i] != '\0'; i++)
    {
        char ch = str[i];

        // Check for vowels
        if (ch == 'a' || ch == 'e' || ch == 'i' ||
            ch == 'o' || ch == 'u' ||
            ch == 'A' || ch == 'E' || ch == 'I' ||
            ch == 'O' || ch == 'U')
        {
            vowels++;
        }
        // Check for consonants (alphabet letters that are not vowels)
        else if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'))
        {
            consonants++;
        }
    }

    printf("Vowels: %d\n", vowels);
    printf("Consonants: %d\n", consonants);

    return 0;
}
