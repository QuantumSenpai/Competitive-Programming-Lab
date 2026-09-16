#include<stdio.h>
int main(){
    int base,w,rows,cols,r,c;
    printf("Base, size, rows, cols, row, col: ");
    scanf("%d%d%d%d%d%d",&base,&w,&rows,&cols,&r,&c);
    int ea=base+((c*rows)+r)*w;
    printf("Effective Address (Col Major) = %d\n",ea);
    return 0;
}
