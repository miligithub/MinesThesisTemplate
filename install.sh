#!/bin/sh
for file in *; do
    if [[ ! $file =~ (sh|dtx|ins|pdf)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

latex lintex.ins

pdflatex lintex.dtx

for file in *; do
    if [[ ! $file =~ (sh|dtx|ins|pdf|cls)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

