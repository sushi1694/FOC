#include <stdio.h>  
#include <math.h>  
  
int main()  
{// Use the exp() function to compute the exponential value for e.  
    printf("The value for e raised to power 0 is    = %.6f \n", exp(0));  
    printf("The value for e raised to power 2 is      = %.6f \n", exp(2));  
    printf("The value for e raised to power 13 is     = %.6f \n", exp(13));  
    printf("The value for e raised to power 12.01 is     = %.6f \n", exp(12.01));  
    printf("The value for e raised to power -1 is   = %.6f \n", exp(-1));  
    printf("The value for e raised to power -3.73 is  = %.6f \n", exp(-3.73));  
// Using .6f to print the result will return the answer up to 6th decimal place.  
    return 0;  
}  
