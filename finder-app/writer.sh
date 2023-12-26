#!/bin/bash

# @Author: Divin Raj
# @Date: 26-12-2023
# @File: writer.sh

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

writefile="$1"
writestr="$2"

# Check if both arguments are provided
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Both arguments must be specified."
    exit 1
fi

# Create the directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to create the file $writefile."
    exit 1
fi

echo "$writefile created successfully with content: $writestr"

exit 0

