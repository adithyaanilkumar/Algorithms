//Function example

#include <stdio.h>

int sum(int a, int b); // function declaration or prototype
void main()
{
    int num1=10,num2=20,result;
    result=sum(num1,num2);  //function call
    printf("Sum of numbers is: %d",result);
    
}

int sum(int a, int b) // Function header
{
int s;
s=a+b;
return s;
}