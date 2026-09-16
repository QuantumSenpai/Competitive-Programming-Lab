#include<stdio.h>
void bubble(float a[],int n){for(int i=0;i<n-1;i++) for(int j=0;j<n-i-1;j++) if(a[j]>a[j+1]){float t=a[j];a[j]=a[j+1];a[j+1]=t;}}
void selection(float a[],int n){for(int i=0;i<n-1;i++){int m=i;for(int j=i+1;j<n;j++) if(a[j]<a[m]) m=j;float t=a[i];a[i]=a[m];a[m]=t;}}
void insertion(float a[],int n){for(int i=1;i<n;i++){float k=a[i];int j=i-1;while(j>=0&&a[j]>k){a[j+1]=a[j];j--;}a[j+1]=k;}}
int main(){
    int n; printf("N: "); scanf("%d",&n);
    float a[n],b[n],c[n];
    for(int i=0;i<n;i++){scanf("%f",&a[i]);b[i]=c[i]=a[i];}
    bubble(a,n); printf("Bubble: "); for(int i=0;i<n;i++) printf("%.2f ",a[i]); printf("\n");
    selection(b,n); printf("Selection: "); for(int i=0;i<n;i++) printf("%.2f ",b[i]); printf("\n");
    insertion(c,n); printf("Insertion: "); for(int i=0;i<n;i++) printf("%.2f ",c[i]); printf("\n");
    return 0;
}
