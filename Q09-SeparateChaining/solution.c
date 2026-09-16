#include<stdio.h>
#include<stdlib.h>
#define SIZE 7
struct Node{int data;struct Node*next;};
struct Node*table[SIZE];
void insert(int key){
    int pos=key%SIZE;
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=key; n->next=table[pos]; table[pos]=n;
}
void display(){
    for(int i=0;i<SIZE;i++){
        printf("[%d]:",i);
        struct Node*t=table[i];
        while(t){printf("->%d",t->data);t=t->next;}
        printf("\n");
    }
}
int main(){
    int n,key;
    printf("n: "); scanf("%d",&n);
    for(int i=0;i<n;i++){scanf("%d",&key);insert(key);}
    display();
    return 0;
}
