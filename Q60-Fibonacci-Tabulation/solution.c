#include <stdio.h>

int main() {
    int n;
    long long dp[94];

    scanf("%d", &n);

    if (n < 0 || n > 93) {
        printf("Invalid input\n");
        return 0;
    }

    dp[0] = 0;
    dp[1] = 1;

    for (int i = 2; i <= n; i++) {
        dp[i] = dp[i - 1] + dp[i - 2];
    }

    printf("%lld\n", dp[n]);

    return 0;
}