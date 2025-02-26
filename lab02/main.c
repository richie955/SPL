#include <stdio.h>

extern int add(int a, int b);
extern int subtract(int a, int b);
extern int multiply(int a, int b);
extern int divide(int a, int b);

int main() {
    int x = 10, y = 5;

    printf("Addition: %d + %d = %d\n", x, y, add(x, y));
    printf("Subtraction: %d - %d = %d\n", x, y, subtract(x, y));
    printf("Multiplication: %d * %d = %d\n", x, y, multiply(x, y));
    printf("Division: %d / %d = %d\n", x, y, divide(x, y));

    return 0;
}
