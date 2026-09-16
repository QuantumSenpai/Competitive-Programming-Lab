#include<stdio.h>
int main(){
    int n; float threshold,sum=0,minA,pos;
    printf("N students, threshold: "); scanf("%d%f",&n,&threshold);
    float a[n];
    for(int i=0;i<n;i++) scanf("%f",&a[i]);
    int count=0; minA=a[0]; pos=0;
    for(int i=0;i<n;i++){
        sum+=a[i];
        if(a[i]<threshold) count++;
        if(a[i]<minA){minA=a[i];pos=i;}
    }
    printf("Below threshold: %d\n",count);
    printf("Lowest: %.2f at position %d\n",minA,(int)pos);
    printf("Average: %.2f\n",sum/n);
    return 0;
}
