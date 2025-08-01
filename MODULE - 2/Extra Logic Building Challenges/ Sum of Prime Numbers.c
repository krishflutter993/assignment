#include <stdio.h>
#include <stdbool.h>

// Function to check if a number is prime
bool isPrime(int num)
{
    if (num <= 1)
        return false;
    if (num == 2)
        return true;
    if (num % 2 == 0)
        return false;

    for (int i = 3; i * i <= num; i += 2)
    {
        if (num % i == 0)
            return false;
    }
    return true;
}

int main()
{
    int N;
    long long sum = 0;

    printf("Enter a number N: ");
    scanf("%d", &N);

    for (int i = 2; i <= N; i++)
    {
        if (isPrime(i))
        {
            sum += i;
        }
    }

    printf("Sum of all prime numbers up to %d is: %lld\n", N, sum);

    return 0;
}
