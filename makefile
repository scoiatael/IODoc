CC=xelatex
FILES=$(wildcard .tex)
TRGS=koncepcja specyfikacja harmonogram analiza architektura kosztorys testowanie slownik spis
PDF=$(TRGS:%=%.pdf)

%.pdf : $(FILES)
	        xelatex $*.tex && xelatex $*.tex

all : $(TRGS)

partial_clean : 
	-rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.blg

clean : partial_clean
	-rm *.pdf

dist : all partial_clean
	tar czf docs.tgz *.pdf


.PHONY : partial_clean clean all $(TRGS)
