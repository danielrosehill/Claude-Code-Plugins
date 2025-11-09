Check GPU passthrough and NVIDIA GPU status:

1. Verify GPU is visible: `lspci | grep -i nvidia`
2. Check NVIDIA driver status: `nvidia-smi`
3. Review GPU utilization: `nvidia-smi --query-gpu=utilization.gpu,utilization.memory,temperature.gpu --format=csv`
4. Check GPU processes: `nvidia-smi pmon`
5. Review NVIDIA driver version: `nvidia-smi --query-gpu=driver_version --format=csv,noheader`
6. Check for GPU errors: `dmesg | grep -i nvidia`
7. Verify CUDA availability if needed: `nvcc --version 2>/dev/null || echo "CUDA not installed"`
8. Check GPU memory: `nvidia-smi --query-gpu=memory.used,memory.total --format=csv`
9. Review GPU configuration in VM: `lspci -v -s $(lspci | grep -i nvidia | cut -d' ' -f1)`

Provide Daniel with:
- GPU model and driver version
- GPU utilization (compute and memory)
- Temperature status
- Running processes using GPU
- GPU memory usage
- Any driver errors or warnings
- CUDA availability and version
- Passthrough configuration status
- Recommendations for GPU optimization
- Warnings if GPU is overheating or overutilized
