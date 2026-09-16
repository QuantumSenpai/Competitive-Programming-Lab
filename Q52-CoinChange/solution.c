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
