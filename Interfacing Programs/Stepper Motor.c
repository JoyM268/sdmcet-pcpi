//Stepper Motor Program
#include <LPC21xx.H>
void clock_wise(void);
void anti_clock_wise(void);
unsigned long int var1, var2;
unsigned int i = 0, j = 0, k = 0;
int main(void)
{
    PINSEL0 = 0x00FFFFFF;
    IO0DIR |= 0x0000F000;
    while (1)
    {
        for (j = 0; j < 50; j++)
            clock_wise();
        for (k = 0; k < 65000; k++);
        for (j = 0; j < 50; j++)
            anti_clock_wise();
        for (k = 0; k < 65000; k++);
    }
}

void clock_wise(void)
{
    var1 = 0x00000800;
    for (i = 0; i <= 3; i++)
    {
        var1 = var1 << 1;
        var2 = ~var1;
        var2 = var2 & 0x0000F000;
        IO0PIN = ~var1;
        for (k = 0; k < 3000; k++);
    }
}
void anti_clock_wise(void)
{
    var1 = 0x00010000;
    for (i = 0; i <= 3; i++)
    {
        var1 = var1 >> 1;
        var2 = ~var1;
        var2 = var2 & 0x0000F000;
        IO0PIN = ~var1;
        for (k = 0; k < 3000; k++);
    }
}