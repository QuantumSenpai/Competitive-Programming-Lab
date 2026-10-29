#include <stdio.h>

int main() {
    int n, a[1000], target;
    int low, high, mid, ans = -1;

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    scanf("%d", &target);

    low = 0;
    high = n - 1;

    while (low <= high) {
        mid = low + (high - low) / 2;

        if (a[mid] == target) {
            ans = mid;
            break;
        } else if (a[mid] < target) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }

    printf("%d\n", ans);

    return 0;
}