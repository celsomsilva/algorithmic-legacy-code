/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/itoa.c
 *
 * Converts an integer to a string representation.
 * Digits are generated in reverse order and then
 * the string is reversed in place.
 *
 * Classic K&R-style implementation.
 */

#include <stdio.h>
#include <string.h>

#define MAXSTR 32

/* Function prototypes */
void itoa(int n, char s[]);
void reverse_string(char s[]);

int main(void)
{
    char buffer[MAXSTR];
    int number = 1245;

    itoa(number, buffer);

    printf("NUMBER: %d (integer), CONVERTED NUMBER: %s (string)\n", number,buffer);

    return 0;
}

/*
 * itoa:
 * Converts integer n to characters in string s.
 */
void itoa(int n, char s[])
{
    int i = 0;
    int sign;

    /* Record sign */
    if ((sign = n) < 0)
        n = -n;

    /* Generate digits in reverse order */
    do
    {
        s[i++] = (n % 10) + '0';
    }
    while ((n /= 10) > 0);

    if (sign < 0)
        s[i++] = '-';

    s[i] = '\0';

    /* Reverse the string to get correct order */
    reverse_string(s);
}

/*
 * reverse_string:
 * Reverses a string in place.
 */
void reverse_string(char s[])
{
    int i, j;
    char temp;

    for (i = 0, j = strlen(s) - 1; i < j; i++, j--)
    {
        temp = s[i];
        s[i] = s[j];
        s[j] = temp;
    }
}

