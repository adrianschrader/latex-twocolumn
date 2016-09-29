PATH := $(PATH):/Library/TeX/texbin

.PHONY: all pdf purge clean show

all: purge pdf show

pdf:
	latexmk -pdf -xelatex -use-make -shell-escape document.tex

show: pdf
	open document.pdf

lint:
	chktex -wall -q -n22 -n30 -n8 -e16 -v2 document.tex

clean:
	rm -f document.bbl
	latexmk -c

purge: clean
	latexmk -C
