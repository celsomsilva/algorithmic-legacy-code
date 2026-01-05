/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/bitabit.c
 *
 *
 * Implements set_bits(x, p, n, y):
 * Returns x with the n bits starting at position p replaced
 * by the rightmost n bits of y.
 * All other bits of x remain unchanged.
 *
 * Classic bitwise exercise (K&R style).
 */

#include <stdio.h>

/* 
 * set_bits:
 *   x  -> original value
 *   p  -> bit position (0-based, from right)
 *   n  -> number of bits to replace
 *   y  -> source of replacement bits
 */
unsigned set_bits(unsigned x, unsigned y, int p, int n);

int main(void)
{
    unsigned x = 0;
    unsigned y = 10;   /* 1010 */
    int p = 4;
    int n = 2;
	
    printf("Result: %u\n", set_bits(x, y, p, n));
    return 0;
}

unsigned set_bits(unsigned x, unsigned y, int p, int n)
{
    unsigned mask;

    /* mask with n rightmost bits set to 1 */
    mask = ~(~0u << n);

    /* extract n rightmost bits from y and move to position p */
    y = (y & mask) << (p - n + 1);

    /* clear n bits starting at position p in x */
    mask = ~(mask << (p - n + 1));
    x = x & mask;

    /* combine original x with new bits from y */
    return x | y;
}

