#!/bin/bash

# This script searches for and removes all .DS_Store files in the specified path

# Check if an argument was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [path_to_folder]"
    exit 1
fi

PATH=$1

# Check if the provided path is a directory
if [ ! -d "$PATH" ]; then
    echo "Error: '$PATH' is not a valid directory."
    exit 1
fi

echo "Searching for and removing .DS_Store files in '$PATH'..."

# Find and remove .DS_Store files
find "$PATH" -name '.DS_Store' -exec rm {} \;

echo ".DS_Store files successfully removed from '$PATH'."
