#!/bin/bash

echo "---- File Permission & Ownership ----"

# Get filename
echo "Enter file name:"
read file

# Check file exists
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit
fi

# Get permission
echo "Enter permission (e.g., 755):"
read perm

# Change permission
chmod $perm $file

# Get owner
echo "Enter new owner name:"
read owner

# Change ownership
chown $owner $file

# Display new permissions
echo "Updated file details:"
ls -l $file

