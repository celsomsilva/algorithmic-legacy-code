/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/strindex.c
 *
 * Searches for the first occurrence of substring t in string s.
 * Returns the starting index, or -1 if the substring is not found.
 *
 * Classic K&R-style implementation.
 */

#include <stdio.h>

/* Function prototype */
int strindex(char s[], char t[]);

int main(void)
{
    char text[] = "The mother is so happy.";
    char pattern[] = " s";

    printf("SUBSTRING FOUND AT POSITION: %d\n",
           strindex(text, pattern));

    return 0;
}

/*
 * strindex:
 * Returns the index of the first occurrence of t in s,
 * or -1 if t is not found.
 */
int strindex(char s[], char t[])
{
    int i, j, k;

    for (i = 0; s[i] != '\0'; i++)
    {
        for (j = i, k = 0;
             t[k] != '\0' && s[j] == t[k];
             j++, k++)
            ;

        if (k > 0 && t[k] == '\0')
            return i;
    }

    return -1; 
}

