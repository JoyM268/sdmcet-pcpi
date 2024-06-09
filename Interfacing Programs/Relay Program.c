//Relay Program
#include <LPC21xx.h>
unsigned int i;
int main()
{
    IO0DIR = 0x00000400;
    IO0SET = 0x00000400;
    while (1)
    {
        for (i = 0; i < 1000000; i++){}
        IO0SET = 0x00000400;
        for (i = 0; i < 1000000; i++){}
        IO0CLR = 0x00000400;
    }
}