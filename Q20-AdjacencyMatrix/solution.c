#include<stdio.h>
int main(){
    int n,a[10][10]={0},u,v,e;
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++){scanf("%d%d",&u,&v);a[u][v]=a[v][u]=1;}
    for(int i=0;i<n;i++){for(int j=0;j<n;j++) printf("%d ",a[i][j]);printf("\n");}
    return 0;
}
