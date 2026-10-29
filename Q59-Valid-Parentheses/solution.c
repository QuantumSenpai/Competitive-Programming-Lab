#include <stdio.h>
#include <string.h>

int main() {
    char s[1000], stack[1000];
    int top = -1, valid = 1;

    scanf("%999s", s);

    for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
            stack[++top] = s[i];
        } else if (s[i] == ')' || s[i] == '}' || s[i] == ']') {
            if (top == -1) {
                valid = 0;
                break;
            }

            char c = stack[top--];

            if ((s[i] == ')' && c != '(') ||
                (s[i] == '}' && c != '{') ||
                (s[i] == ']' && c != '[')) {
                valid = 0;
                break;
            }
        }
    }

    if (top != -1) {
        valid = 0;
    }

    printf("%s\n", valid ? "Valid" : "Invalid");

    return 0;
}