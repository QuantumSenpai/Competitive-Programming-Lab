#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*next;};
int main(){
    printf("Array: fixed size, fast access O(1), slow insert/delete O(n)\n");
    printf("Linked List: dynamic size, slow access O(n), fast insert/delete at ends O(1)\n");
    printf("For frequent insert/delete at beginning and end -> Linked List is better\n\n");
    struct Node*head=NULL,*tail=NULL,*t;
    for(int i=1;i<=5;i++){
        t=(struct Node*)malloc(sizeof(struct Node));
        t->data=i;t->next=NULL;
        if(!head){head=tail=t;}
        else{tail->next=t;tail=t;}
    }
    printf("Linked List: ");
    struct Node*cur=head;
    while(cur){printf("%d ",cur->data);cur=cur->next;}
    printf("\n");
    return 0;
}
