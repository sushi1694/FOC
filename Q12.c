#include <stdio.h>
int main()
{
	int n,sum=1,i;
	printf("Enter no of terms: ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		sum*=i;
	}
	printf("Factorial: %d\n",sum);
	
	return 0;
}

