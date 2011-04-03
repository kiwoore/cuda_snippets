__global__ void share_data(int *input)
{
	__shared__ int data[BLOCK_SIZE];
	
	data[threadIdx.x] = input[threadIdx.x];
	__syncthreads();
	
	// the state of the entire data array
	// is now well-defined for all threads
	// in this block
}

