#include<stdio.h>
int main(){
    int n; printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    for(int i=0;i<n-1;i++){int m=i;for(int j=i+1;j<n;j++) if(a[j]<a[m]) m=j;int t=a[i];a[i]=a[m];a[m]=t;}
    for(int i=0;i<n;i++) printf("%d ",a[i]); printf("\n");
    return 0;
}
