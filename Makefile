##
#
# Author: Nikolaus Mayer, 2019 (mayern@cs.uni-freiburg.de)
#
##

LATEX ?= pdflatex

SOURCES = $(wildcard *.tex)

TARGETS = $(addsuffix .pdf, $(basename $(SOURCES)))

.PHONY: all clean 

all: $(TARGETS)

clean:
	-rm *.pdf *.log *.aux

%.pdf: %.tex
	$(LATEX) $^ $@
	-rm *.log *.aux

