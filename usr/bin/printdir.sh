#!/usr/bin/env bash

DIRECTORY=${1:-$(pwd)}
FILEEXT=${2:-*}

if [ $# -ne 2 ]
then
    echo "Usage:"
    echo "printdir <directory path> <file ext>"
    exit 
fi

find $DIRECTORY -type f -name "*.$FILEEXT" |
while IFS= read -r file
do
    printf "~=File: %s=~\n\n" "$file"
    cat "$file"
    printf "\n\n\n"
done
