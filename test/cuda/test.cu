extern "C" {

    __global__ void inc (int n, float* a) {
        int i = blockIdx.x * blockDim.x + threadIdx.x;
        if (i < n) {
            a[i] += 1;
        }
    };

    __device__ float gpu_a[] = {1.0, 2.0, 3.0};

}
