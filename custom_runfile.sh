#!/bin/bash

# Access the full path using ZED_FILE
full_path="$ZED_FILE"
script_dir="$(dirname "$full_path")"
parent_dir="$(dirname "$script_dir")"

# Extract filename with extension
filename_ext=$(basename "$full_path")
filename="${filename_ext%.*}"
extension="${filename_ext##*.}"

echo "[running $filename_ext]"

if [[ "$extension" == "c" ]]; then
    cd "$parent_dir/"
    make run
else
    echo "Error: Unsupported file type."
fi
