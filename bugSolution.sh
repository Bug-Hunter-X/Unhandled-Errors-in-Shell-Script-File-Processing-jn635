#!/bin/bash

# Improved script with robust error handling

file_to_process="my_data.txt"

if [ -f "$file_to_process" ]; then
    # Attempt to process the file with error checking
    head -n 10 "$file_to_process" > output.txt
    if [ $? -eq 0 ]; then
        echo "Processed first 10 lines successfully."
    else
        echo "Error: Failed to process the file using 'head'. Exit code: $?"
        exit 1
    fi
else
    echo "Error: File not found."
    exit 1
fi

# Check for empty file after processing. 
if [ -s "output.txt" ]; then
  echo "Output file is not empty."
else
  echo "Warning: Output file is empty. Check input file."
fi
exit 0