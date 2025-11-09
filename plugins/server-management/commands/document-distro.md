Document the Linux distribution and system information:

1. Get distribution info: `cat /etc/os-release`
2. Get kernel version: `uname -r`
3. Get system architecture: `uname -m`
4. Check desktop environment: `echo $XDG_CURRENT_DESKTOP`
5. Check init system: `ps -p 1 -o comm=`
6. Get package manager info: `which apt dpkg yum dnf pacman zypper`
7. Check installed package count: `dpkg -l | wc -l` or equivalent
8. Get system hostname: `hostname`
9. Check if running in container/VM: `systemd-detect-virt`

Create a comprehensive distro profile document and save it to `context/distro-info.md` with:
- Distribution name and version
- Kernel version and architecture
- Desktop environment (if applicable)
- Init system (systemd, etc.)
- Package manager
- Number of installed packages
- Virtualization status
- Hostname
- Generation timestamp

Format the document clearly with sections for each category. Include the raw command outputs in code blocks for reference.

After creating the document, inform Daniel of the location: `context/distro-info.md`
