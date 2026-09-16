#include<stdio.h>
int main(){
    int a[100],n,pos,val,ch;
    printf("Enter n: "); scanf("%d",&n);
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("1.Insert 2.Delete: "); scanf("%d",&ch);
    if(ch==1){
        printf("Position and value: "); scanf("%d%d",&pos,&val);
        for(int i=n;i>=pos;i--) a[i]=a[i-1];
        a[pos]=val; n++;
    } else {
        printf("Position: "); scanf("%d",&pos);
        for(int i=pos;i<n-1;i++) a[i]=a[i+1];
        n--;
    }
    for(int i=0;i<n;i++) printf("%d ",a[i]);
    printf("\n");
    return 0;
}
