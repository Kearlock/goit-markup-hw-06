#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <path-to-html-file>"
  exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found."
  exit 1
fi

if [[ "$file" != *.html ]]; then
  echo "Error: File '$file' is not an HTML file. Please provide a .html file."
  exit 1
fi

sed -i 's/\/>/\>/g' "$file"

echo "Processed file: $file"
