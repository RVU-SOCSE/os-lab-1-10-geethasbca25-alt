#!/bin/bash
echo "Parent PID: $$"
sleep 20 &
echo “Child PID: $!” 

