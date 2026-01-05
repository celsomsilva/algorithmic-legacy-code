/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/sOdoku.c
 *
 * Solves a 9x9 Sudoku puzzle using iterative backtracking.
 * Fixed (initial) values are preserved using an auxiliary matrix.
 *
 * This implementation avoids recursion and controls backtracking
 * manually using linear indexing and pointer arithmetic.
 */

#include <stdio.h>

/* Global Sudoku grid */
int grid[9][9];

/* Auxiliary matrix:
 * 1 -> fixed (original) value
 * 0 -> value to be solved
 */
int fixed[9][9];

/* Function prototypes */
int check_row(int row, int value);
int check_column(int col, int value);
int check_subgrid(int row, int col, int value);

int main(void)
{
    int i, j;
    int index, row, col;
    int value;
    int backtrack = 0;

    int *grid_ptr = &grid[0][0];
    int *fixed_ptr = &fixed[0][0];

    /* Read initial Sudoku values */
    puts("ENTER THE SUDOKU GRID (use 0 for empty cells):");

    for (i = 0; i < 9; i++)
    {
        printf("Row %d: ", i + 1);
        for (j = 0; j < 9; j++)
        {
            int c = getchar();
            if (c == '\n')
            {
                j--;
                continue;
            }

            grid[i][j] = c - '0';
            fixed[i][j] = (grid[i][j] != 0);
        }
    }

    /* Iterative backtracking over all 81 cells */
    for (index = 0; index < 81; index++)
    {
        row = index / 9;
        col = index % 9;

        /* Skip fixed cells */
        if (fixed_ptr[index])
            continue;

        /* Try values from current + 1 up to 9 */
        for (value = grid_ptr[index] + 1; value <= 9; value++)
        {
            if (check_row(row, value) &&
                check_column(col, value) &&
                check_subgrid(row, col, value))
            {
                grid_ptr[index] = value;
                backtrack = 0;
                break;
            }
        }

        /* No valid value found: backtrack */
        if (value > 9)
        {
            grid_ptr[index] = 0;
            backtrack = 1;
        }

        /* Move backwards if needed */
        if (backtrack)
        {
            do
            {
                index--;
            }
            while (index >= 0 && fixed_ptr[index]);

            if (index < 0)
                break;

            backtrack = 0;
            index--; /* reprocess previous cell */
        }
    }

    /* Print solved Sudoku */
    puts("\nSOLVED SUDOKU:");
    for (i = 0; i < 81; i++)
    {
        if (i % 9 == 0)
            printf("\n");

        printf("%d ", grid_ptr[i]);
    }

    printf("\n");
    return 0;
}

/*
 * check_row:
 * Verifies if value is not present in the given row.
 */
int check_row(int row, int value)
{
    int col;
    for (col = 0; col < 9; col++)
        if (grid[row][col] == value)
            return 0;

    return 1;
}

/*
 * check_column:
 * Verifies if value is not present in the given column.
 */
int check_column(int col, int value)
{
    int row;
    for (row = 0; row < 9; row++)
        if (grid[row][col] == value)
            return 0;

    return 1;
}

/*
 * check_subgrid:
 * Verifies if value is not present in the 3x3 subgrid.
 */
int check_subgrid(int row, int col, int value)
{
    int r, c;
    int start_row = row - (row % 3);
    int start_col = col - (col % 3);

    for (r = start_row; r < start_row + 3; r++)
        for (c = start_col; c < start_col + 3; c++)
            if (grid[r][c] == value)
                return 0;

    return 1;
}

