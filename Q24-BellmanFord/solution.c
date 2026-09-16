#include<stdio.h>
#define INF 99999
int main(){
    int n,e,src;
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    int eu[e],ev[e],ew[e];
    for(int i=0;i<e;i++) scanf("%d%d%d",&eu[i],&ev[i],&ew[i]);
    printf("Source: "); scanf("%d",&src);
    int dist[n];
    for(int i=0;i<n;i++) dist[i]=INF;
    dist[src]=0;
    for(int i=0;i<n-1;i++)
        for(int j=0;j<e;j++)
            if(dist[eu[j]]!=INF&&dist[eu[j]]+ew[j]<dist[ev[j]])
                dist[ev[j]]=dist[eu[j]]+ew[j];
    for(int i=0;i<n;i++) printf("%d->%d: %d\n",src,i,dist[i]);
    return 0;
}
