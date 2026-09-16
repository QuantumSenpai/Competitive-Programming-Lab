#include<stdio.h>
#include<string.h>
int main(){
    char a[100],b[100];
    printf("String 1: "); scanf("%s",a);
    printf("String 2: "); scanf("%s",b);
    int r=strcmp(a,b);
    if(r==0) printf("Equal\n");
    else if(r<0) printf("%s < %s\n",a,b);
    else printf("%s > %s\n",a,b);
    return 0;
}
