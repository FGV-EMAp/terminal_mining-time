#!/bin/bash
find ../Dados/machado -name '*.txt' -exec cat {} + | wc -w > resposta_ex_1