#!/bin/bash
#
# Postprocessing script for dragging markdown formatted references
# out of BibDesk.

PATH=$HOME/.cabal/bin:/usr/local/bin:$PATH

read bibfile
read
read refs

command -v pandoc >/dev/null 2>&1 || { echo "Cannot find pandoc in path. Edit the PATH variable in citeServiceTemplate-pandoc-bib-script.sh"; exit 0;}

echo "$refs" | pandoc --bibliography $bibfile -t markdown --no-wrap 2> /dev/null | tail -n +3

exit 0

