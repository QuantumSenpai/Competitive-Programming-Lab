#include<stdio.h>
int main(){
    int n; printf("N seminars: "); scanf("%d",&n);
    int s[n],e[n];
    for(int i=0;i<n;i++){printf("Start End of seminar %d: ",i+1);scanf("%d%d",&s[i],&e[i]);}
    for(int i=0;i<n-1;i++) for(int j=0;j<n-i-1;j++) if(e[j]>e[j+1]){int t=e[j];e[j]=e[j+1];e[j+1]=t;t=s[j];s[j]=s[j+1];s[j+1]=t;}
    int count=1,last=0;
    printf("Selected: Seminar 1 (end=%d)\n",e[0]);
    for(int i=1;i<n;i++) if(s[i]>=e[last]){printf("Selected: start=%d end=%d\n",s[i],e[i]);count++;last=i;}
    printf("Max seminars: %d\n",count);
    return 0;
}
