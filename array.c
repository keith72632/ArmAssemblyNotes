#include <stdio.h>

int main()
{
    int array[] = {1, 2, 3, 4, 5};

    printf("First element: %d\n", *array);
    printf("Second element: %d\n", *(array + 1));
    printf("Third element: %d\n", *(array + 2));
    printf("Fourth element: %d\n", *(array + 3));
    

    return 0;
}
