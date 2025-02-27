#include <stdio.h>
int main() {
float t;
float result = 10 / t;
printf("Result: %f\n", result);
return 0;
}

//valgrind output
// ==97655== Conditional jump or move depends on uninitialised value(s)
// ==97655==    at 0x48BDCB8: __printf_fp_l (printf_fp.c:396)
// ==97655==    by 0x48D992C: __printf_fp_spec (vfprintf-internal.c:354)
// ==97655==    by 0x48D992C: __vfprintf_internal (vfprintf-internal.c:1558)
// ==97655==    by 0x48C379E: printf (printf.c:33)
// ==97655==    by 0x10918D: main (q4.c:5)



//correct code.

// #include <stdio.h>

// int main() {
//     int t;
//     printf("Enter a nonzero number: ");
//     scanf("%d", &t);

//     if (t == 0) {
//         printf("Error: Division by zero is not allowed.\n");
//         return 1;  // Exit with an error code
//     }

//     int result = 10 / t;
//     printf("Result: %d\n", result);

//     return 0;
// }
