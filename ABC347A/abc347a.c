#include <stdio.h>
#include <string.h>
int main() {
    int N, K, A;
    scanf("%d %d", &N, &K);
    for (;N--;) {
        scanf("%d", &A);
        if (A % K == 0) printf("%d\n", A/K);
    }
}
