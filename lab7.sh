#!/bin/bash

echo "Lab 7: Memory Usage Monitor"

echo ""
echo "Current Memory Status (using free command):"
free -h

echo ""
echo "Detailed Memory Info (using top command):"
top -b -n 1 | grep "MiB Mem"

echo ""
echo "Available Memory:"
free -h | grep "Mem" | awk '{print "Available: " $7}'
