#include<stdio.h>
int main(){
    int base,w,rows,r,c;
    printf("Base, size, rows, row, col: ");
    scanf("%d%d%d%d%d",&base,&w,&rows,&r,&c);
    int ea=base+((c*rows)+r)*w;
    printf("EA (Column Major) = %d\n",ea);
    return 0;
}
