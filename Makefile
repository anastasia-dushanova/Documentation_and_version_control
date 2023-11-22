all: document.pdf

MAIN = document
TEXT_SOURCES = Makefile \
				document.tex\
				biblio.bib

document.pdf: $(TEXT_SOURCES)
				pdflatex document
				biber document
				pdflatex document
				pdflatex document

# all: run

# run:
# 	pandoc -s document.tex --bibliography=biblio.bib -o output_word_document.docx