#include<stdio.h>
int main(){
    int n; printf("N (total IDs from 1 to N): "); scanf("%d",&n);
    int xorAll=0,xorArr=0;
    for(int i=1;i<=n;i++) xorAll^=i;
    printf("Enter %d recorded IDs: ",n-1);
    for(int i=0;i<n-1;i++){int x;scanf("%d",&x);xorArr^=x;}
    printf("Missing ID = %d\n",xorAll^xorArr);
    return 0;
}
