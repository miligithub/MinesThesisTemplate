#!/bin/sh
for file in *; do
    if [[ $file =~ (sh|dtx|pdf|ins)$ ]]
    then
        echo $file
    else 
        # echo "remove $file"
        rm $file
    fi
done

# latex lintex.ins

# pdflatex lintex.dtx

for file in *; do
    if [[ $file =~ (sh|dtx|pdf|cls|ins)$ ]]
    then
        echo $file
    else 
        # echo "remove $file"
        rm $file
    fi
done