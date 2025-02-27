#include <stdio.h>
#include <math.h>
int main()
{
    int x1,x2,x3,y1,y2,y3;

    printf("enter the 1st co-ordinate of your triangle.\n");
    scanf("%d %d",&x1,&y1);

    printf("enter the 2nd co-ordinate of your triangle.\n");
    scanf("%d %d",&x2,&y2);

    printf("enter the 3rd  co-ordinate of your triangle.\n");
    scanf("%d %d",&x3,&y3);

    float area= fabs((x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2))/2.0);
    printf("area is:%f\n",area);
}