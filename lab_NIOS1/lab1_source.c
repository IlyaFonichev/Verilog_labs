#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <unistd.h>

int main (void)
{
int *psw = (int*) 0x8000;
int *pled = (int*) 0x8010;
int count = 255;

	while (1)
	{
		usleep (100000);
		if (((*psw) != 0x000000) & (((*psw)) > count)) count++;
		else 		   count = 0;
		*pled = ~count;
	}
	return 0;
}
