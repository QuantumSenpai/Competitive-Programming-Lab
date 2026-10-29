#include <stdio.h>

struct Activity {
    int start;
    int finish;
};

int main() {
    int n, count = 0;
    struct Activity a[100];

    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        scanf("%d%d", &a[i].start, &a[i].finish);
    }

    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (a[j].finish > a[j + 1].finish) {
                struct Activity temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
        }
    }

    int lastFinish = -1;

    for (int i = 0; i < n; i++) {
        if (a[i].start >= lastFinish) {
            printf("(%d, %d)\n", a[i].start, a[i].finish);
            lastFinish = a[i].finish;
            count++;
        }
    }

    printf("Maximum activities = %d\n", count);

    return 0;
}