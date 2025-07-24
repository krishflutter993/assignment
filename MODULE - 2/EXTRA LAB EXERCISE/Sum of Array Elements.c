#include <stdio.h>

int main() {
    int N, i, sum = 0;
    float average;

    printf("Enter the number of elements: ");
    scanf("%d", &N);

    int arr[N];

    printf("Enter %d numbers:\n", N);
    for(i = 0; i < N; i++) {
        scanf("%d", &arr[i]);
    }

    for(i = 0; i < N; i++) {
        sum += arr[i];
    }

    average = (float)sum / N;

    printf("Sum of the array elements = %d\n", sum);
    printf("Average of the array elements = %.2f\n", average);

    return 0;
}
