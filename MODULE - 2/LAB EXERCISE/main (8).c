/*Write a C program that stores 5 integers in a one-dimensional array and prints 
them. Extend this to handle a two-dimensional array (3x3 matrix) and 
calculate the sum of all elements.*/


#include<stdio.h>
#include<conio.h>

int main() {
    
    int arr[5],i,j;
    printf("Enter 5 integers for 1D array:\n");
    
    for(i = 0; i < 5; i++) 
	{
        printf("Element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    printf("\nThe 1D array elements are:\n");
    for(i = 0; i < 5; i++)
	{
        printf("%d ", arr[i]);
    }

    
    int matrix[3][3], sum = 0;
    
    printf("\n\nEnter 9 integers for 3x3 matrix:\n");
    
    for(i = 0; i < 3; i++) 
	{
        for(j = 0; j < 3; j++) 
		{
            printf("Element [%d][%d]: ", i, j);
            scanf("%d", &matrix[i][j]);
            sum += matrix[i][j]; 
        }
    }

    printf("\nThe 3x3 matrix is:\n");
    for(i = 0; i < 3; i++) 
	{
        for(j = 0; j < 3; j++) 
		{
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }

    printf("\nSum of all elements in 3x3 matrix = %d\n", sum);

    return 0;
}
