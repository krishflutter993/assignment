#include <stdio.h>

int main()
{
    char str[100];
    int i;

    printf("Enter a string: ");
    scanf("%s", str); // reads a word (no spaces)

    // Find length
    for (i = 0; str[i] != 0; i++)
        ;

    // Print in reverse
    printf("Reversed string: ");
    for (i = i - 1; i >= 0; i--)
    {
        printf("%c", str[i]);
    }

    printf("\n");
    return 0;
}
