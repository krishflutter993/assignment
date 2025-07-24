#include <stdio.h>
#include <math.h>

// Function to count digits
int countDigits(int num) {
    int count = 0;
    while (num != 0) {
        num /= 10;
        count++;
    }
    return count;
}

// Function to check Armstrong number
int isArmstrong(int num) {
    int sum = 0, temp = num, digit, power = countDigits(num);

    while (temp != 0) {
        digit = temp % 10;
        sum += pow(digit, power);
        temp /= 10;
    }

    return (sum == num);
}

int main() {
    printf("Armstrong numbers between 1 and 1000:\n");

    for (int i = 1; i <= 1000; i++) {
        if (isArmstrong(i)) {
            printf("%d ", i);
        }
    }

    printf("\n");
    return 0;
}
