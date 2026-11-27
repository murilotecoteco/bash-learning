#!/usr/bin/env bash
# Checa sintaxe; só executa os exemplos conhecidos, nunca as tentativas do aluno.
set -u
raiz=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd) || exit 1
cd -- "$raiz" || exit 1

falhas=0
total=0
while IFS= read -r -d '' arquivo; do
    total=$((total + 1))
    if ! bash -n "$arquivo"; then
        falhas=$((falhas + 1))
    fi
done < <(find scripts exemplos testes exercicios -type f -name '*.sh' -print0)
printf 'Sintaxe verificada: %s scripts\n' "$total"

if command -v shellcheck >/dev/null 2>&1; then
    while IFS= read -r -d '' arquivo; do
        if ! shellcheck "$arquivo"; then
            falhas=$((falhas + 1))
        fi
    done < <(find scripts exemplos testes exercicios -type f -name '*.sh' -print0)
else
    printf 'ShellCheck nao instalado; analise estatica adicional nao executada.\n'
fi

if ! bash testes/exemplos.sh; then
    falhas=$((falhas + 1))
fi
if (( falhas > 0 )); then
    printf 'Falhas encontradas: %s\n' "$falhas" >&2
    exit 1
fi
printf 'Verificacao concluida. Isso nao avalia dominio ou corrige desafios.\n'
