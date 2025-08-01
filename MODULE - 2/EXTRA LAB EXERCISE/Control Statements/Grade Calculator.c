//=========================if-else==========================
#include <stdio.h>

int main()
{
    int marks;

    printf("Enter the marks of the student: ");
    scanf("%d", &marks);

    if (marks > 90)
    {
        printf("Grade: A\n");
    }
    else if (marks > 75 && marks <= 90)
    {
        printf("Grade: B\n");
    }
    else if (marks > 50 && marks <= 75)
    {
        printf("Grade: C\n");
    }
    else
    {
        printf("Grade: D\n");
    }

    return 0;
}

//=========================switch-case==========================
// #include <stdio.h>

// int main() {
// int marks;

// printf("Enter the marks of the student: ");
// scanf("%d", &marks);

// switch (marks / 10) {
// case 10:  // For 100
// case 9:
//    printf("Grade: A\n");
//    break;
// case 8:
// case 7:
//   printf("Grade: B\n");
//   break;
//  case 6:
// case 5:
//  printf("Grade: C\n");
//   break;
//   default:
//  printf("Grade: D\n");
//  }

//  return 0;
//}
