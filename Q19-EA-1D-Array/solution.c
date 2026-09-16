#include<stdio.h>
int main(){
    int base,w,i;
    printf("Base address, element size, index: ");
    scanf("%d%d%d",&base,&w,&i);
    printf("EA = %d\n",base+i*w);
    return 0;
}
