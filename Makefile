# Build the PDF handout.
# Usage:
#   make            # builds problem/main.pdf
#   make clean
#   make clobber

LATEXMK=latexmk
TEXDIR=problem
MAIN=$(TEXDIR)/main.tex
PDF=$(TEXDIR)/main.pdf

all: $(PDF)

$(PDF): $(MAIN) $(TEXDIR)/problem.tex
	$(LATEXMK) -pdf -cd -interaction=nonstopmode -halt-on-error $(MAIN)

clean:
	$(LATEXMK) -c -cd $(MAIN)

clobber:
	$(LATEXMK) -C -cd $(MAIN)
