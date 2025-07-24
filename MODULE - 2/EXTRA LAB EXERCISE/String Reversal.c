#include <stdio.h>

// Function to calculate length without using strlen
int stringLength(char str[]) {
    int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

// Function to reverse string without built-in functions
void reverseString(char str[]) {
    int length = stringLength(str);
    int i;
    char temp;

    for (i = 0; i < length / 2; i++) {
        temp = str[i];
        str[i] = str[length - i - 1];
        str[length - i - 1] = temp;
    }
}

int main() {
    char str[100];
    int i;

    printf("Enter a string: ");
    
    // Read input char by char until newline or EOF
    i = 0;
    char ch;
    while ((ch = getchar()) != '\n' && ch != EOF && i < 99) {
        str[i++] = ch;
    }
    str[i] = '\0';

    reverseString(str);

    printf("Reversed string: %s\n", str);

    return 0;
}
