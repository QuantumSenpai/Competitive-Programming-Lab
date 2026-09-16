#include<stdio.h>
int main(){
    int n,count=0; printf("Number: "); scanf("%d",&n);
    while(n){count+=n&1;n>>=1;}
    printf("Set bits = %d\n",count);
    return 0;
}
