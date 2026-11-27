#!/usr/bin/env bash
# Exemplo de preservação de argumentos; não resolve um desafio das listas.
printf 'Quantidade: %s\n' "$#"
indice=1
for argumento in "$@"; do
    printf 'Argumento %s: <%s>\n' "$indice" "$argumento"
    indice=$((indice + 1))
done
