Run comprehensive GPU benchmarks and document GPU module configuration:

1. **GPU Detection**:
   - List GPUs: `lspci | grep -i vga`
   - GPU details: `lspci -v -s $(lspci | grep -i vga | cut -d' ' -f1)`

2. **NVIDIA GPU** (if present):
   - nvidia-smi output: `nvidia-smi`
   - Driver version: `nvidia-smi --query-gpu=driver_version --format=csv,noheader`
   - GPU details: `nvidia-smi --query-gpu=name,memory.total,compute_cap --format=csv`
   - CUDA version: `nvcc --version` or `nvidia-smi | grep "CUDA Version"`
   - CUDA libraries: `ldconfig -p | grep cuda`

3. **AMD GPU** (if present):
   - ROCm info: `rocm-smi` or `/opt/rocm/bin/rocminfo`
   - ROCm version: `apt list --installed | grep rocm` or check `/opt/rocm/.info/version`
   - GPU details: `rocm-smi --showproductname --showvbios`
   - HIP version: `hipconfig --version` (if available)

4. **GPU Performance Testing**:
   - NVIDIA: `nvidia-smi dmon -c 10` (10-second monitoring)
   - AMD: `rocm-smi -d` (device info)
   - Check GPU memory bandwidth if tools available
   - Temperature monitoring: Check max temps under idle

5. **OpenCL/Vulkan**:
   - OpenCL devices: `clinfo` (if installed)
   - Vulkan support: `vulkaninfo --summary` (if installed)

6. **GPU Compute Benchmarks** (if tools available):
   - For NVIDIA: Consider glmark2, unigine, or pytorch GPU tests
   - For AMD: Consider ROCm benchmark utilities
   - Document if benchmark tools aren't available

7. **Passthrough Status** (for VMs):
   - Check IOMMU groups: `find /sys/kernel/iommu_groups/ -type l`
   - Verify GPU in VM: `lspci -nnk | grep -A3 VGA`

Create a comprehensive GPU profile document and save it to `hw-profile/gpu-benchmark-$(date +%Y%m%d-%H%M%S).md` with:
- GPU model and specifications
- Driver versions (NVIDIA/AMD)
- CUDA/ROCm installation status and versions
- Compute capability
- Available GPU libraries
- Performance metrics
- Temperature and power data
- Passthrough configuration (if VM)
- OpenCL/Vulkan support
- Benchmark results (if run)
- Timestamp

Include recommendations for:
- Driver updates if needed
- CUDA/ROCm optimization
- Cooling concerns if high temps
- Compute capability utilization

Format with clear sections and code blocks for raw outputs.

After creating the document, inform Daniel of the location and highlight any configuration issues or optimization opportunities.
