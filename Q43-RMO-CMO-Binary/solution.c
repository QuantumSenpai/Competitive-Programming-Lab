#include<stdio.h>
void toBin(int n){if(n==0){printf("0");return;}int b[32],i=0;while(n){b[i++]=n%2;n/=2;}for(int j=i-1;j>=0;j--) printf("%d",b[j]);}
int main(){
    int base,w,rows,cols,r,c;
    printf("Base, size, rows, cols, row, col: ");
    scanf("%d%d%d%d%d%d",&base,&w,&rows,&cols,&r,&c);
    int rmo=base+((r*cols)+c)*w;
    int cmo=base+((c*rows)+r)*w;
    printf("RMO Decimal: %d Binary: ",rmo); toBin(rmo); printf("\n");
    printf("CMO Decimal: %d Binary: ",cmo); toBin(cmo); printf("\n");
    return 0;
}
