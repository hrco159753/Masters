all: diplomski.tex fer.bst fer.cls literatura.bib
	mkdir -p build
	pdflatex --output-directory=build $<
	bibtex build/$(basename $<).aux
	pdflatex --output-directory=build $<
	pdflatex --output-directory=build $<

clean:
	rm -rf build
