#include<stdio.h>
void toBinary(int n){
    if(n==0){printf("0");return;}
    int b[32],i=0;
    while(n>0){b[i++]=n%2;n/=2;}
    for(int j=i-1;j>=0;j--) printf("%d",b[j]);
}
int main(){
    int base,w,rows,r,c;
    printf("Base, size, rows, row, col: ");
    scanf("%d%d%d%d%d",&base,&w,&rows,&r,&c);
    int ea=base+((r*rows)+c)*w;
    printf("Decimal EA = %d\nBinary EA = ",ea); toBinary(ea); printf("\n");
    return 0;
}
