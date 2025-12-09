#!/bin/bash

# Compile and run script for Memory Detective assignment
# This script compiles your C program and runs it if compilation succeeds

echo "==================================="
echo "Compiling memory_detective.c..."
echo "==================================="

# Compile with gcc
# -Wall enables all warnings
# -Wextra enables extra warnings
# -o specifies the output file name
gcc -Wall -Wextra memory_detective.c -o memory_detective

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "✓ Compilation successful!"
    echo ""
    echo "==================================="
    echo "Running program..."
    echo "==================================="
    echo ""
    ./memory_detective
else
    echo "✗ Compilation failed. Please fix the errors above and try again."
    exit 1
fi