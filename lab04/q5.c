//full error codes
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

void memory_allocation_error() {
    int *ptr = malloc(sizeof(int) * 5); 
    free(ptr);  
    *ptr = 10;  
}

void array_out_of_bounds() {
    int arr[5] = {1, 2, 3, 4, 5};
    printf("Out of bounds access: %d\n", arr[10]); 
}

void null_pointer_dereference() {
    int *ptr = NULL;
    *ptr = 20;  
}

void integer_overflow() {
    int num = INT_MAX;
    num = num + 1; 
    printf("Integer Overflow: %d\n", num);
}

void uninitialized_variable() {
    int x;  
    printf("Uninitialized variable: %d\n", x);
}

int main() {
    printf("Starting error demonstration...\n");

    memory_allocation_error();
    array_out_of_bounds();
    null_pointer_dereference();
    integer_overflow();
    uninitialized_variable();

    return 0;
}
