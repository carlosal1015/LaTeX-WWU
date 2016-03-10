#!/usr/bin/env bash
declare -a arr=("Topo2_WS15/topologie_2" "Topo1_WS14/topologie_1" "PDGL1_SS14/PDGL1" "OpAlg_WS15/operatoralgebren" "LA2_SS16/LA2" "LA2_SS13/lineare_algebra2" "LA1_WS12/lineare_algebra1" "KTheorie_SS15/K-Theorie" "HoehAlg1_SS14/hoehere_algebra" "FunkAna_WS14/funktional_analysis" "EZT_WS14/EZT" "EKK_SS15/EKK" "EinfAlg_WS13/algebra" "DiffMa_SS14/diff_ma" "DiffGeo_WS14/diff_geo" "CAT0_WS15/CAT0" "AnaTopGeo_SS14/ana_top_geo" "Ana3_WS13/analysis3" "Ana2_SS15/Analysis2" "Ana2_SS13/analysis2" "Ana1_WS12/analysis1")
for i in "${arr[@]}"
do
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done

declare -a arr2=("Fima_WS14/Fima_WS14" "EinfAlg_WS14/Einf_Algebra") # "ModRed_WS15/Modellreduktion"
for i in "${arr2[@]}"
do
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done
exit 0

