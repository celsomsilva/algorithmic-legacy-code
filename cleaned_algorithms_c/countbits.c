/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/contabits.c
 *
 * Counts the number of bits set to 1 in an unsigned integer.
 *
 * Demonstrates two classic methods:
 * 1) Shift and test (x & 1)
 * 2) Brian Kernighan's algorithm (x &= x - 1)
 */

#include <stdio.h>

/* Function prototypes */
int count_bits_shift(unsigned x);
int count_bits_kernighan(unsigned x);

int main(void)
{
    unsigned value = 32;  /* 0010 0000 */
    char bin[] = "0010 0000";

    printf("Example value: %u (%s)\n", value,bin);
    printf("Bits set (shift method): %d\n", count_bits_shift(value));
    printf("Bits set (Kernighan method): %d\n", count_bits_kernighan(value));

    return 0;
}

/*
 * count_bits_shift:
 * Counts bits by shifting and testing the least significant bit.
 */
int count_bits_shift(unsigned x)
{
    int count = 0;

    while (x != 0)
    {
        if (x & 1)
            count++;

        x >>= 1;
    }

    return count;
}

/*
 * count_bits_kernighan:
 * Counts bits using Brian Kernighan's trick.
 */
int count_bits_kernighan(unsigned x)
{
    int count = 0;

    while (x != 0)
    {
        x &= (x - 1);
        count++;
    }

    return count;
}

