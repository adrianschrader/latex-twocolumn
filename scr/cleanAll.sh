#!/bin/bash
# Run this script from the document root
latexmk -c
latexmk -C

rm document.run.xml
rm document.bbl
