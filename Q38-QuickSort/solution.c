#include<stdio.h>
int partition(int a[],int l,int r){int p=a[r],i=l-1,j,t;for(j=l;j<r;j++) if(a[j]<=p){i++;t=a[i];a[i]=a[j];a[j]=t;}t=a[i+1];a[i+1]=a[r];a[r]=t;return i+1;}
void quickSort(int a[],int l,int r){if(l<r){int pi=partition(a,l,r);quickSort(a,l,pi-1);quickSort(a,pi+1,r);}}
int main(){
    int n; printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    quickSort(a,0,n-1);
    for(int i=0;i<n;i++) printf("%d ",a[i]); printf("\n");
    return 0;
}
