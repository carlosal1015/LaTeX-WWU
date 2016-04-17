compile:
	./\!deploy/compile_all.sh
help:
	@echo 'Makefile for automatic LaTeX compilation                                  '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make compile	                        generate all files				 '
	@echo '   make build	                        generate all files (for travis)	 '
	@echo '                                                                          '


build:
	# sudo docker run -it -v $(BASEDIR):/var/texlive texlive sh -c "latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -f -interaction=nonstopmode $(TEXFILE)"
	echo '\\tikzexternaldisable' >> \!config/mitschrift_headings.tex
	# cat \!config/mitschrift_headings.tex
	echo '\\tikzexternaldisable' >> \!config/PhistScript.tex
	docker run -it --rm -v $(CURDIR):/var/texlive  texlive sh -c "./\!deploy/compile_all.sh"


.PHONY: compile help build
