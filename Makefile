all: diplomski.tex fer.bst fer.cls literatura.bib *.tex
	mkdir -p build
	pdflatex --output-directory=build $<
	pdflatex --output-directory=build $<

clean:
	rm -rf build
