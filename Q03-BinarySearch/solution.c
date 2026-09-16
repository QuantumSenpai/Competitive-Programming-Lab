#include<stdio.h>
int main(){
    int n,key,low,high,mid;
    printf("Enter n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("Key: "); scanf("%d",&key);
    low=0; high=n-1;
    while(low<=high){
        mid=(low+high)/2;
        if(a[mid]==key){printf("Found at index %d\n",mid);return 0;}
        else if(a[mid]<key) low=mid+1;
        else high=mid-1;
    }
    printf("Not found\n");
    return 0;
}
