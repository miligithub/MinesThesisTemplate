#!/bin/sh
echo "This bash file will remove all files except sh|md|dtx|ins|tex|pdf|sty|bib"
for file in *; do
    if [[ ! $file =~ (sh|md|dtx|ins|tex|pdf|sty|bib)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

latex lintex.ins
pdflatex lintex.dtx
pdflatex lintex.dtx

for file in *; do
    if [[ ! $file =~ (sh|md|dtx|ins|tex|pdf|sty|bib|cls)$ &&  -f $file ]]; then 
        # echo "remove $file"
        rm $file
    fi
done

