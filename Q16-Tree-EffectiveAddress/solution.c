#include<stdio.h>
int main(){
    int base,w,level,pos;
    printf("Base, size, level(0-based), position(0-based): ");
    scanf("%d%d%d%d",&base,&w,&level,&pos);
    int index=1;
    for(int i=0;i<level;i++) index*=2;
    index+=pos;
    printf("EA = %d\n",base+(index-1)*w);
    return 0;
}
