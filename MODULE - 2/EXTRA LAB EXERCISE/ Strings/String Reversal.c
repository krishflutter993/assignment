#include <stdio.h>
#include <string.h>

// Function to reverse a string in-place
void reverseString(char str[])
{
    int i, len = strlen(str);
    char temp;

    for (i = 0; i < len / 2; i++)
    {
        // Swap characters from both ends
        temp = str[i];
        str[i] = str[len - 1 - i];
        str[len - 1 - i] = temp;
    }
}

int main()
{
    char str[100];

    // Input string
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    // Remove newline character if present
    size_t len = strlen(str);
    if (str[len - 1] == '\n')
        str[len - 1] = '\0';

    // Reverse the string
    reverseString(str);

    // Output reversed string
    printf("Reversed string: %s\n", str);

    return 0;
}
