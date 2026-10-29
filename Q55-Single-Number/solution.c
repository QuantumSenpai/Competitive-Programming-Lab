#include <stdio.h>

int main() {
    int n, a[1000], ans = 0;

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
        ans = ans ^ a[i];
    }

    printf("%d\n", ans);

    return 0;
}