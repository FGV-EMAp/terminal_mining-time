#!/bin/bash
head -qn1 ../Dados/machado/*/* | sed -E 's/(,|.)htm//g' | cut -d' ' -f2- | sed -E 's/,([0-9]{4})/ \1/g' | awk '{print $NF,$0}' | LC_ALL=C sort -n | cut -d' ' -f2- > resposta_ex_3