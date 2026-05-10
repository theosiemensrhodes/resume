.PHONY: all resume clean

all: resume

resume: resume.tex
	xelatex resume.tex
	xelatex resume.tex

clean:
	rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz *.bbl *.blg *.bcf *.run.xml

watch:
	latexmk -pvc -xelatex resume.tex
