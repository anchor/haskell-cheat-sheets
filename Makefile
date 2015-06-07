CHEAT_SHEETS=$(wildcard *.tex)
PDFS=$(CHEAT_SHEETS:tex=pdf)

all: $(PDFS)
clean:
	rm -f $(PDFS)
	rm -f *.aux *.log
	rm -rf _minted-*/

%.pdf: %.tex common/*.tex
	pdflatex -shell-escape $< -o $@

all.pdf: $(PDFS)
	pdfunite $(PDFS) all.pdf
