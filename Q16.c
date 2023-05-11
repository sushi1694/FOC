#include <stdio.h>

int main() 
{
    int n, i;
    float num, sum = 0.0, average;
    
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    for (i = 0; i < n; i++)
	 {
        printf("Enter number %d: ", i+1);
        scanf("%f", &num);
        sum += num;
     }
    average = sum / n;
    printf("Sum = %.2f\n", sum);
    printf("Average = %.2f\n", average);
    return 0;
}
