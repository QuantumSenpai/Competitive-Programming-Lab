#include<stdio.h>
#include<stdlib.h>
struct Node{int v;struct Node*next;};
struct Node*adj[10];
void addEdge(int u,int v){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->v=v;n->next=adj[u];adj[u]=n;
    n=(struct Node*)malloc(sizeof(struct Node));
    n->v=u;n->next=adj[v];adj[v]=n;
}
int main(){
    int n,e,u,v;
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++){scanf("%d%d",&u,&v);addEdge(u,v);}
    for(int i=0;i<n;i++){
        printf("%d:",i);
        struct Node*t=adj[i];
        while(t){printf("->%d",t->v);t=t->next;}
        printf("\n");
    }
    return 0;
}
