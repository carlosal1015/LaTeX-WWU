#!/usr/bin/env bash
declare -a arr=("Topo2_WS15/topologie_2" "Topo1_WS14/topologie_1" "PDGL1_SS14/PDGL1" "OpAlg_WS15/operatoralgebren" "LA2_SS16/LA2" "LA2_SS13/lineare_algebra2")
for i in "${arr[@]}"
do
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done

# declare -a arr2=("ModRed_WS15/Modellreduktion")
# for i in "${arr2[@]}"
# do
# 	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
# done
exit 0

