Run comprehensive hardware benchmarks and create a profile:

1. **CPU Information**:
   - CPU model and specs: `lscpu`
   - CPU cores and threads: `nproc` and `lscpu | grep -E "^CPU\(s\)|Core|Thread"`
   - CPU frequency: `cat /proc/cpuinfo | grep "MHz"`

2. **Memory Information**:
   - Total memory: `free -h`
   - Memory details: `sudo dmidecode -t memory | grep -E "Size|Speed|Type:"`
   - Swap configuration: `swapon --show`

3. **Storage Information**:
   - Disk list: `lsblk -o NAME,SIZE,TYPE,MOUNTPOINT,FSTYPE,MODEL`
   - Storage controllers: `lspci | grep -i storage`
   - Filesystem info: `df -Th`

4. **CPU Benchmark** (if sysbench available):
   - Single-thread test: `sysbench cpu --threads=1 --time=30 run`
   - Multi-thread test: `sysbench cpu --threads=$(nproc) --time=30 run`
   - Note: Install with `sudo apt install sysbench` if not available

5. **Disk I/O Benchmark** (if available):
   - Read test: `dd if=/dev/zero of=/tmp/test bs=1M count=1024 conv=fdatasync`
   - Write test timing
   - Clean up: `rm /tmp/test`

6. **System Performance**:
   - Load averages: `uptime`
   - I/O stats: `iostat -x 2 3` (if sysstat installed)

Create a comprehensive hardware profile document and save it to `hw-profile/hardware-benchmark-$(date +%Y%m%d-%H%M%S).md` with:
- Complete hardware inventory
- Benchmark results with interpretation
- Performance metrics
- Bottleneck identification
- Timestamp of benchmark run

Format clearly with sections, tables where appropriate, and include raw outputs in code blocks.

After creating the document, inform Daniel of the location and highlight any performance concerns or bottlenecks identified.
