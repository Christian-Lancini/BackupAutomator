#!/bin/bash

clear

while true; do
    echo "============"
    echo "   BACKUP   "
    echo "============"
    echo ""
    echo "1. Extract a Backup tar.gz"
    echo "2. Do a Backup tar.gz"
    echo "3. Exit"
    echo ""
    echo -n "Options [1-3]: "
    read choice

    case $choice in
        1)
            echo ""
            read -p "Insert the name of the backup file: " file

            if [[ ! -f "$file" ]]; then # verifica che esiste
                echo "Error: file not found!"
            else
                tar -xzvf "$file"
                echo "Done!"
            fi
            ;;
        2)
            read -p "Choose a directory: " directory

            if [[ ! -d "$directory" ]]; then
                echo "Error: directory not found!"
            else
                read -p "Insert output backup name (default: backup.tar.gz): " out
                out=${out:-backup.tar.gz}

                tar -czf "$out" "$directory"
                echo "Backup saved as $out"
            fi
            ;;
        3)
            echo "Bye!"
            exit 0
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac

    echo ""
    read -p "Press ENTER to continue..."
    clear
done
