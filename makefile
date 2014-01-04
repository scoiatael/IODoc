CC=xelatex
FILES=$(wildcard *.tex)
TRGS=założenia specyfikacja harmonogram analiza prototyp kosztorys testowanie slownik spis
PDF=$(TRGS:%=%.pdf)

all : $(TRGS)

% : %.pdf

%.pdf : $(FILES)
	        xelatex $*.tex && xelatex $*.tex

partial_clean : 
	-rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.blg

clean : partial_clean
	-rm *.pdf

dist : all partial_clean
	tar czf docs.tgz *.pdf


.PHONY : partial_clean clean all $(TRGS)
