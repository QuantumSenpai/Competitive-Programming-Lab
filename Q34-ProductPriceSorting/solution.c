#include<stdio.h>
int main(){
    int n; printf("N products: "); 
    scanf("%d",&n);
    float a[n];
    for(int i=0;i<n;i++) scanf("%f",&a[i]);
    for(int i=0;i<n-1;i++) for(int j=0;j<n-i-1;j++) if(a[j]>a[j+1]){float t=a[j];a[j]=a[j+1];a[j+1]=t;}
    for(int i=0;i<n;i++) printf("%.2f ",a[i]); printf("\n");
    return 0;
}
