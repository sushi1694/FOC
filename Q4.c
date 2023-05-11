#include <stdio.h>
int main()
{
	int i,n;
	int n1=0,n2=1,nexterm;
	nexterm=n1+n2;
	
	printf("Enter the number of terms:");
	scanf("%d",&n);
	
	printf("Fibonaci Series %d, %d,  ",n1,n2);
	
	for(i=3;i<=n;i++)
	{
	printf("%d, ",nexterm);
	n1=n2;
	n2=nexterm;
	nexterm=n1+n2;
    }
    return 0;
	
}
