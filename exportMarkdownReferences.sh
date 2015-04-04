#!/bin/bash
#
# Postprocessing script for dragging markdown formatted references
# out of BibDesk.

# The script needs to find pandoc. Here are some places it is likely to be. 
# You can also edit the PATH variable in citeServiceTemplate-pandoc-bib-script.sh

PATH=$HOME/.cabal/bin:/usr/local/bin:$PATH

# BibDesk feeds the script three lines on STDIN. The first line is the path
# to your bibtex file, which we assign to the variable $bibfile.
read bibfile
# The next line is discarded:
read
# Finally, there is a line that is a pandoc-formatted list of citekey references,
# e.g., [@jumbojimbo2012; @nancyfancypants2015]. We assign this to the variable
# $refs
read refs

# Perform a check to see if pandoc is in the path.
command -v pandoc >/dev/null 2>&1 || { echo "Cannot find pandoc in path. Edit the PATH variable in citeServiceTemplate-pandoc-bib-script.sh"; exit 0;}

# Pass the list of pandoc-formated references to pandoc.
echo "$refs" | pandoc -t markdown-citations --no-wrap --bibliography="$bibfile" --csl="chicago-author-date.csl" 2>/dev/null | tail -n+5 | grep -v "</div>"

exit 0

