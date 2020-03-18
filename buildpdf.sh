#!/bin/bash

rm 00-b-toc.md 
pandoc -s -t gfm --toc -V toc-title:"Table of Contents" --template=toc-template.markdown -o00-b-toc.md *.md
pandoc -o oisru.pdf --number-sections -H pagebreak.tex -f markdown -t pdf *.md