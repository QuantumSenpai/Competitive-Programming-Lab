#include<stdio.h>
int adj[10][10],vis[10],n;
void dfs(int u){
    vis[u]=1;printf("%d ",u);
    for(int i=0;i<n;i++) if(adj[u][i]&&!vis[i]) dfs(i);
}
int main(){
    int e,u,v;
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++){scanf("%d%d",&u,&v);adj[u][v]=adj[v][u]=1;}
    printf("DFS: "); dfs(0); printf("\n");
    return 0;
}
