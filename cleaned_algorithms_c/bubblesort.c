/*
 * ORIGINAL FILE: bublesort.c
 *
 * Simple bubble sort implementation.
 * Sorts an integer array in ascending order.
 *
 * Educational version (no early exit optimization).
 */

#include <stdio.h>

/* Function prototypes */
void bubble_sort(int array[], int size);
void print_array(int array[], int size);

int main(void)
{
    int values[] = {3, 0, 5, 1, 8, 9, 2, 4};
    int size = 8;

    printf("ARRAY: [ ");
    print_array(values, size);
    printf("]\n");

    bubble_sort(values, size);

    printf("SORTED ARRAY: [ ");
    print_array(values, size);
    printf("]\n");

    return 0;
}

/*
 * bubble_sort:
 * Performs an in-place bubble sort on the array.
 */
void bubble_sort(int array[], int size)
{
    int i, j, temp;

    for (j = 0; j < size - 1; j++)
    {
        for (i = 0; i < size - 1; i++)
        {
            if (array[i] > array[i + 1])
            {
                temp = array[i];
                array[i] = array[i + 1];
                array[i + 1] = temp;
            }
        }
    }
}

/*
 * print_array:
 * Prints the elements of the array.
 */
void print_array(int array[], int size)
{
    int i;

    for (i = 0; i < size; i++)
        printf("%d ", array[i]);
}

