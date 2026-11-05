#!/bin/bash

echo "=========================================="
echo "   NETWORK TRAFFIC & CONNECTIONS REPORT"
echo "   Date: $(date)"
echo "=========================================="

echo -e "\n[1] Active Listening Ports & Services:"
ss -tuln

echo -e "\n[2] Established Connections & Remote IPs:"
ss -tn state established

echo -e "\n[3] Network Interfaces & IP Addresses:"
ip -brief addr

echo "=========================================="
