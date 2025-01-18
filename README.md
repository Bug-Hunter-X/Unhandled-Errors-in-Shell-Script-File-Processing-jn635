# Unhandled Errors in Shell Script File Processing

This repository demonstrates a common error in shell scripting: insufficient error handling. The `bug.sh` script attempts to process a file, but it fails to check the exit status of commands, leading to potential silent failures.  The `bugSolution.sh` script shows how to improve error handling.

## Bug

The `bug.sh` script checks if a file exists, but doesn't verify the success of subsequent commands (like `head`). If `head` encounters an error (permissions issue, file is empty, etc.), the script won't report it, leading to unexpected behavior or data corruption.

## Solution

The `bugSolution.sh` script uses proper error checking.  It checks the exit status of each command using `$?`. If a command fails, an informative error message is printed, and the script exits with a non-zero status, indicating failure.  This enables more robust and reliable file processing.

## How to run

1. Clone this repository.
2. Make `bug.sh` and `bugSolution.sh` executable using `chmod +x bug.sh bugSolution.sh`.
3. Run `bug.sh` and observe its behavior (it may silently fail).
4. Run `bugSolution.sh` to see how proper error handling should be implemented.  Try creating a file `my_data.txt`, or not creating it, and running the scripts to observe the different behavior.