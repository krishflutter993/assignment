/* Write a C program to check if a number is even or odd using an if-else 
statement. Extend the program using a switch statement to display the month 
name based on the user�s input (1 for January, 2 for February, etc.). */

#include<stdio.h>
#include<conio.h>

void main()
{
	int no,month;
	
	//check if a number is even or odd 
	
	printf("\n enter number :");
	scanf("%d",&no);
	
	if(no%2==0)
	{
		printf("\n even number\n");	
	}
	else
	{
		printf("\n odd number\n");
	}
	
	//switch statement to display the month
	
	printf("\n enter number[1 to 12] to display month : ");
	scanf("%d",&month);
	
	switch(month)
	{
		case 1:printf("junuary"); 
		break;
		case 2:printf("February"); 
		break;
		case 3:printf("March"); 
		break;
		case 4:printf("April"); 
		break;
		case 5:printf("may"); 
		break;
		case 6:printf("june"); 
		break;
		case 7:printf("july"); 
		break;
		case 8:printf("August"); 
		break;
		case 9:printf("September"); 
		break;
		case 10:printf("October"); 
		break;
		case 11:printf("November"); 
		break;
		case 12:printf("December"); 
		break;
		
		getch();
		
	}
}