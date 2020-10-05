#include <stdio.h>
void main() {
    int n, originalNum, rem, result = 0;
    printf("Enter a three-digit integer: ");
    scanf("%d", &n);
    originalNum = n;

    while (originalNum != 0) {
       // remainder contains the last digit
        rem = originalNum % 10;
        
       result += rem * rem * rem;
        
       // removing last digit from the orignal number
       originalNum /= 10;
    }

    if (result == n)
        printf("%d is an Armstrong number.", n);
    else
        printf("%d is not an Armstrong number.", n);

}