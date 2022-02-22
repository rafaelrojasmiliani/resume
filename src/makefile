.PHONY: curriculum clean purge all

%.pdf: makefile $(wildcard *.cls) $(wildcard *.sty) $(wildcard *.tex) $(wildcard *.bst) $(wildcard *.bib)
	echo|pdflatex $*
	-echo|bibtex $*
	echo|pdflatex $*
	echo|pdflatex $*
	echo|pdflatex $*

curriculum: 00_curriculum.pdf

clean:
	-rm *.aux *.bbl *.blg *.log *.out *.nav *.snm *.spl *.toc *.tod

purge: clean
#	-rm *.pdf

