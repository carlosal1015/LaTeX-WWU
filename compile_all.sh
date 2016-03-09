#!/usr/bin/env bash
declare -a arr=("Topo2_WS15/topologie_2" "Topo1_WS14/topologie_1" "PDGL1_SS14/PDGL1" "OpAlg_WS15/operatoralgebren")
for i in "${arr[@]}"
do
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done
exit 0

