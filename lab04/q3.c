#include <stdlib.h>
#include <stdio.h>

void f(void) {
    int* x = malloc(10 * sizeof(int));  // Allocating memory
    if (x == NULL) {
        return;  // Handle memory allocation failure
    }
    
}

int main(void) {
    f();
    return 0;
}
