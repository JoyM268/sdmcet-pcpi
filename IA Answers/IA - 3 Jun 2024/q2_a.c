//Write a program to interface LPC2148 ARM 7 processor to rotate DC motor thrice in clockwise and five times in anti-clockwise.
#include <lpc214x.h>

void clock_wise(void);
void anti_clock_wise(void);
unsigned int j = 0;

int main()
{
    int i;
    IO0DIR = 0X00000900;
    IO0SET = 0X00000100;
    while (1)
    {
        for(i = 1; i <= 3; i++){
            clock_wise();
            for (j = 0; j < 400000; j++);
        }

        for(i = 1; i <= 5; i++){
            anti_clock_wise();
            for (j = 0; j < 400000; j++);
        }
    }
}

void clock_wise(void)
{
    IO0CLR = 0x00000900;
    for (j = 0; j < 10000; j++);
    IO0SET = 0X00000900;
}

void anti_clock_wise(void)
{
    IO0CLR = 0X00000900;
    for (j = 0; j < 10000; j++);
    IO0SET = 0X00000100;
} 