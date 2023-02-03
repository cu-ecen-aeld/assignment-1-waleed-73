#!/bin/sh

if [ $# -lt 2 ]; then
    echo "Error: Some of the parameters were not specified."
    exit 1
fi

filesdir=$1
searchstr=$2

if test ! -d $filesdir; then
    echo "Error: $filesdir does not represent a directory on the filesystem."
    exit 1
fi

number_of_files=$(find "$filesdir" -mindepth 1 -type f | wc -l)
number_of_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $number_of_files and the number of matching lines are $number_of_matching_lines"
