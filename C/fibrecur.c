#include<stdio.h>
int fib(int n)
{
if(n <= 1)
return n;
else
return(fib(n-1) + fib(n-2));
}


void main()
{
int n,i;
printf("Enter Total terms:  ");
scanf("%d", &n);
printf("Fibonacci series of %d terms are: \n",n);
for(i = 0; i < n; i++)
{
printf("%d ", fib(i));
}
}
