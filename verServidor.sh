#! /bin/bash
# codigo verifica o status do servidor web nginx

if pgrep nginx &> /dev/null
then
    echo "Nginx esta operando $( date +"%Y-%m-%d%H:%M:%S")"
else
    echo "Nginx fora de operacao $( date +"%Y-%m-%d%H:%M:%S")"
fi