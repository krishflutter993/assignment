#include <stdio.h>

int main()
{
    float temp;

    printf("Enter temperature in Centigrade: ");
    scanf("%f", &temp);

    if (temp < 0)
    {
        printf("\n🥶 Freezing weather");
    }
    else if (temp >= 0 && temp < 10)
    {
        printf("\n Very Cold weather");
    }
    else if (temp >= 10 && temp < 20)
    {
        printf("\n Cold weather");
    }
    else if (temp >= 20 && temp < 30)
    {
        printf("\n Normal in Temp");
    }
    else if (temp >= 30 && temp < 40)
    {
        printf("\n🥵 It is Hot");
    }
    else
    {
        printf("\n It is Very Hot");
    }

    return 0;
}
