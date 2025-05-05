# 0 "fir.c"
# 1 "/home/ubuntu/Desktop/EESM6000C/eesm6000c_ronald/lab4/Lab4-2/lab-caravel_fir/testbench/counter_la_fir//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "fir.c"
# 1 "fir.h" 1
# 15 "fir.h"
int taps[11] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
int outputbuffer[64];
# 2 "fir.c" 2


# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 1 3 4
# 11 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 3 4
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 1 3 4
# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4

# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 2 3 4
# 5 "fir.c" 2


# 6 "fir.c"
void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {

    (*(volatile uint32_t*) 0x30000010) = 64;
    (*(volatile uint32_t*) 0x30000014) = 11;

    for(uint8_t i=0; i<11; i++){
        (*(volatile uint32_t*) (0x30000040 + (i <<2))) = taps[i];
    }
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
 initfir();

    (*(volatile uint32_t*) 0x30000000) = 0x00000001;
    for (uint16_t i=0; i<64; i++){
        (*(volatile uint32_t*) 0x30000080) = i+1;
        outputbuffer[i] = (*(volatile uint32_t*) 0x30000084);
    }
 return outputbuffer;
}
