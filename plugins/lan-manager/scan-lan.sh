#!/bin/bash

# LAN Scanner - Performs ARP scan and saves results to arp-scans/protected directory
# Usage: ./scan-lan.sh

set -euo pipefail

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROTECTED_DIR="${SCRIPT_DIR}/arp-scans/protected"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUTPUT_FILE="${PROTECTED_DIR}/arp_scan_${TIMESTAMP}.txt"
LATEST_LINK="${PROTECTED_DIR}/latest_scan.txt"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Create protected directory if it doesn't exist
mkdir -p "${PROTECTED_DIR}"

echo -e "${GREEN}Starting LAN ARP scan...${NC}"
echo "Output will be saved to: ${OUTPUT_FILE}"
echo ""

# Check if running as root (required for arp-scan)
if [ "$EUID" -ne 0 ]; then
    echo -e "${YELLOW}Note: Running without sudo. Will attempt arp-scan, but may need elevated privileges.${NC}"
    echo ""
fi

# Function to perform ARP scan
perform_arp_scan() {
    echo "=== ARP Scan Results ===" > "${OUTPUT_FILE}"
    echo "Timestamp: $(date)" >> "${OUTPUT_FILE}"
    echo "Network: 10.0.0.0/24" >> "${OUTPUT_FILE}"
    echo "" >> "${OUTPUT_FILE}"

    # Try arp-scan if available
    if command -v arp-scan &> /dev/null; then
        echo -e "${GREEN}Using arp-scan...${NC}"
        sudo arp-scan --interface=eth0 --localnet >> "${OUTPUT_FILE}" 2>&1 || \
        sudo arp-scan --interface=enp5s0 --localnet >> "${OUTPUT_FILE}" 2>&1 || \
        sudo arp-scan --localnet >> "${OUTPUT_FILE}" 2>&1 || \
        echo "arp-scan failed - check network interface" >> "${OUTPUT_FILE}"
    else
        echo -e "${YELLOW}arp-scan not found, using nmap instead...${NC}"
        if command -v nmap &> /dev/null; then
            sudo nmap -sn 10.0.0.0/24 >> "${OUTPUT_FILE}" 2>&1
        else
            echo -e "${RED}Neither arp-scan nor nmap available. Please install one of them.${NC}"
            echo "Install with: sudo apt install arp-scan"
            echo "Or: sudo apt install nmap"
            exit 1
        fi
    fi

    echo "" >> "${OUTPUT_FILE}"
    echo "=== ARP Cache ===" >> "${OUTPUT_FILE}"
    arp -a >> "${OUTPUT_FILE}" 2>&1

    echo "" >> "${OUTPUT_FILE}"
    echo "=== IP Neighbors (if available) ===" >> "${OUTPUT_FILE}"
    ip neigh show >> "${OUTPUT_FILE}" 2>&1 || echo "ip neigh command not available" >> "${OUTPUT_FILE}"
}

# Perform the scan
perform_arp_scan

# Create/update symlink to latest scan
ln -sf "$(basename "${OUTPUT_FILE}")" "${LATEST_LINK}"

echo -e "${GREEN}Scan complete!${NC}"
echo ""
echo "Results saved to: ${OUTPUT_FILE}"
echo "Latest scan link: ${LATEST_LINK}"
echo ""
echo "Quick view of discovered hosts:"
echo "-------------------------------"
grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" "${OUTPUT_FILE}" | head -20

echo ""
echo -e "${YELLOW}Full results:${NC}"
cat "${OUTPUT_FILE}"
