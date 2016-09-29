PATH := $(PATH):/Library/TeX/texbin

.PHONY: all pdf purge clean show

all: purge pdf show

pdf:
	latexmk -pdf -xelatex -use-make -shell-escape document.tex

show: pdf
	open document.pdf

clean:
	latexmk -c

purge:
	latexmk -C
