#include<stdio.h>
#include<string.h>
#include<ctype.h>
int main(){
    int n; printf("N students: "); scanf("%d",&n);
    char names[n][50],search[50],lower1[50],lower2[50];
    for(int i=0;i<n;i++) scanf("%s",names[i]);
    printf("Name to search: "); scanf("%s",search);
    int found=-1;
    for(int i=0;i<n;i++) if(strcmp(names[i],search)==0){found=i;break;}
    if(found!=-1) printf("Case-sensitive: Found at %d\n",found);
    else printf("Case-sensitive: Not found\n");
    for(int i=0;i<(int)strlen(search);i++) lower1[i]=tolower(search[i]); lower1[strlen(search)]='\0';
    found=-1;
    for(int i=0;i<n;i++){
        for(int j=0;j<(int)strlen(names[i]);j++) lower2[j]=tolower(names[i][j]); lower2[strlen(names[i])]='\0';
        if(strcmp(lower2,lower1)==0){found=i;break;}
    }
    if(found!=-1) printf("Case-insensitive: Found at %d\n",found);
    else printf("Case-insensitive: Not found\n");
    return 0;
}
