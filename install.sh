#!/bin/sh
for file in *; do
    if [[ ! $file =~ (sh|dtx|ins|tex|pdf|sty)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

latex lintex.ins
pdflatex lintex.dtx
pdflatex lintex.dtx

for file in *; do
    if [[ ! $file =~ (sh|dtx|ins|tex|pdf|sty|cls)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

