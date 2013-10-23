doc.pdf : doc.tex slownik_pojec.tex titlepage.tex rewers.tex zalozenia.tex
	        xelatex doc.tex && xelatex doc.tex

all : doc.pdf

clean :
	        -rm -f *.aux *.log *.nav *.out *.snm *.pdf *.toc *.vrb *.bbl *.blg

.PHONY : clean all
