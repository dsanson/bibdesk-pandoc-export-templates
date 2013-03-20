#!/bin/bash

pandoc=/Users/desanso/.cabal/bin/pandoc 

read bibfile

$pandoc --bibliography $bibfile -t markdown --no-wrap 2> /dev/null | tail -n +3

exit 0


