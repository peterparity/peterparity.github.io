#!/bin/bash

for PDF in *.pdf
do
    FILE="${PDF%%.*}"
    echo "Converting $PDF to $FILE.svg..."
    pdf2svg $PDF "$FILE.svg"

    echo "Remove 'width' and 'height' fields from the top of SVG files to allow arbitrary sizing in HTML:"
    sed '2 s/width.*height=".*pt" //' $FILE.svg | awk 'NR == 2'
    sed -i'' -e '2 s/width.*height=".*pt" //' $FILE.svg
done

echo "Remove backups..."
rm *.svg-e
