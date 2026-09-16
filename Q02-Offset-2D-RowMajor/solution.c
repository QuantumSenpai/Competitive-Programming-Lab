#include<stdio.h>
int main(){
    int r,c,cols,w;
    printf("Cols, element size, row index, col index: ");
    scanf("%d%d%d%d",&cols,&w,&r,&c);
    int offset=((r*cols)+c)*w;
    printf("Offset = %d\n",offset);
    return 0;
}
