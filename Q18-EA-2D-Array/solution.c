#include<stdio.h>
int main(){
    int base,w,cols,r,c;
    printf("Base, size, cols, row, col: ");
    scanf("%d%d%d%d%d",&base,&w,&cols,&r,&c);
    int ea=base+((r*cols)+c)*w;
    printf("EA = %d\n",ea);
    return 0;
}
