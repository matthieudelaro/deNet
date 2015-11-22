#include <stdio.h>

__device__ const char *STR = "deNet is ON!\n";
const char STR_LENGTH = 13;

__global__ void deNet()
{
    printf("%c\n", STR[threadIdx.x % STR_LENGTH]);
}

int main(void)
{
    int num_threads = STR_LENGTH;
    int num_blocks = 1;
    deNet<<<num_blocks,num_threads>>>();
    cudaDeviceSynchronize();

    return 0;
}

