FILENAME = 001-report
BIBFILENAME = report

PDF_VIEWER = okular

CC = pdflatex
CFLAGS = -jobname=report -shell-escape -file-line-error -halt-on-error #-papersize=a4
BIBCC = bibtex
BIBCFLAGS =
# Cibles et leurs actions
all: $(FILENAME).tex
	$(CC) $(CFLAGS) $(FILENAME)
	$(BIBCC) $(BIBCFLAGS) $(BIBFILENAME)
	$(CC) $(CFLAGS) $(FILENAME)

open: $(FILENAME).pdf
	$(PDF_VIEWER) $(FILENAME).pdf

clean:
	rm -f *~ *.backup *.aux *.toc *.blg *.log *.out *.bbl *.dvi *.nav *.pyg *.snm *.lof *.acn *.glo *.ist *.lod *.lot *.tdo *-blx.bib *.run.xml 2>/dev/null
