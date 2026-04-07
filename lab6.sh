#!/bin/bash

echo "Lab 6: Directory Management"

while true
do
    echo ""
    echo "1. Create Directory"
    echo "2. List Directories"
    echo "3. Delete Directory"
    echo "4. Exit"

    echo "Enter your choice:"
    read choice

    case $choice in

    1)
        echo "Enter directory name to create:"
        read dirname
        mkdir "$dirname"
        if [ $? -eq 0 ]; then
            echo "Directory '$dirname' created successfully."
        else
            echo "Error creating directory."
        fi
        ;;

    2)
        echo "Directories in current location:"
        ls -d */
        ;;

    3)
        echo "Enter directory name to delete:"
        read dirname
        rmdir "$dirname"
        if [ $? -eq 0 ]; then
            echo "Directory '$dirname' deleted successfully."
        else
            echo "Error deleting directory (may not be empty)."
        fi
        ;;

    4)
        echo "Exiting program..."
        break
        ;;

    *)
        echo "Invalid choice. Try again!"
        ;;

    esac
done
