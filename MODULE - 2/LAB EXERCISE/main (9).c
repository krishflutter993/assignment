//Write a C program to demonstrate pointer usage. Use a pointer to modify the  value of a variable and print the result.

        

#include<stdio.h>
#include<conio.h>

void main()
{
	int no=10;
	int *ptr;
	
	ptr=&no;
	
	printf("\n original value :%d",no);
	
	*ptr=25;
	
	printf("\n modified value :%d",no);
	
	getch();
}