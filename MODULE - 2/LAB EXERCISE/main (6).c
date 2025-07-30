/*Write a C program that uses the break statement to stop printing numbers
when it reaches 5. Modify the program to skip printing the number 3 using the
continue statement. */

#include <stdio.h>

int main()
{
	int i;

	// Change the value of i
	i = 1; // Assign a value to i

	printf("\n stop printing numbers when it reaches 5\n ");

	for (i = 1; i <= 10; i++)
	{
		if (i == 5)
		{
			break;
		}
		printf("\n %d", i);
	}

	// Change the value of i again before the next loop
	i = 1; // Reset i if needed

	printf("\n skip printing the number 3 using the continue statement\n");

	for (i = 1; i <= 10; i++)
	{
		if (i == 3)
		{
			continue;
		}
		printf("\n %d", i);
	}

	return 0;
}
