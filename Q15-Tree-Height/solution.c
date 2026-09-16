#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*left,*right;};
struct Node* newNode(int d){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=d;n->left=n->right=NULL;return n;
}
int height(struct Node*root){
    if(!root) return 0;
    int l=height(root->left),r=height(root->right);
    return 1+(l>r?l:r);
}
int main(){
    struct Node*root=newNode(1);
    root->left=newNode(2);root->right=newNode(3);
    root->left->left=newNode(4);
    printf("Height = %d\n",height(root));
    return 0;
}
