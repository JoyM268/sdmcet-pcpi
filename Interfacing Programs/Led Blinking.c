#include <LPC21xx.h>
unsigned int delay;
int main()
{
    PINSEL1 = 0x00000000;
    IO0DIR = 0x00FF0000;
    while (1)
    {
        IO0CLR = 0x00FF0000;
        for (delay = 0; delay < 500000; delay++);
        IO0SET = 0x00FF0000;
        for (delay = 0; delay < 500000; delay++);
    }
}