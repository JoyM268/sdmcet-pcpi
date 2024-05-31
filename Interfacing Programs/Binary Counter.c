//Binary Counter Program
#include <LPC21xx.h>

void delay(void);
unsigned int HexValue;

int main()
{
    unsigned int not_hexvalue = 0;
    PINSEL0 = 0x00000000;
    IO0DIR = 0x00FF0000;
    while (1)
    {
        for (HexValue = 0; HexValue <= 0xff; HexValue++)
        {
            not_hexvalue = (~HexValue);
            not_hexvalue &= 0x000000ff;
            IO0PIN = (not_hexvalue << 16);
            delay();
        }
    }
}

void delay(void)
{
    unsigned int count;
    for (count = 0; count < 650000; count++){}
}