$solutions = @{}

$solutions["Q01-EA-2D-RowMajor"] = @'
#include<stdio.h>
int main(){
    int base,r,c,w,rows;
    printf("Base address, element size, rows, row index, col index: ");
    scanf("%d%d%d%d%d",&base,&w,&rows,&r,&c);
    int ea=base+((r*rows)+c)*w;
    printf("Effective Address = %d\n",ea);
    return 0;
}
'@

$solutions["Q02-Offset-2D-RowMajor"] = @'
#include<stdio.h>
int main(){
    int r,c,cols,w;
    printf("Cols, element size, row index, col index: ");
    scanf("%d%d%d%d",&cols,&w,&r,&c);
    int offset=((r*cols)+c)*w;
    printf("Offset = %d\n",offset);
    return 0;
}
'@

$solutions["Q03-BinarySearch"] = @'
#include<stdio.h>
int main(){
    int n,key,low,high,mid;
    printf("Enter n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("Key: "); scanf("%d",&key);
    low=0; high=n-1;
    while(low<=high){
        mid=(low+high)/2;
        if(a[mid]==key){printf("Found at index %d\n",mid);return 0;}
        else if(a[mid]<key) low=mid+1;
        else high=mid-1;
    }
    printf("Not found\n");
    return 0;
}
'@

$solutions["Q04-EA-2D-RowMajor-DecBin"] = @'
#include<stdio.h>
void toBinary(int n){
    if(n==0){printf("0");return;}
    int b[32],i=0;
    while(n>0){b[i++]=n%2;n/=2;}
    for(int j=i-1;j>=0;j--) printf("%d",b[j]);
}
int main(){
    int base,w,rows,r,c;
    printf("Base, size, rows, row, col: ");
    scanf("%d%d%d%d%d",&base,&w,&rows,&r,&c);
    int ea=base+((r*rows)+c)*w;
    printf("Decimal EA = %d\nBinary EA = ",ea); toBinary(ea); printf("\n");
    return 0;
}
'@

$solutions["Q05-Array-InsertDelete"] = @'
#include<stdio.h>
int main(){
    int a[100],n,pos,val,ch;
    printf("Enter n: "); scanf("%d",&n);
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("1.Insert 2.Delete: "); scanf("%d",&ch);
    if(ch==1){
        printf("Position and value: "); scanf("%d%d",&pos,&val);
        for(int i=n;i>=pos;i--) a[i]=a[i-1];
        a[pos]=val; n++;
    } else {
        printf("Position: "); scanf("%d",&pos);
        for(int i=pos;i<n-1;i++) a[i]=a[i+1];
        n--;
    }
    for(int i=0;i<n;i++) printf("%d ",a[i]);
    printf("\n");
    return 0;
}
'@

$solutions["Q06-Hashing"] = @'
#include<stdio.h>
#define SIZE 10
int table[SIZE];
int main(){
    for(int i=0;i<SIZE;i++) table[i]=-1;
    int n,key;
    printf("Number of elements: "); scanf("%d",&n);
    for(int i=0;i<n;i++){
        scanf("%d",&key);
        table[key%SIZE]=key;
    }
    for(int i=0;i<SIZE;i++) printf("[%d]: %d\n",i,table[i]);
    return 0;
}
'@

$solutions["Q07-LinearProbing"] = @'
#include<stdio.h>
#define SIZE 10
int table[SIZE];
int main(){
    for(int i=0;i<SIZE;i++) table[i]=-1;
    int n,key,pos;
    printf("Number of elements: "); scanf("%d",&n);
    for(int i=0;i<n;i++){
        scanf("%d",&key);
        pos=key%SIZE;
        while(table[pos]!=-1) pos=(pos+1)%SIZE;
        table[pos]=key;
    }
    for(int i=0;i<SIZE;i++) printf("[%d]: %d\n",i,table[i]);
    return 0;
}
'@

$solutions["Q08-QuadraticProbing"] = @'
#include<stdio.h>
#define SIZE 11
int table[SIZE];
int main(){
    for(int i=0;i<SIZE;i++) table[i]=-1;
    int n,key,pos,j;
    printf("Number of elements: "); scanf("%d",&n);
    for(int i=0;i<n;i++){
        scanf("%d",&key);
        pos=key%SIZE; j=1;
        while(table[pos]!=-1){pos=(key%SIZE+j*j)%SIZE;j++;}
        table[pos]=key;
    }
    for(int i=0;i<SIZE;i++) printf("[%d]: %d\n",i,table[i]);
    return 0;
}
'@

$solutions["Q09-SeparateChaining"] = @'
#include<stdio.h>
#include<stdlib.h>
#define SIZE 7
struct Node{int data;struct Node*next;};
struct Node*table[SIZE];
void insert(int key){
    int pos=key%SIZE;
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=key; n->next=table[pos]; table[pos]=n;
}
void display(){
    for(int i=0;i<SIZE;i++){
        printf("[%d]:",i);
        struct Node*t=table[i];
        while(t){printf("->%d",t->data);t=t->next;}
        printf("\n");
    }
}
int main(){
    int n,key;
    printf("n: "); scanf("%d",&n);
    for(int i=0;i<n;i++){scanf("%d",&key);insert(key);}
    display();
    return 0;
}
'@

$solutions["Q10-BinarySearch-2"] = @'
#include<stdio.h>
int bSearch(int a[],int l,int r,int key){
    while(l<=r){
        int m=(l+r)/2;
        if(a[m]==key) return m;
        else if(a[m]<key) l=m+1;
        else r=m-1;
    }
    return -1;
}
int main(){
    int n,key;
    printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("Key: "); scanf("%d",&key);
    int res=bSearch(a,0,n-1,key);
    if(res!=-1) printf("Found at %d\n",res);
    else printf("Not found\n");
    return 0;
}
'@

$solutions["Q11-ColumnMajorOrder"] = @'
#include<stdio.h>
int main(){
    int base,w,rows,cols,r,c;
    printf("Base, size, rows, cols, row, col: ");
    scanf("%d%d%d%d%d%d",&base,&w,&rows,&cols,&r,&c);
    int ea=base+((c*rows)+r)*w;
    printf("Effective Address (Col Major) = %d\n",ea);
    return 0;
}
'@

$solutions["Q12-Tree-NodeCount"] = @'
#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*left,*right;};
struct Node* newNode(int d){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=d;n->left=n->right=NULL;return n;
}
int count(struct Node*root){
    if(!root) return 0;
    return 1+count(root->left)+count(root->right);
}
int main(){
    struct Node*root=newNode(1);
    root->left=newNode(2);root->right=newNode(3);
    root->left->left=newNode(4);root->left->right=newNode(5);
    printf("Node count = %d\n",count(root));
    return 0;
}
'@

$solutions["Q13-Tree-LeafCount"] = @'
#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*left,*right;};
struct Node* newNode(int d){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=d;n->left=n->right=NULL;return n;
}
int leafCount(struct Node*root){
    if(!root) return 0;
    if(!root->left&&!root->right) return 1;
    return leafCount(root->left)+leafCount(root->right);
}
int main(){
    struct Node*root=newNode(1);
    root->left=newNode(2);root->right=newNode(3);
    root->left->left=newNode(4);root->left->right=newNode(5);
    printf("Leaf count = %d\n",leafCount(root));
    return 0;
}
'@

$solutions["Q14-Tree-InternalNodes"] = @'
#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*left,*right;};
struct Node* newNode(int d){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=d;n->left=n->right=NULL;return n;
}
int internal(struct Node*root){
    if(!root||(!root->left&&!root->right)) return 0;
    return 1+internal(root->left)+internal(root->right);
}
int main(){
    struct Node*root=newNode(1);
    root->left=newNode(2);root->right=newNode(3);
    root->left->left=newNode(4);root->left->right=newNode(5);
    printf("Internal nodes = %d\n",internal(root));
    return 0;
}
'@

$solutions["Q15-Tree-Height"] = @'
#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*left,*right;};
struct Node* newNode(int d){
    struct Node*n=(struct Node*)malloc(sizeof(struct Node));
    n->data=d;n->left=n->right=NULL;return n;
}
int height(struct Node*root){
    if(!root) return 0;
    int l=height(root->left),r=height(root->right);
    return 1+(l>r?l:r);
}
int main(){
    struct Node*root=newNode(1);
    root->left=newNode(2);root->right=newNode(3);
    root->left->left=newNode(4);
    printf("Height = %d\n",height(root));
    return 0;
}
'@

$solutions["Q16-Tree-EffectiveAddress"] = @'
#include<stdio.h>
int main(){
    int base,w,level,pos;
    printf("Base, size, level(0-based), position(0-based): ");
    scanf("%d%d%d%d",&base,&w,&level,&pos);
    int index=1;
    for(int i=0;i<level;i++) index*=2;
    index+=pos;
    printf("EA = %d\n",base+(index-1)*w);
    return 0;
}
'@

$solutions["Q17-EA-2D-ColMajor"] = @'
#include<stdio.h>
int main(){
    int base,w,rows,r,c;
    printf("Base, size, rows, row, col: ");
    scanf("%d%d%d%d%d",&base,&w,&rows,&r,&c);
    int ea=base+((c*rows)+r)*w;
    printf("EA (Column Major) = %d\n",ea);
    return 0;
}
'@

$solutions["Q18-EA-2D-Array"] = @'
#include<stdio.h>
int main(){
    int base,w,cols,r,c;
    printf("Base, size, cols, row, col: ");
    scanf("%d%d%d%d%d",&base,&w,&cols,&r,&c);
    int ea=base+((r*cols)+c)*w;
    printf("EA = %d\n",ea);
    return 0;
}
'@

$solutions["Q19-EA-1D-Array"] = @'
#include<stdio.h>
int main(){
    int base,w,i;
    printf("Base address, element size, index: ");
    scanf("%d%d%d",&base,&w,&i);
    printf("EA = %d\n",base+i*w);
    return 0;
}
'@

$solutions["Q20-AdjacencyMatrix"] = @'
#include<stdio.h>
int main(){
    int n,a[10][10]={0},u,v,e;
    printf("Vertices, Edges: "); scanf("%d%d",&n,&e);
    for(int i=0;i<e;i++){scanf("%d%d",&u,&v);a[u][v]=a[v][u]=1;}
    for(int i=0;i<n;i++){for(int j=0;j<n;j++) printf("%d ",a[i][j]);printf("\n");}
    return 0;
}
'@

$solutions["Q21-AdjacencyList"] = @'
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
'@

$solutions["Q22-BFS"] = @'
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
'@

$solutions["Q23-DFS"] = @'
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
'@

$solutions["Q24-BellmanFord"] = @'
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
'@

$solutions["Q25-Dijkstra"] = @'
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
'@

$solutions["Q26-Prims"] = @'
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
'@

$solutions["Q27-Kruskal"] = @'
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
'@

$solutions["Q28-Fibonacci-DP"] = @'
#include<stdio.h>
int main(){
    int n;
    printf("n: "); scanf("%d",&n);
    long long dp[n+1];
    dp[0]=0; if(n>0) dp[1]=1;
    for(int i=2;i<=n;i++) dp[i]=dp[i-1]+dp[i-2];
    for(int i=0;i<=n;i++) printf("%lld ",dp[i]);
    printf("\n");
    return 0;
}
'@

$solutions["Q29-Tabulation"] = @'
#include<stdio.h>
int main(){
    int n,W;
    printf("Items, Capacity: "); scanf("%d%d",&n,&W);
    int wt[n+1],val[n+1];
    for(int i=1;i<=n;i++){printf("Weight Value of item %d: ",i);scanf("%d%d",&wt[i],&val[i]);}
    int dp[n+1][W+1];
    for(int i=0;i<=n;i++) for(int j=0;j<=W;j++){
        if(i==0||j==0) dp[i][j]=0;
        else if(wt[i]<=j) dp[i][j]=val[i]+dp[i-1][j-wt[i]]>dp[i-1][j]?val[i]+dp[i-1][j-wt[i]]:dp[i-1][j];
        else dp[i][j]=dp[i-1][j];
    }
    printf("Max value = %d\n",dp[n][W]);
    return 0;
}
'@

$solutions["Q30-AttendanceAnalysis"] = @'
#include<stdio.h>
int main(){
    int n; float threshold,sum=0,minA,pos;
    printf("N students, threshold: "); scanf("%d%f",&n,&threshold);
    float a[n];
    for(int i=0;i<n;i++) scanf("%f",&a[i]);
    int count=0; minA=a[0]; pos=0;
    for(int i=0;i<n;i++){
        sum+=a[i];
        if(a[i]<threshold) count++;
        if(a[i]<minA){minA=a[i];pos=i;}
    }
    printf("Below threshold: %d\n",count);
    printf("Lowest: %.2f at position %d\n",minA,(int)pos);
    printf("Average: %.2f\n",sum/n);
    return 0;
}
'@

$solutions["Q31-HospitalEmergencyMonitoring"] = @'
#include<stdio.h>
int main(){
    int n; printf("N hours: "); scanf("%d",&n);
    int a[n]; float sum=0;
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    int mx=a[0],mn=a[0],peakHour=0;
    for(int i=0;i<n;i++){
        sum+=a[i];
        if(a[i]>mx){mx=a[i];peakHour=i;}
        if(a[i]<mn) mn=a[i];
    }
    float avg=sum/n; int above=0;
    for(int i=0;i<n;i++) if(a[i]>avg) above++;
    printf("Max: %d at hour %d\nMin: %d\nPeak hour: %d\nAbove avg: %d\n",mx,peakHour,mn,peakHour,above);
    return 0;
}
'@

$solutions["Q32-StudentNameSearch"] = @'
#include<stdio.h>
#include<string.h>
#include<ctype.h>
int main(){
    int n; printf("N students: "); scanf("%d",&n);
    char names[n][50],search[50],lower1[50],lower2[50];
    for(int i=0;i<n;i++) scanf("%s",names[i]);
    printf("Name to search: "); scanf("%s",search);
    int found=-1;
    for(int i=0;i<n;i++) if(strcmp(names[i],search)==0){found=i;break;}
    if(found!=-1) printf("Case-sensitive: Found at %d\n",found);
    else printf("Case-sensitive: Not found\n");
    for(int i=0;i<(int)strlen(search);i++) lower1[i]=tolower(search[i]); lower1[strlen(search)]='\0';
    found=-1;
    for(int i=0;i<n;i++){
        for(int j=0;j<(int)strlen(names[i]);j++) lower2[j]=tolower(names[i][j]); lower2[strlen(names[i])]='\0';
        if(strcmp(lower2,lower1)==0){found=i;break;}
    }
    if(found!=-1) printf("Case-insensitive: Found at %d\n",found);
    else printf("Case-insensitive: Not found\n");
    return 0;
}
'@

$solutions["Q33-BookCodeValidator"] = @'
#include<stdio.h>
#include<string.h>
#include<ctype.h>
int main(){
    char code[20]; printf("Book code: "); scanf("%s",code);
    int valid=1;
    if(strlen(code)!=11) valid=0;
    else{
        for(int i=0;i<3;i++) if(!isupper(code[i])) valid=0;
        if(code[3]!='-') valid=0;
        for(int i=4;i<8;i++) if(!isdigit(code[i])) valid=0;
        if(code[8]!='-') valid=0;
        for(int i=9;i<11;i++) if(!isdigit(code[i])) valid=0;
    }
    printf(valid?"Valid\n":"Invalid\n");
    return 0;
}
'@

$solutions["Q34-ProductPriceSorting"] = @'
#include<stdio.h>
int main(){
    int n; printf("N products: "); scanf("%d",&n);
    float a[n];
    for(int i=0;i<n;i++) scanf("%f",&a[i]);
    for(int i=0;i<n-1;i++) for(int j=0;j<n-i-1;j++) if(a[j]>a[j+1]){float t=a[j];a[j]=a[j+1];a[j+1]=t;}
    for(int i=0;i<n;i++) printf("%.2f ",a[i]); printf("\n");
    return 0;
}
'@

$solutions["Q35-PriceSorting-3Methods"] = @'
#include<stdio.h>
void bubble(float a[],int n){for(int i=0;i<n-1;i++) for(int j=0;j<n-i-1;j++) if(a[j]>a[j+1]){float t=a[j];a[j]=a[j+1];a[j+1]=t;}}
void selection(float a[],int n){for(int i=0;i<n-1;i++){int m=i;for(int j=i+1;j<n;j++) if(a[j]<a[m]) m=j;float t=a[i];a[i]=a[m];a[m]=t;}}
void insertion(float a[],int n){for(int i=1;i<n;i++){float k=a[i];int j=i-1;while(j>=0&&a[j]>k){a[j+1]=a[j];j--;}a[j+1]=k;}}
int main(){
    int n; printf("N: "); scanf("%d",&n);
    float a[n],b[n],c[n];
    for(int i=0;i<n;i++){scanf("%f",&a[i]);b[i]=c[i]=a[i];}
    bubble(a,n); printf("Bubble: "); for(int i=0;i<n;i++) printf("%.2f ",a[i]); printf("\n");
    selection(b,n); printf("Selection: "); for(int i=0;i<n;i++) printf("%.2f ",b[i]); printf("\n");
    insertion(c,n); printf("Insertion: "); for(int i=0;i<n;i++) printf("%.2f ",c[i]); printf("\n");
    return 0;
}
'@

$solutions["Q36-CountSetBits"] = @'
#include<stdio.h>
int main(){
    int n,count=0; printf("Number: "); scanf("%d",&n);
    while(n){count+=n&1;n>>=1;}
    printf("Set bits = %d\n",count);
    return 0;
}
'@

$solutions["Q37-TernarySearch"] = @'
#include<stdio.h>
int main(){
    int n,key,lo,hi,m1,m2;
    printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    printf("Key: "); scanf("%d",&key);
    lo=0; hi=n-1;
    while(lo<=hi){
        m1=lo+(hi-lo)/3; m2=hi-(hi-lo)/3;
        if(a[m1]==key){printf("Found at %d\n",m1);return 0;}
        if(a[m2]==key){printf("Found at %d\n",m2);return 0;}
        if(key<a[m1]) hi=m1-1;
        else if(key>a[m2]) lo=m2+1;
        else{lo=m1+1;hi=m2-1;}
    }
    printf("Not found\n"); return 0;
}
'@

$solutions["Q38-QuickSort"] = @'
#include<stdio.h>
int partition(int a[],int l,int r){int p=a[r],i=l-1,j,t;for(j=l;j<r;j++) if(a[j]<=p){i++;t=a[i];a[i]=a[j];a[j]=t;}t=a[i+1];a[i+1]=a[r];a[r]=t;return i+1;}
void quickSort(int a[],int l,int r){if(l<r){int pi=partition(a,l,r);quickSort(a,l,pi-1);quickSort(a,pi+1,r);}}
int main(){
    int n; printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    quickSort(a,0,n-1);
    for(int i=0;i<n;i++) printf("%d ",a[i]); printf("\n");
    return 0;
}
'@

$solutions["Q39-BubbleSort"] = @'
#include<stdio.h>
int main(){
    int n; printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    for(int i=0;i<n-1;i++) for(int j=0;j<n-i-1;j++) if(a[j]>a[j+1]){int t=a[j];a[j]=a[j+1];a[j+1]=t;}
    for(int i=0;i<n;i++) printf("%d ",a[i]); printf("\n");
    return 0;
}
'@

$solutions["Q40-SelectionSort"] = @'
#include<stdio.h>
int main(){
    int n; printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    for(int i=0;i<n-1;i++){int m=i;for(int j=i+1;j<n;j++) if(a[j]<a[m]) m=j;int t=a[i];a[i]=a[m];a[m]=t;}
    for(int i=0;i<n;i++) printf("%d ",a[i]); printf("\n");
    return 0;
}
'@

$solutions["Q41-InsertionSort"] = @'
#include<stdio.h>
int main(){
    int n; printf("n: "); scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++) scanf("%d",&a[i]);
    for(int i=1;i<n;i++){int k=a[i],j=i-1;while(j>=0&&a[j]>k){a[j+1]=a[j];j--;}a[j+1]=k;}
    for(int i=0;i<n;i++) printf("%d ",a[i]); printf("\n");
    return 0;
}
'@

$solutions["Q42-ArrayVsLinkedList"] = @'
#include<stdio.h>
#include<stdlib.h>
struct Node{int data;struct Node*next;};
int main(){
    printf("Array: fixed size, fast access O(1), slow insert/delete O(n)\n");
    printf("Linked List: dynamic size, slow access O(n), fast insert/delete at ends O(1)\n");
    printf("For frequent insert/delete at beginning and end -> Linked List is better\n\n");
    struct Node*head=NULL,*tail=NULL,*t;
    for(int i=1;i<=5;i++){
        t=(struct Node*)malloc(sizeof(struct Node));
        t->data=i;t->next=NULL;
        if(!head){head=tail=t;}
        else{tail->next=t;tail=t;}
    }
    printf("Linked List: ");
    struct Node*cur=head;
    while(cur){printf("%d ",cur->data);cur=cur->next;}
    printf("\n");
    return 0;
}
'@

$solutions["Q43-RMO-CMO-Binary"] = @'
#include<stdio.h>
void toBin(int n){if(n==0){printf("0");return;}int b[32],i=0;while(n){b[i++]=n%2;n/=2;}for(int j=i-1;j>=0;j--) printf("%d",b[j]);}
int main(){
    int base,w,rows,cols,r,c;
    printf("Base, size, rows, cols, row, col: ");
    scanf("%d%d%d%d%d%d",&base,&w,&rows,&cols,&r,&c);
    int rmo=base+((r*cols)+c)*w;
    int cmo=base+((c*rows)+r)*w;
    printf("RMO Decimal: %d Binary: ",rmo); toBin(rmo); printf("\n");
    printf("CMO Decimal: %d Binary: ",cmo); toBin(cmo); printf("\n");
    return 0;
}
'@

$solutions["Q44-StackQueue"] = @'
#include<stdio.h>
#define MAX 100
int stack[MAX],stop=-1;
int queue[MAX],front=0,rear=0;
void push(int v){stack[++stop]=v;}
int pop(){return stack[stop--];}
void enqueue(int v){queue[rear++]=v;}
int dequeue(){return queue[front++];}
int main(){
    push(10);push(20);push(30);
    printf("Stack pop: %d %d %d\n",pop(),pop(),pop());
    enqueue(10);enqueue(20);enqueue(30);
    printf("Queue dequeue: %d %d %d\n",dequeue(),dequeue(),dequeue());
    return 0;
}
'@

$solutions["Q45-ActivitySelection"] = @'
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
'@

$solutions["Q46-MissingID-XOR"] = @'
#include<stdio.h>
int main(){
    int n; printf("N (total IDs from 1 to N): "); scanf("%d",&n);
    int xorAll=0,xorArr=0;
    for(int i=1;i<=n;i++) xorAll^=i;
    printf("Enter %d recorded IDs: ",n-1);
    for(int i=0;i<n-1;i++){int x;scanf("%d",&x);xorArr^=x;}
    printf("Missing ID = %d\n",xorAll^xorArr);
    return 0;
}
'@

$solutions["Q47-ScholarshipSelection"] = @'
#include<stdio.h>
int main(){
    int n; printf("N students: "); scanf("%d",&n);
    float att[n],gpa[n];
    printf("Enter attendance and GPA for each student:\n");
    for(int i=0;i<n;i++) scanf("%f%f",&att[i],&gpa[i]);
    printf("Scholarship eligible (attendance>=75 and GPA>=8.0):\n");
    for(int i=0;i<n;i++) if(att[i]>=75&&gpa[i]>=8.0) printf("Student %d\n",i+1);
    return 0;
}
'@

$solutions["Q48-StringCompare"] = @'
#include<stdio.h>
#include<string.h>
int main(){
    char a[100],b[100];
    printf("String 1: "); scanf("%s",a);
    printf("String 2: "); scanf("%s",b);
    int r=strcmp(a,b);
    if(r==0) printf("Equal\n");
    else if(r<0) printf("%s < %s\n",a,b);
    else printf("%s > %s\n",a,b);
    return 0;
}
'@

$solutions["Q49-StringLength"] = @'
#include<stdio.h>
int main(){
    char s[100]; int len=0;
    printf("String: "); scanf("%s",s);
    while(s[len]!='\0') len++;
    printf("Length = %d\n",len);
    return 0;
}
'@

$solutions["Q50-StringConcat"] = @'
#include<stdio.h>
int main(){
    char a[100],b[50];
    printf("String 1: "); scanf("%s",a);
    printf("String 2: "); scanf("%s",b);
    int i=0,j=0;
    while(a[i]!='\0') i++;
    while(b[j]!='\0'){a[i++]=b[j++];}
    a[i]='\0';
    printf("Concatenated: %s\n",a);
    return 0;
}
'@

$solutions["Q51-LibraryManagementSystem"] = @'
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
'@

$solutions["Q52-CoinChange"] = @'
#include<stdio.h>
int main(){
    int coins[]={1,5,10,25},n=4,amount;
    printf("Amount: "); scanf("%d",&amount);
    printf("Greedy: ");
    int rem=amount;
    for(int i=n-1;i>=0&&rem>0;i--) while(rem>=coins[i]){printf("%d ",coins[i]);rem-=coins[i];}
    printf("\n");
    int dp[amount+1];
    dp[0]=0;
    for(int i=1;i<=amount;i++){dp[i]=99999;for(int j=0;j<n;j++) if(coins[j]<=i&&dp[i-coins[j]]+1<dp[i]) dp[i]=dp[i-coins[j]]+1;}
    printf("DP min coins: %d\n",dp[amount]);
    return 0;
}
'@

$solutions["Q53-OddEven-Bitwise"] = @'
#include<stdio.h>
int main(){
    int n; printf("Number: "); scanf("%d",&n);
    printf(n&1?"Odd\n":"Even\n");
    return 0;
}
'@

foreach($folder in $solutions.Keys){
    $path = "$folder\solution.c"
    if(Test-Path $path){
        Set-Content -Path $path -Value $solutions[$folder] -Encoding UTF8
        Write-Host "Written: $path" -ForegroundColor Green
    } else {
        Write-Host "Folder not found: $folder" -ForegroundColor Red
    }
}
Write-Host "`nAll 53 solutions written!" -ForegroundColor Cyan
