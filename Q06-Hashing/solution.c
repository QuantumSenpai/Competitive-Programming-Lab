#include<stdio.h>
#define SIZE 10
int table[SIZE];
int main(){
    for(int i=0;i<SIZE;i++) table[i]=-1;
    int n,key;
    printf("Number of elements: "); scanf("%d",&n);
    for(int i=0;i<n;i++){
        scanf("%d",&key);
        table[key%SIZE]=key;
    }
    for(int i=0;i<SIZE;i++) printf("[%d]: %d\n",i,table[i]);
    return 0;
}
