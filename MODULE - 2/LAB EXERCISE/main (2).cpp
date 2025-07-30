/*Write a C program that includes variables, constants, and comments.
Declare and use different data types (int, char, float) and display their values.*/

#include <stdio.h> // 1. Header file

#define PI 3.14

void main() // 2. Main function
{
	// 3. body of program
	int age = 20;		 // variable of int type
	float marks = 85.78; // variable of float type
	char grade = 'B';	 // variable of char type

	printf("\n Age: %d", age);
	printf("\n Marks: %f", marks);
	printf("\n Grade: %c", grade);
	printf("\n PI value is: %f", PI);

	// Change variable values
	age = 25;	   // age changed from 20 to 25
	marks = 90.50; // marks changed from 85.78 to 90.50
	grade = 'A';   // grade changed from 'B' to 'A'

	printf("\n\n After changing values:");
	printf("\n Age: %d", age);
	printf("\n Marks: %f", marks);
	printf("\n Grade: %c", grade);

	getch(); // 4.end of program
}
