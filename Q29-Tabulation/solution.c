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
