/*Write a C program that takes two strings from the user and concatenates them 
using strcat(). Display the concatenated string and its length using 
strlen(). */


#include <stdio.h>
#include <conio.h>
#include <string.h>

int main() {
    char str1[100], str2[100];

    
    printf("Enter the first string: ");
    scanf("%s", str1);  

    printf("Enter the second string: ");
    scanf("%s", str2);

    strcat(str1, str2);


    printf("\n Concatenated String: %s\n", str1);
    printf("\n Length of Concatenated String: %d", strlen(str1));

    return 0;
}
