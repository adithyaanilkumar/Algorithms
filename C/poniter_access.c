//pointer access -  example

#include<stdio.h>
void main()
{
    int x, y;
    int *ptr;
    x = 10;
    ptr = &x;
    y = *ptr;
    printf("Value of x is %d\n\n",x);
    printf("x is stored at addr %u\n", &x);
    printf("y is stored at addr %u\n", &y);
    printf("value of y is: %d\n",y);
    printf("pointer variable ptr contains the addr %u\n", ptr);
    printf("pointer variable ptr itself is stored at addr %u\n", &ptr);
    *ptr = 25;
    printf("\nNow x has been assigned a new value through pointer which is= %d\n",x);
}