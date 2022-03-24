all: diplomski.tex fer.bst fer.cls literatura.bib
	mkdir build
	pdflatex --output-directory=build *.tex

clean:
	rm -rf build
