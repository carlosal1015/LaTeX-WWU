#!/usr/bin/env bash

# files to be typesetted by xelatex compiler
declare -a arr=("WTGraph_SS16/WTG" 
								"PDGL1_SS16/pdeskript" 
								"AlgKT_SS16/algebraische_KTheorie" 
								"LieGrp_SS16/liegruppen" 
								"OpAlg2_SS16/operatoralgebren2" 
								"Topo2_WS15/topologie_2" 
								"Topo1_WS14/topologie_1" 
								"PDGL1_SS14/PDGL1" 
								"OpAlg_WS15/operatoralgebren" 
								"LA2_SS13/lineare_algebra2" 
								"LA1_WS12/lineare_algebra1" 
								"KTheorie_SS15/K-Theorie" 
								"HoehAlg1_SS14/hoehere_algebra" 
								"FunkAna_WS14/funktional_analysis" 
								"EinfAlg_WS13/algebra" 
								"DiffMa_SS14/diff_ma" 
								"DiffGeo_WS14/diff_geo" 
								"AnaTopGeo_SS14/ana_top_geo" 
								"Ana3_WS13/analysis3" 
								"Ana2_SS15/Ana2" 
								"Ana2_SS13/analysis2" 
								"Ana1_WS12/analysis1" 
								"MadsenW_WS16/madsen_weiss"
								"Topo3_SS17/topologie_3")
for i in "${arr[@]}"
do
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done

# files to be typesetted by pdflatex compiler
declare -a arr2=("ZZT_SS17/ZZT_SS17" 
								"Fima_WS14/Fima_WS14" 
								"EinfAlg_WS14/Einf_Algebra" 
								"ModRed_WS15/Modellreduktion" 
								"CAT0_WS15/CAT0_WS1516" 
								"EZT_WS14/EZT_WS1415" 
								"EKK_SS15/EKK_SS15" 
								"MC_SS17/MC_SS17" 
								"LA2_SS16/LA2_SS16") 
for i in "${arr2[@]}"
do
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -silent -f -interaction=nonstopmode "$i.tex";
done
exit 0

