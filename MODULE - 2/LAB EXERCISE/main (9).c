// Write a C program to demonstrate pointer usage. Use a pointer to modify the  value of a variable and print the result.

#include <stdio.h>
// #include <conio.h>

int main()
{
	int no = 10;
	int *ptr;

	ptr = &no;

	printf("\n original value :%d", no);

	*ptr = 25; // Change value using pointer
	printf("\n modified value (using pointer): %d", no);

	no = 50; // Change value directly
	printf("\n modified value (direct assignment): %d", no);

	return 0;
}