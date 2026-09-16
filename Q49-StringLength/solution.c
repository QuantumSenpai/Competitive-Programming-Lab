#include<stdio.h>
int main(){
    char s[100]; int len=0;
    printf("String: "); scanf("%s",s);
    while(s[len]!='\0') len++;
    printf("Length = %d\n",len);
    return 0;
}
