#include <stdio.h>

#define SIZE 2003

int main() {
    int n, a[1000], set[SIZE], used[SIZE] = {0};

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    for (int i = 0; i < n; i++) {
        int key = ((a[i] % SIZE) + SIZE) % SIZE;

        while (used[key] && set[key] != a[i]) {
            key = (key + 1) % SIZE;
        }

        if (!used[key]) {
            used[key] = 1;
            set[key] = a[i];
            printf("%d ", a[i]);
        }
    }

    printf("\n");

    return 0;
}