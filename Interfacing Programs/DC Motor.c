//DC Motor Program
#include <lpc214x.h>

void clock_wise(void);
void anti_clock_wise(void);
unsigned int j = 0;

int main()
{
    IO0DIR = 0X00000900;
    IO0SET = 0X00000100;
    while (1)
    {
        clock_wise();
        for (j = 0; j < 400000; j++);
        anti_clock_wise();
        for (j = 0; j < 400000; j++);
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