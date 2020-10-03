//Linear Search alogorithm without recursion, in C language.

#include <stdio.h>
void main()
{
    int a[10], n, x, flag = 0, index = 0;
    printf("%s", "Enter the number of elements in the array\n");
    scanf("%d", &n);
    printf("Enter the elements of the array\n");

    for (int i = 0; i < n; ++i)
    {
        scanf("%d", &a[i]);
    }

    printf("%s", "Enter the element you want to search for\n");
    scanf("%d", &x);

    for (int j = 0; j < n; ++j)
    {
        if (a[j] == x)
        {
            flag = 1;
            index = j;
            break;
        }
    }

    if (flag == 1)
    {
        printf("Element found at\t");
        printf("%d\n", index);
    }

    else
    {
        printf("Element not found\n");
    }
}