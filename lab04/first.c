#include <stdio.h>

int main() {
    int num1, num2, total;

    printf("Enter first number: ");
    scanf("%d", &num1);
    
    printf("Enter second number: ");
    scanf("%d", &num2);

    total = num1 + num2;

    printf("\nThe sum is: %d\n", total);

    return 0;
}
