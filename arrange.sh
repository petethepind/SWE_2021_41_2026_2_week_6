#!/bin/bash

for file in files/*; do
    [ -f "$file" ] || continue
    filename=$(basename "$file")
    first_letter="${filename:0:1}"
    first_letter=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')
    mv "$file" "$first_letter/"
done