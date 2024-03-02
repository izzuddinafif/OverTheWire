#!/bin/bash

# Initial hexdump file
HEXDUMP_FILE="$1"
# Use a unique identifier for the initial binary file
BINARY_FILE="${HEXDUMP_FILE%.*}_initial"

echo "Starting conversion and decompression process..."

# Convert hexdump to binary
xxd -r "$HEXDUMP_FILE" > "$BINARY_FILE"

decompress_file() {
    local file=$1

    while true; do
        # Update to avoid picking script or original text file
        file=$(ls -t | grep -v -E '(.sh$|.txt$)' | head -n 1)
        filetype=$(file -b "$file")

        case $filetype in
            *'gzip compressed data'*)
                mv "$file" "$file.gz"
                gzip -d "$file.gz"
                file="${file%.*}"
                ;;
            *'bzip2 compressed data'*)
                mv "$file" "$file.bz2"
                bzip2 -d "$file.bz2"
                file="${file%.*}"
                ;;
            *'POSIX tar archive'*)
                mv "$file" "$file.tar"
                tar -xvf "$file.tar" > /dev/null 2>&1
                rm "$file.tar"
                # Assumes the tar extract might not be the script or txt file
                ;;
            *'ASCII text'*)
                echo "ASCII text file detected, displaying contents:"
                cat "$file"
                return
                ;;
            *)
                # Removed the echo for unrecognized file type for quiet mode
                return
                ;;
        esac
    done
}

decompress_file "$BINARY_FILE"

echo "Decompression process completed."

