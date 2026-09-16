#include<stdio.h>
int bSearch(int a[],int l,int r,int key){
    while(l<=r){
        int m=(l+r)/2;
        if(a[m]==key) return m;
        else if(a[m]<key) l=m+1;
        else r=m-1;
    }
    return -1;
}
int main(){
    int n,key;
    printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("Key: "); scanf("%d",&key);
    int res=bSearch(a,0,n-1,key);
    if(res!=-1) printf("Found at %d\n",res);
    else printf("Not found\n");
    return 0;
}
