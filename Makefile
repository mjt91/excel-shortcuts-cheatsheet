all: fortran_refcard_a4.pdf

fortran_refcard_a4.pdf: excel_refcard_en.tex
	pdflatex $<
	mv excel_refcard_en.pdf $@

# fortran_refcard_letter.pdf: fortran_refcard_letter.tex
# 	pdflatex $<

# fortran_refcard_letter.tex: fortran_refcard.tex fortran_refcard_letter.patch
# 	cp $< $@
# 	patch $@ fortran_refcard_letter.patch

clean:
	rm -f *.out
	rm -f *.log
	rm -f *.aux

distclean: clean
	rm -f fortran_refcard_letter.tex
	rm -f *.pdf

.PHONY: all clean distclean