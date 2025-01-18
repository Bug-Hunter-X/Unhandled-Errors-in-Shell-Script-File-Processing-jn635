#!/bin/bash

# This script attempts to process a file, but it doesn't handle potential errors
# properly.  Specifically, it uses a simple test `-f` to see if the file exists,
# then it proceeds, without checking the exit code of commands.

file_to_process="my_data.txt"

if [ -f "$file_to_process" ]; then
    # Attempt to process the file, but without error checking
    head -n 10 "$file_to_process" > output.txt
    echo "Processed first 10 lines successfully (or so it seems...)."
    # What if 'head' fails (e.g., file permissions, file is empty)?  This won't show.
else
    echo "Error: File not found."
fi