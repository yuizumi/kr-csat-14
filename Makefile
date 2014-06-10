.SUFFIXES: .tex .dvi .mp .mpx .pdf

.tex.dvi:
	platex $<
	platex $<

.mp.mpx:
	mpost $<

.dvi.pdf:
	dvipdfmx $<

all: 2014a.pdf

clean:
	rm -f *.[0-9]* *.aux *.dvi *.log *.mpx *.pdf

2014a.pdf: csatmath.sty 2014a-fig.mpx

.PHONY: clean
