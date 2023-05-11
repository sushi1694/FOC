#include <stdio.h>

int main() 
{
    int n, digit, sum = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &n);
    while (n > 0)
	 {
        digit = n % 10;                                 
        sum += digit;                               
        n /= 10;         
    }
    
    printf("The sum of digits of %d is %d\n", n, sum);
    
    return 0;
}
