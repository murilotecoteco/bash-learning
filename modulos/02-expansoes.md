# 02 — Variáveis, aspas e expansões

[Plano](../docs/plano-de-estudo.md) · Anterior: [01](01-terminal.md) · Próximo: [03](03-entrada-saida.md)

**Meta:** prever quais argumentos um comando recebe. Sessões 4–5; exige 01.

```bash
nome='Lua Azul'
printf '<%s>\n' "$nome"
printf '<%s>\n' '$nome'
agora=$(date +%Y)
printf 'Ano: %s\n' "$agora"
```

A atribuição não tem espaços ao redor de `=`. Aspas simples preservam o texto; duplas permitem expansão e preservam espaços como parte do argumento. Fora de aspas, o resultado de uma expansão pode sofrer separação em palavras e expansão de padrões. `$(...)` captura stdout e remove quebras de linha finais. Isso é diferente de `$((...))`, que calcula.

`*.txt` é glob de nomes de arquivos; não é expressão regular. `{1..4}` é expansão de chaves; ocorre antes da expansão de variáveis. Por isso `{1..$n}` não cria automaticamente uma faixa dinâmica. Prefira um laço aritmético para limites variáveis.

## Prática autoral

1. **02.1 — Argumento composto:** chame `exemplos/argumentos.sh` com `Lua Azul` entre aspas e sem aspas. Preveja e confirme 1 e 2 argumentos.
2. **02.2 — Vazio:** passe `""` e depois nenhum argumento ao mesmo exemplo. Mostre por que um argumento vazio difere de zero argumentos.
3. **02.3 — Padrão literal:** imprima literalmente `*.txt` e depois expanda esse padrão numa pasta de laboratório com dois arquivos `.txt`. Explique por que as saídas diferem e o que acontece quando não há correspondência nas opções padrão do Bash.
4. **02.4 — Texto seguro:** receba um nome como `100% pronto` e imprima exatamente esse texto. Use `printf '%s\n' "$nome"`, mantendo o formato separado do dado.

**Fechamento:** explicar a entrada com espaços sem dizer apenas “é boa prática usar aspas”. Mostre quais argumentos chegam ao comando. Não use `eval` para executar textos recebidos.
