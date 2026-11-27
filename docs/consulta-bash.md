# Consulta rápida depois da tentativa

| Necessidade | Construção |
| --- | --- |
| Variável com texto | `nome='Ana Maria'` |
| Mostrar texto | `printf '%s\n' "$nome"` |
| Ler preservando espaços e barras | `IFS= read -r linha` |
| Quantidade de argumentos | `$#` |
| Encaminhar argumentos | `comando "$@"` |
| Argumento opcional | `${1-}` (padrão só quando ausente) |
| Valor padrão para ausente ou vazio | `${1:-padrao}` |
| Capturar saída | `saida=$(comando)` |
| Aritmética inteira | `resultado=$((a + b))` após validar dados |
| Número validado maior que 3 | `((n > 3))` ou `[ "$n" -gt 3 ]` |
| String vazia | `[[ -z $texto ]]` |
| Arquivo regular | `[[ -f $caminho ]]` |
| Regex de dígitos | `[[ $texto =~ ^[0-9]+$ ]]` |
| Percorrer itens | `for item in "${itens[@]}"; do ...; done` |
| Contagem dinâmica | `for ((i=0; i<n; i++)); do ...; done` |
| Repetir enquanto sucesso | `while condicao; do ...; done` |
| Diagnóstico | `printf '%s\n' 'erro' >&2` |
| Sair com erro | `exit 2` |
| Status anterior | `status=$?` imediatamente após o comando |
| Tamanho de texto | `${#texto}` |
| Quantidade de itens | `${#itens[@]}` |
| Função | `nome() { local valor=$1; ...; }` |

As reticências são marcadores explicativos, não código para copiar. Regex valida formato; confira faixa e comprimento antes de calcular. Validação de números com sinal e zeros iniciais depende do contrato do exercício.

## Armadilhas para prever

- `nome = valor` tenta executar um comando chamado `nome`.
- Aspas simples não expandem `$nome`; aspas duplas expandem preservando o argumento.
- `$((7 / 2))` é 3; `bc` com precisão é uma alternativa para frações.
- `{1..$n}` não vira automaticamente uma faixa numérica dinâmica.
- `return 300` não devolve o número 300 como resultado de função; o status é limitado a 8 bits.
- `((contador++))` pode ter status 1 quando o valor anterior era zero.
- `grep` com nenhuma correspondência usa status 1; isso não é o mesmo que falha de sintaxe.
- Captura `$(...)` remove quebras finais e roda em subshell no caso comum; mudanças de variáveis ali não persistem no chamador.
- Um pipeline normalmente tem o status do último comando; `pipefail` muda a regra.
- `set -e` não significa “capturar todo erro”. Aprenda as exceções antes de usá-lo.
- `bash -n` e ShellCheck não provam a lógica; teste comportamento e limites.

## Tradução de C para Bash

Em Bash a condição de `if` é status de comando, a linguagem organiza execução de programas e expansões, e dados precisam ser protegidos como argumentos. `local`, arrays e `$((...))` ajudam, mas não tornam Bash uma versão de C. Faça pequenos experimentos quando um hábito da outra linguagem produzir algo inesperado.
