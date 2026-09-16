#include<stdio.h>
int main(){
    int n; printf("N hours: "); scanf("%d",&n);
    int a[n]; float sum=0;
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    int mx=a[0],mn=a[0],peakHour=0;
    for(int i=0;i<n;i++){
        sum+=a[i];
        if(a[i]>mx){mx=a[i];peakHour=i;}
        if(a[i]<mn) mn=a[i];
    }
    float avg=sum/n; int above=0;
    for(int i=0;i<n;i++) if(a[i]>avg) above++;
    printf("Max: %d at hour %d\nMin: %d\nPeak hour: %d\nAbove avg: %d\n",mx,peakHour,mn,peakHour,above);
    return 0;
}
