#include<stdio.h>
int adj[10][10],vis[10],q[100],front=0,rear=0,n;
void bfs(int s){
    vis[s]=1;q[rear++]=s;
    while(front<rear){
        int u=q[front++];printf("%d ",u);
        for(int i=0;i<n;i++) if(adj[u][i]&&!vis[i]){vis[i]=1;q[rear++]=i;}
    }
}
int main(){
    int e,u,v;
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++){scanf("%d%d",&u,&v);adj[u][v]=adj[v][u]=1;}
    printf("BFS: "); bfs(0); printf("\n");
    return 0;
}
