#!/bin/sh
for file in *; do
    if [[ ! $file =~ (sh|dtx|ins|tex|pdf)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

latex lintex.ins

makeindex lintex.idx

pdflatex lintex.dtx

for file in *; do
    if [[ ! $file =~ (sh|dtx|ins|tex|pdf|cls)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

