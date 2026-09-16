#include<stdio.h>
int main(){
    int base,r,c,w,rows;
    printf("Base address, element size, rows, row index, col index: ");
    scanf("%d%d%d%d%d",&base,&w,&rows,&r,&c);
    int ea=base+((r*rows)+c)*w;
    printf("Effective Address = %d\n",ea);
    return 0;
}
