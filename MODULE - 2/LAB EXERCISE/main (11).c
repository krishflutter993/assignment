//Write a C program that defines a structure to store a student's details (name, 
//roll number, and marks). Use an array of structures to store details of 3 
//students and print them. 

#include<stdio.h>
#include<conio.h>

struct information
{
	int roll_no;
	char name[50];
	int marks;
}i1[50];

void main()
{
	int i;
	for(i=0;i<3;i++)
	{
		printf("\n enter your Roll number :");
		scanf("%d",&i1[i].roll_no);
	
		printf("\n enter your name :");
		scanf("%s",&i1[i].name);
	
		printf("\n enter your maarks  :");
		scanf("%d",&i1[i].marks);
	}
	
	
	printf("\n-----------student details----------\n");
	
	for(i=0;i<3;i++)
	{
			printf("\n your Roll number is  :%d",i1[i].roll_no);
			printf("\n your name is 		:%d",i1[i].name);
			printf("\n your marks is 		:%d",i1[i].marks);
	}
	

	
	getch();
	
}