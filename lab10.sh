#!/bin/bash
# Filename: pipe_demo.sh
# Purpose: Demonstrate command piping in Unix shell

echo "Command Piping Demo "

# 1. Create a sample file
echo -e "apple\nbanana\napple\norange\nbanana\napple" > fruits.txt
echo "Sample file 'fruits.txt' created with content:"
cat fruits.txt
echo

# 2. Count total lines using piping
total_lines=$(cat fruits.txt | wc -l)
echo "Total lines in fruits.txt: $total_lines"

# 3. Count occurrences of 'apple'
apple_count=$(cat fruits.txt | grep "apple" | wc -l)
echo "Number of times 'apple' appears: $apple_count"

# 4. Sort the file and remove duplicates
echo "Sorted unique fruits:"
cat fruits.txt | sort | uniq
echo

# 5. Search for 'banana' in file
echo "Lines containing 'banana':"
cat fruits.txt | grep "banana"

# Cleanup
rm fruits.txt
echo
echo "Demo complete. Sample file removed."
