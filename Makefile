all: excel_refcard_en_a4.pdf excel_refcard_en_a4_letter.pdf

excel_refcard_en_a4.pdf: excel_refcard_en.tex
	pdflatex $<
	mv excel_refcard_en.pdf $@

excel_refcard_en_a4_letter.pdf: excel_refcard_en.tex
	pdflatex $<

excel_refcard_en_a4.tex: excel_refcard_en.tex excel_refcard_en_letter.patch
	cp $< $@
	patch $@ excel_refcard_en_letter.patch

clean:
	rm -f *.out
	rm -f *.log
	rm -f *.aux

distclean: clean
	rm -f excel_refcard_en_letter.tex
	rm -f *.pdf

.PHONY: all clean distclean