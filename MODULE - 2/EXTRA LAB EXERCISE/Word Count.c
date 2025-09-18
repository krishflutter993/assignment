#include <stdio.h>

int main()
{
    char sentence[200];
    int i = 0, words = 0;

    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);

    while (sentence[i] != '\0')
    {
        if ((sentence[i] != ' ' && sentence[i] != '\n') &&
            (i == 0 || sentence[i - 1] == ' ' || sentence[i - 1] == '\n'))
        {
            words++;
        }
        i++;
    }

    printf("Number of words: %d\n", words);

    return 0;
}
