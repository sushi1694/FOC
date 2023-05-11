#include <stdio.h>

int main() {
    int n, reversed = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &n);
    while (n > 0) 
	{
        reversed = reversed * 10 + (n % 10);  
        n /= 10;                              
    }
    printf("The reversed number is: %d\n", reversed);
    return 0;
}
