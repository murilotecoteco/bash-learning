#!/usr/bin/env bash
# Exemplo análogo: valida a grafia de uma duração limitada antes de calcular.
if (( $# != 1 )); then
    printf 'Uso: bash exemplos/validacao.sh DURACAO_DE_1_A_12\n' >&2
    exit 2
fi

duracao=$1
if [[ ! $duracao =~ ^([1-9]|1[0-2])$ ]]; then
    printf 'Informe um inteiro de 1 a 12 sem zeros iniciais.\n' >&2
    exit 2
fi

printf 'Minutos duplicados: %s\n' "$((duracao * 2))"
