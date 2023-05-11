#include <stdio.h>

int main() 
{
    int n, digit;
    printf("Enter a positive integer: ");
    scanf("%d", &n);
    printf("The digits of %d are: ", n);
    while (n > 0) 
	{
        digit = n % 10; 
        printf("%d ", digit);
        n /= 10;  
    }
    return 0;
}
