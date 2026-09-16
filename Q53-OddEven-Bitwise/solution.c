#include<stdio.h>
int main(){
    int n; printf("Number: "); scanf("%d",&n);
    printf(n&1?"Odd\n":"Even\n");
    return 0;
}
