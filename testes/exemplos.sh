#!/usr/bin/env bash
set -u
raiz=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd) || exit 1
cd -- "$raiz" || exit 1
temporario=$(mktemp -d) || exit 1
trap 'rm -f -- "$temporario/saida" "$temporario/erro"; rmdir -- "$temporario"' EXIT
falhas=0
casos=0

conferir() {
    local descricao=$1 esperado_status=$2 esperado_saida=$3 esperado_erro=$4
    shift 4
    local status
    casos=$((casos + 1))
    "$@" > "$temporario/saida" 2> "$temporario/erro"
    status=$?
    if (( status != esperado_status )) ||
        ! cmp -s "$temporario/saida" <(if [[ -n $esperado_saida ]]; then printf '%s\n' "$esperado_saida"; fi) ||
        ! cmp -s "$temporario/erro" <(if [[ -n $esperado_erro ]]; then printf '%s\n' "$esperado_erro"; fi); then
        printf 'FALHOU: %s (status obtido %s)\n' "$descricao" "$status" >&2
        falhas=$((falhas + 1))
    fi
}

conferir 'sem argumentos' 0 'Quantidade: 0' '' bash exemplos/argumentos.sh
conferir 'espacos e vazio' 0 $'Quantidade: 3\nArgumento 1: <Ana Maria>\nArgumento 2: <>\nArgumento 3: <100%>' '' bash exemplos/argumentos.sh 'Ana Maria' '' '100%'
conferir 'limite inferior' 0 'Minutos duplicados: 2' '' bash exemplos/validacao.sh 1
conferir 'limite superior' 0 'Minutos duplicados: 24' '' bash exemplos/validacao.sh 12
for entrada in 0 13 -1 abc '' 08 999999999999999999999999; do
    conferir "invalido <$entrada>" 2 '' 'Informe um inteiro de 1 a 12 sem zeros iniciais.' bash exemplos/validacao.sh "$entrada"
done
conferir 'ausente' 2 '' 'Uso: bash exemplos/validacao.sh DURACAO_DE_1_A_12' bash exemplos/validacao.sh
conferir 'argumentos excedentes' 2 '' 'Uso: bash exemplos/validacao.sh DURACAO_DE_1_A_12' bash exemplos/validacao.sh 1 2
if (( falhas > 0 )); then
    printf '%s de %s testes falharam.\n' "$falhas" "$casos" >&2
    exit 1
fi
printf '%s testes dos exemplos passaram.\n' "$casos"
