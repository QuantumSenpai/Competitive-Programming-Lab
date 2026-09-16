#include<stdio.h>
#define SIZE 10
int table[SIZE];
int main(){
    for(int i=0;i<SIZE;i++) table[i]=-1;
    int n,key,pos;
    printf("Number of elements: "); scanf("%d",&n);
    for(int i=0;i<n;i++){
        scanf("%d",&key);
        pos=key%SIZE;
        while(table[pos]!=-1) pos=(pos+1)%SIZE;
        table[pos]=key;
    }
    for(int i=0;i<SIZE;i++) printf("[%d]: %d\n",i,table[i]);
    return 0;
}
