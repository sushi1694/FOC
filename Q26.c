#include <stdio.h>
#include <conio.h>

//Largest Number - FScOnline.info

int main()
{
  int i,num,n,large=0;

  printf("How many numbers: ");
  scanf("%d",&n);
  
  for(i=0; i<n; i++)
  {
    printf("\nEnter number %d: ",i+1);
    scanf("%d",&num);
    if(num>large)
    large=num;
  }

  printf("\n\nThe Largest Number is %d",large);
  
  getch();
  return 0;
}
