#include<stdio.h>
#define INF 99999
int main(){
    int n,adj[10][10],key[10],inMST[10]={0},parent[10];
    printf("Vertices: "); scanf("%d",&n);
    for(int i=0;i<n;i++) for(int j=0;j<n;j++) scanf("%d",&adj[i][j]);
    for(int i=0;i<n;i++){key[i]=INF;parent[i]=-1;}
    key[0]=0;
    for(int i=0;i<n;i++){
        int mn=INF,u=-1;
        for(int v=0;v<n;v++) if(!inMST[v]&&key[v]<mn){mn=key[v];u=v;}
        inMST[u]=1;
        for(int v=0;v<n;v++) if(adj[u][v]&&!inMST[v]&&adj[u][v]<key[v]){key[v]=adj[u][v];parent[v]=u;}
    }
    int total=0;
    for(int i=1;i<n;i++){printf("%d-%d: %d\n",parent[i],i,adj[parent[i]][i]);total+=adj[parent[i]][i];}
    printf("Total MST cost: %d\n",total);
    return 0;
}
