#include<stdio.h>
int main(){
    char a[100],b[50];
    printf("String 1: "); scanf("%s",a);
    printf("String 2: "); scanf("%s",b);
    int i=0,j=0;
    while(a[i]!='\0') i++;
    while(b[j]!='\0'){a[i++]=b[j++];}
    a[i]='\0';
    printf("Concatenated: %s\n",a);
    return 0;
}
