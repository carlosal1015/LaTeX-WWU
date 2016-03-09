#!/usr/bin/env bash
declare -a arr=("Topo2_WS15/topologie_2.tex" )
for i in "${arr[@]}"
do
	latexmk -xelatex -cd -silent "$i";
done
exit 0

