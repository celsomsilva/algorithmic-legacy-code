/*
 * ORIGINAL FILE: buscabinaria.c
 * binary search program
 * using shift instead of division by 2
 */


#include <stdio.h>

int main()
{
    int i;
    int array[25];
    int start = 0, end = 24;
    int target = 41; // value to search
    int mid;

    // fill array with odd numbers
    printf("[ ");
    for (i = 0; i < 25; i++){
        int element = i * 2 + 1;
        array[i] = element;
        if (i == 24){
	   printf("%d]",element);
	   break;
	}
        printf("%d, ", element);
    }
    // binary search
    while (start <= end)
    {
        mid = (start + end) >> 1; // shift instead of /2

        if (array[mid] == target)
        {
            printf("\nfound %d at position %d\n", target, mid);
            return 0;
        }

        if (array[mid] < target)
            start = mid + 1;
        else
            end = mid - 1;
    }

    printf("did not find %d\n", target);
    return 0;
}
