#!/usr/bin/env bash
# Diagnóstico de leitura: não instala dependências.
printf 'Bash: %s\n' "$BASH_VERSION"
if (( BASH_VERSINFO[0] < 4 )); then
    printf 'Esta trilha usa Bash 4 ou superior.\n' >&2
    exit 1
fi

for ferramenta in git sort uniq wc grep find; do
    if command -v "$ferramenta" >/dev/null 2>&1; then
        printf 'Disponivel: %s\n' "$ferramenta"
    else
        printf 'Verifique a ferramenta basica: %s\n' "$ferramenta" >&2
    fi
done
for ferramenta in bc dialog shellcheck; do
    if command -v "$ferramenta" >/dev/null 2>&1; then
        printf 'Opcional disponivel: %s\n' "$ferramenta"
    else
        printf 'Opcional ausente: %s (veja docs/ambiente.md)\n' "$ferramenta"
    fi
done
