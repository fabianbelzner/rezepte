#!/bin/bash

INPUT="./nokneatbread_figures_original"
OUTPUT="./nokneatbread_figures"

mkdir -p "$OUTPUT"

for img in "$INPUT"/*.{jpg,jpeg,JPG,JPEG,png,PNG}; do
    [ -e "$img" ] || continue
    
    filename=$(basename "$img")
    echo "Verkleinere $img ..."
    magick "$img" -resize 2000x -quality 85 "$OUTPUT/$filename"
done

echo "Fertig! Bilder liegen jetzt in: $OUTPUT"
