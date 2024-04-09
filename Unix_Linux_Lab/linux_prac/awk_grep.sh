#!/bin/bash

# Function to search pattern in file using grep
search_with_grep() {
    local file=$1
    local pattern=$2
    grep "$pattern" "$file"
}

# Function to extract specific columns from file using awk
extract_columns_with_awk() {
    local file=$1
    awk '{print $1, $4}' "$file"
}


main() {

    read -p "Enter file name: " file

    if [ ! -f "$file" ]; then
        echo "File not found!"
        exit 1
    fi

    read -p "Enter pattern to search: " pattern

    echo "Results from grep:"
    search_with_grep "$file" "$pattern"

    echo "Results from awk:"
    extract_columns_with_awk "$file"
}

main

