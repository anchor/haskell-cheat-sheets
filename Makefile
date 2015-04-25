CHEAT_SHEETS=$(wildcard *.tex)
PDFS=$(CHEAT_SHEETS:tex=pdf)

all: $(PDFS)
clean:
	rm -f $(PDFS)

%.pdf: %.tex common/*.tex
	pdflatex -shell-escape $< -o $@
	rm *.aux *.log
	rm -rf _minted-*
