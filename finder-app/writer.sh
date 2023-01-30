#!/bin/bash


if [ $# -lt 2 ]; then
    echo "Error: Some of the parameters were not specified."
    exit 1
fi

writefile=$1
writestr=$2

dir_name=$(dirname "$writefile")

if [ ! -d "$dir_name" ]; then
  mkdir -p "$dir_name"
  echo "Directory $dir_name created!"
else
  echo "Directory $dir_name already exists!"
fi

touch "$writefile"
echo "$writestr" > "$writefile"
