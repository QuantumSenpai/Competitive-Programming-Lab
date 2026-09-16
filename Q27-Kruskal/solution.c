#include<stdio.h>
int parent[10];
int find(int x){return parent[x]==x?x:find(parent[x]);}
void unite(int x,int y){parent[find(x)]=find(y);}
int main(){
    int n,e,u[50],v[50],w[50];
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++) scanf("%d%d%d",&u[i],&v[i],&w[i]);
    for(int i=0;i<n;i++) parent[i]=i;
    for(int i=0;i<e-1;i++) for(int j=0;j<e-i-1;j++) if(w[j]>w[j+1]){int t=w[j];w[j]=w[j+1];w[j+1]=t;t=u[j];u[j]=u[j+1];u[j+1]=t;t=v[j];v[j]=v[j+1];v[j+1]=t;}
    int total=0;
    for(int i=0;i<e;i++) if(find(u[i])!=find(v[i])){unite(u[i],v[i]);printf("%d-%d: %d\n",u[i],v[i],w[i]);total+=w[i];}
    printf("Total MST cost: %d\n",total);
    return 0;
}
