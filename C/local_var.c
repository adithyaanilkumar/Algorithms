// Local variables example
#include<stdio.h>

void function1(void);
void function2(void);
void main( )
{
    int m = 1000; // m local to main
    function2();
    printf("%d\n",m); /* Third output */
}
void function1(void)
{
    int m = 10; // this m is local to function1
    printf("%d\n",m); /* First output */
}
void function2(void)
{
    int m = 100; // this m is local to function2
    function1();
    printf("%d\n",m); /* Second output */
}