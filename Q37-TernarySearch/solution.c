#include<stdio.h>
int main(){
    int n,key,lo,hi,m1,m2;
    printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("Key: "); scanf("%d",&key);
    lo=0; hi=n-1;
    while(lo<=hi){
        m1=lo+(hi-lo)/3; m2=hi-(hi-lo)/3;
        if(a[m1]==key){printf("Found at %d\n",m1);return 0;}
        if(a[m2]==key){printf("Found at %d\n",m2);return 0;}
        if(key<a[m1]) hi=m1-1;
        else if(key>a[m2]) lo=m2+1;
        else{lo=m1+1;hi=m2-1;}
    }
    printf("Not found\n"); return 0;
}
