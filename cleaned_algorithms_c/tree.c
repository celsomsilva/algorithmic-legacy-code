/*
 * ORIGINAL FILE: algorithmic-benchmark-suite-R/legacy_c/raw/arvore.c
 *
 * Word Frequency Counter using a Binary Search Tree
 *
 * Reads words from standard input and counts how many times
 * each word appears. Words are stored in a binary search tree
 * and printed in alphabetical order.
 *
 * Classic K&R-style implementation.
 */

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

#define MAXWORD 100
#define BUFSIZE 100

/* Tree node structure */
struct TreeNode
{
    char *word;                 /* pointer to stored word */
    int count;                  /* number of occurrences */
    struct TreeNode *left;      /* left child */
    struct TreeNode *right;     /* right child */
};

/* Function prototypes */
struct TreeNode *add_tree(struct TreeNode *root, char *word);
void print_tree(struct TreeNode *root);
int get_word(char *word, int limit);

struct TreeNode *allocate_node(void);
char *duplicate_string(char *s);

int getch(void);
void ungetch(int c);

/* Input buffer for getch/ungetch */
char buffer[BUFSIZE];
int buffer_pos = 0;

/*
 * Main program: reads words and builds the tree
 */
int main(void)
{
    struct TreeNode *root = NULL;
    char word[MAXWORD];

    while (get_word(word, MAXWORD) != EOF)
    {
        if (isalpha(word[0]))
            root = add_tree(root, word);
    }

    print_tree(root);
    return 0;
}

/*
 * add_tree: adds a word to the tree or increments its count
 */
struct TreeNode *add_tree(struct TreeNode *root, char *word)
{
    int comparison;

    if (root == NULL)
    {
        root = allocate_node();
        root->word = duplicate_string(word);
        root->count = 1;
        root->left = root->right = NULL;
    }
    else if ((comparison = strcmp(word, root->word)) == 0)
    {
        root->count++;
    }
    else if (comparison < 0)
    {
        root->left = add_tree(root->left, word);
    }
    else
    {
        root->right = add_tree(root->right, word);
    }

    return root;
}

/*
 * print_tree: prints the tree in-order (alphabetical)
 */
void print_tree(struct TreeNode *root)
{
    if (root != NULL)
    {
        print_tree(root->left);
        printf("%4d %s\n", root->count, root->word);
        print_tree(root->right);
    }
}

/*
 * get_word: reads the next word or character from input
 */
int get_word(char *word, int limit)
{
    int c;
    char *w = word;

    while (isspace(c = getch()))
        ;

    if (c != EOF)
        *w++ = c;

    if (!isalpha(c))
    {
        *w = '\0';
        return c;
    }

    for (; --limit > 0; w++)
    {
        if (!isalnum(*w = getch()))
        {
            ungetch(*w);
            break;
        }
    }

    *w = '\0';
    return word[0];
}

/*
 * allocate_node: allocates memory for a tree node
 */
struct TreeNode *allocate_node(void)
{
    return (struct TreeNode *) malloc(sizeof(struct TreeNode));
}

/*
 * duplicate_string: creates a copy of a string
 */
char *duplicate_string(char *s)
{
    char *p = (char *) malloc(strlen(s) + 1);

    if (p != NULL)
        strcpy(p, s);

    return p;
}

/*
 * getch: get a (possibly pushed back) character
 */
int getch(void)
{
    return (buffer_pos > 0) ? buffer[--buffer_pos] : getchar();
}

/*
 * ungetch: push character back onto input
 */
void ungetch(int c)
{
    if (buffer_pos >= BUFSIZE)
        printf("ungetch: too many characters\n");
    else
        buffer[buffer_pos++] = c;
}

