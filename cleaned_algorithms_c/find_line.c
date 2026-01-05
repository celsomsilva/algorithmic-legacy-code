/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/acha2.c
 *
 * Simple text search utility (grep-like).
 * Prints lines from standard input that match a given pattern.
 *
 * Options:
 *   -x  : print lines that do NOT match the pattern (invert match)
 *   -n  : print line numbers before matching lines
 *
 * Classic K&R-style example using pointers and standard I/O.
 */

#include <stdio.h>
#include <string.h>

#define MAXLINE 1000

/* Function prototypes */
int read_line(char *line, int max);

/*
 * Main program:
 * Parses command-line options and searches input lines.
 */
int main(int argc, char *argv[])
{
    char line[MAXLINE];
    long line_number = 0;
    int c;
    int except = 0;      /* invert match flag */
    int show_number = 0;
    int matches = 0;

    /* Process command-line options */
    while (--argc > 0 && (*++argv)[0] == '-')
    {
        while ((c = *++argv[0]) != '\0')
        {
            switch (c)
            {
                case 'x':
                    except = 1;
                    break;

                case 'n':
                    show_number = 1;
                    break;

                default:
                    printf("find_line: illegal option %c\n", c);
                    argc = 0;
                    matches = -1;
                    break;
            }
        }
    }

    if (argc != 1)
    {
        puts("Usage: find_line -x -n pattern");
	puts("  -x : print lines that do NOT match the pattern (invert match)");
	puts("  -n : print line numbers before matching lines");
	puts("  End with Ctrl+D (Linux/macOS) or Ctrl+Z + Enter (Windows)");

    }
    else
    {
        /* Read input lines and search for pattern */
        while (read_line(line, MAXLINE) > 0)
        {
            line_number++;

            if ((strstr(line, *argv) != NULL) != except)
            {
                if (show_number)
                    printf("%ld:", line_number);

                printf("%s", line);
                matches++;
            }
        }
    }

    return matches;
}

/*
 * read_line:
 * Reads a line from standard input into 'line'.
 * Returns the line length.
 */
int read_line(char *line, int max)
{
    int c;
    int length = 0;

    while (--max > 0 && (c = getchar()) != EOF && c != '\n')
    {
        *line++ = c;
        length++;
    }

    if (c == '\n')
    {
        *line++ = c;
        length++;
    }

    *line = '\0';
    return length;
}

