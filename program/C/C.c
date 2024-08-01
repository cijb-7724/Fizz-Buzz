// C(gcc 12.2.0)
#include <stdio.h>
#include <string.h>
int main() {
    for (int i=1; i<=100; ++i) {
        if (i % 3 == 0) printf("Fizz");
        if (i % 5 == 0) printf("Buzz");
        if (i % 3 != 0 && i % 5 != 0) printf("%d", i);
        printf("\n");
    }
}