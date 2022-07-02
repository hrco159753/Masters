all: diplomski.tex fer.bst fer.cls literatura.bib
	mkdir -p build
	pdflatex --output-directory=build $<
	bibtex build/$(basename $<).aux
	pdflatex --output-directory=build $<
	pdflatex --output-directory=build $<

package_latex: conclusions.tex diplomski.tex introduction.tex modern_vs_old.tex my_benchmark.tex noncited_literature.tex results.tex fer.cls fer.bst literatura.bib
	zip source_text.zip $^

clean:
	rm -rf build source_text.zip

