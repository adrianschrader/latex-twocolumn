#!/bin/bash
# Run this script from the document root
latexmk -c

rm document.run.xml
rm document.bbl
