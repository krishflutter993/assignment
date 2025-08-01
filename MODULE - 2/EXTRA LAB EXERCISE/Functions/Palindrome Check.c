#include <stdio.h>

// Function to check if a number is a palindrome
int isPalindrome(int num)
{
    int original = num, reversed = 0, digit;

    while (num > 0)
    {
        digit = num % 10;
        reversed = reversed * 10 + digit;
        num = num / 10;
    }

    return (original == reversed);
}

int main()
{
    int number;

    // Input from user
    printf("Enter an integer: ");
    scanf("%d", &number);

    // Negative numbers are not considered palindromes
    if (number < 0)
    {
        printf("Negative numbers are not considered palindromes.\n");
        return 0;
    }

    // Check palindrome
    if (isPalindrome(number))
    {
        printf("%d is a palindrome number.\n", number);
    }
    else
    {
        printf("%d is not a palindrome number.\n", number);
    }

    return 0;
}
