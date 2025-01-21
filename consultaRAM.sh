#! /bin/bash

# Definimos o caminho para o arquivo de saída
output_file="/home/gpassos/bashScript/top_processes/top_processes_$(date +\%Y\%m\%d_\%H\%M).txt"

# Listamos os 15 processos com maior consumo de memória e salvamos no arquivo de saída
ps -e -o pid,%mem --sort=-%mem | head -n 16 > "$output_file"