/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/matrizponteiro.c
 *
 *
 * Reads lines from standard input, stores them using pointers,
 * sorts them lexicographically using quicksort, and prints them.
 *
 * Classic K&R-style implementation.
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAXLINES 5000   /* maximum number of lines */
#define MAXLEN   1000   /* maximum length of a line */

/* Function prototypes */
int read_lines(char *line_ptr[], int max_lines);
void write_lines(char *line_ptr[], int nlines);

void quick_sort(char *line_ptr[], int left, int right);
void swap(char *line_ptr[], int i, int j);

int read_line(char *line, int max_len);
char *allocate(int size);

/*
 * Main program
 */
int main(void)
{
    char *line_ptr[MAXLINES];
    int nlines;

    puts("Write text lines; Ctrl+D(Linux) or Ctrl+Z + Enter (Windows) to finish:");
    
    if ((nlines = read_lines(line_ptr, MAXLINES)) >= 0)
    {
        quick_sort(line_ptr, 0, nlines - 1);
        puts("\nLines sorted:");
        write_lines(line_ptr, nlines);
        return 0;
    }
    else
    {
        printf("Error: input too large\n");
        return 1;
    }
}

/*
 * read_lines:
 * Reads all input lines and stores pointers to them.
 */
int read_lines(char *line_ptr[], int max_lines)
{
    int len, nlines = 0;
    char line[MAXLEN];
    char *p;

    while ((len = read_line(line, MAXLEN)) > 0)
    {
        if (nlines >= max_lines || (p = allocate(len)) == NULL)
            return -1;

        line[len - 1] = '\0';   /* remove newline */
        strcpy(p, line);
        line_ptr[nlines++] = p;
    }

    return nlines;
}

/*
 * write_lines:
 * Prints stored lines.
 */
void write_lines(char *line_ptr[], int nlines)
{
    int i;

    for (i = 0; i < nlines; i++)
        printf("%s\n", line_ptr[i]);
}

/*
 * quick_sort:
 * Sorts lines using quicksort algorithm.
 */
void quick_sort(char *line_ptr[], int left, int right)
{
    int i, last;

    if (left >= right)
        return;

    swap(line_ptr, left, (left + right) / 2);
    last = left;

    for (i = left + 1; i <= right; i++)
        if (strcmp(line_ptr[i], line_ptr[left]) < 0)
            swap(line_ptr, ++last, i);

    swap(line_ptr, left, last);

    quick_sort(line_ptr, left, last - 1);
    quick_sort(line_ptr, last + 1, right);
}

/*
 * swap:
 * Swaps two pointers in the array.
 */
void swap(char *line_ptr[], int i, int j)
{
    char *temp;

    temp = line_ptr[i];
    line_ptr[i] = line_ptr[j];
    line_ptr[j] = temp;
}

/*
 * read_line:
 * Reads a single line from input.
 */
int read_line(char *line, int max_len)
{
    int c, i = 0;

    while (--max_len > 0 && (c = getchar()) != EOF && c != '\n')
        line[i++] = c;

    if (c == '\n')
        line[i++] = c;

    line[i] = '\0';
    return i;
}

/*
 * allocate:
 * Allocates memory for a line.
 */
char *allocate(int size)
{
    return (char *) malloc(size);
}

