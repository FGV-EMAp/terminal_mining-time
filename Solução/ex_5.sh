#!/bin/bash
for pasta in contos critica cronica miscelanea poesia romance traducao;
do
     cat ../Dados/machado/$pasta/*.txt >> obra_completa
done 

cat obra_completa | sed -E 's/[[:punct:]]* +/\n/g;s/.*/\L&/g' | sort | uniq -c | sort -n > resposta_ex_5
rm obra_completa