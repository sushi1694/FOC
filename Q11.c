#include <stdio.h>
int main()
{
	int n,sum=0,i;
	printf("Enter no of terms: ");
	scanf("%d",&n);
	
	for(i=1;i<=n;i++)
	{
		sum+=i*i*i;
	}
	printf("Sum: %d\n",sum);
	
	return 0;
}

