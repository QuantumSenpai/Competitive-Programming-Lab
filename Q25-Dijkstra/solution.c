#include<stdio.h>
#define INF 99999
int main(){
    int n,e,u,v,w,src,adj[10][10]={0},dist[10],vis[10]={0};
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++){scanf("%d%d%d",&u,&v,&w);adj[u][v]=adj[v][u]=w;}
    printf("Source: "); scanf("%d",&src);
    for(int i=0;i<n;i++) dist[i]=INF;
    dist[src]=0;
    for(int i=0;i<n;i++){
        int mn=INF,mu=-1;
        for(int j=0;j<n;j++) if(!vis[j]&&dist[j]<mn){mn=dist[j];mu=j;}
        if(mu==-1) break; vis[mu]=1;
        for(int j=0;j<n;j++) if(adj[mu][j]&&!vis[j]&&dist[mu]+adj[mu][j]<dist[j]) dist[j]=dist[mu]+adj[mu][j];
    }
    for(int i=0;i<n;i++) printf("%d->%d: %d\n",src,i,dist[i]);
    return 0;
}
