#include <stdio.h>

#define SIZE 2003

int keys[SIZE], indices[SIZE], used[SIZE];

int hash(int key) {
    return ((key % SIZE) + SIZE) % SIZE;
}

int find(int key) {
    int pos = hash(key);

    while (used[pos]) {
        if (keys[pos] == key) {
            return indices[pos];
        }
        pos = (pos + 1) % SIZE;
    }

    return -1;
}

void insert(int key, int index) {
    int pos = hash(key);

    while (used[pos]) {
        if (keys[pos] == key) {
            return;
        }
        pos = (pos + 1) % SIZE;
    }

    used[pos] = 1;
    keys[pos] = key;
    indices[pos] = index;
}

int main() {
    int n, a[1000], target;

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    scanf("%d", &target);

    for (int i = 0; i < n; i++) {
        int j = find(target - a[i]);

        if (j != -1) {
            printf("%d %d\n", j, i);
            return 0;
        }

        insert(a[i], i);
    }

    printf("-1\n");

    return 0;
}