#!/bin/bash
extensions=("*.rej" "*.orig" "*.swp")

directory=$(dirname "$0")

for ext in "${extensions[@]}"; do
    find "$directory" -type f -name "$ext" -exec rm -f {} \;
    echo "Done $ext"
done
