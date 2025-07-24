/*Write a C program to print numbers from 1 to 10 using all three types of loops 
(while, for, do-while).*/

#include<stdio.h>
#include<conio.h>

void main()
{
	int i=1;
	
	//for loop
	printf("\n using for loop ");
	for(i=1;i<=10;i++)
	{
		printf("%d",i);
	}
	
	//while loop
	printf("\n using for while ");
	i=1;
	while(i<=10)
	{
		printf("%d",i);
		i++;
	}
	
	//do while loop
	printf("\n using for do while loop ");
	i=1;
	do
	{
		printf("%d",i);
		i++;
	}while(i<=10);
	
	
	
	getch();
}