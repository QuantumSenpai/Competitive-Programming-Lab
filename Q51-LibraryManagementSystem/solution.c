#include<stdio.h>
#include<string.h>
struct Book{int id;char title[50];int available;};
struct Book lib[100];
int n=0;
void addBook(){printf("ID Title: ");scanf("%d %s",&lib[n].id,lib[n].title);lib[n].available=1;n++;printf("Added\n");}
void issueBook(){int id;printf("Book ID: ");scanf("%d",&id);for(int i=0;i<n;i++) if(lib[i].id==id){if(lib[i].available){lib[i].available=0;printf("Issued\n");}else printf("Not available\n");return;}printf("Not found\n");}
void returnBook(){int id;printf("Book ID: ");scanf("%d",&id);for(int i=0;i<n;i++) if(lib[i].id==id){lib[i].available=1;printf("Returned\n");return;}printf("Not found\n");}
void display(){for(int i=0;i<n;i++) printf("%d %s %s\n",lib[i].id,lib[i].title,lib[i].available?"Available":"Issued");}
int main(){
    int ch;
    do{printf("1.Add 2.Issue 3.Return 4.Display 0.Exit: ");scanf("%d",&ch);
    switch(ch){case 1:addBook();break;case 2:issueBook();break;case 3:returnBook();break;case 4:display();}
    }while(ch);
    return 0;
}
