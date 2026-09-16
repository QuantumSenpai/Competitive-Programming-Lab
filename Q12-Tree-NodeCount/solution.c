#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*left,*right;};
struct Node* newNode(int d){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=d;n->left=n->right=NULL;return n;
}
int count(struct Node*root){
    if(!root) return 0;
    return 1+count(root->left)+count(root->right);
}
int main(){
    struct Node*root=newNode(1);
    root->left=newNode(2);root->right=newNode(3);
    root->left->left=newNode(4);root->left->right=newNode(5);
    printf("Node count = %d\n",count(root));
    return 0;
}
