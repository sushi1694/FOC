#include <stdio.h>
int main()
{
	int n,i,totalsum,sum1=0,sum2=0;
	printf("Enter a no. = ");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		if(i%2==0)
		{
			sum1+=i;
		}
	}
	for(i=1;i<=n;i++)
	{
		if(i%2!=0)
		{
			sum2+=i;
		}
	}
	totalsum=sum2-sum1;
	printf("sum is= %d",totalsum);
	return 0;
}

