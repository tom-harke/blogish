#!/usr/bin/make -f

test: calkin-wilf.md.hs
	ghci $<

%.md.hs: %.md
	./unlit.pl < $*.md > $*.md.hs
