#include<stdio.h>
#include<string.h>
#include<ctype.h>
int main(){
    char code[20]; printf("Book code: "); scanf("%s",code);
    int valid=1;
    if(strlen(code)!=11) valid=0;
    else{
        for(int i=0;i<3;i++) if(!isupper(code[i])) valid=0;
        if(code[3]!='-') valid=0;
        for(int i=4;i<8;i++) if(!isdigit(code[i])) valid=0;
        if(code[8]!='-') valid=0;
        for(int i=9;i<11;i++) if(!isdigit(code[i])) valid=0;
    }
    printf(valid?"Valid\n":"Invalid\n");
    return 0;
}
