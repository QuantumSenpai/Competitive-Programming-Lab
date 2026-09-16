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
