# 08 — Arrays e coleções

[Plano](../docs/plano-de-estudo.md) · Anterior: [07](07-strings.md) · Próximo: [09](09-funcoes.md)

**Meta:** armazenar vários itens sem perder espaços. Sessões 17–18; exige 07.

```bash
nomes=('Ana Maria' 'Joao' 'Lua Azul')
printf 'Quantidade: %s\n' "${#nomes[@]}"
for nome in "${nomes[@]}"; do
    printf '<%s>\n' "$nome"
done
```

`${nomes[0]}` acessa um item; `"${nomes[@]}"` preserva os itens; `"${!nomes[@]}"` percorre índices existentes. Quantidade de itens não é o maior índice mais 1: arrays podem ser esparsos. `nomes+=("novo item")` acrescenta; `unset 'nomes[1]'` remove esse índice. `declare -A` cria mapa associativo (Bash 4+). Sua ordem de iteração não deve definir uma saída que precisa ser estável.

## Prática autoral

1. **08.1 — Lista:** guarde três títulos com espaços e imprima um por linha. Esperado: exatamente três linhas, não uma linha por palavra.
2. **08.2 — Estatística:** em `(4 9 2 9)`, calcule soma, mínimo e máximo com laço. Esperado: 24, 2 e 9. Defina a resposta para array vazio sem inventar um mínimo zero.
3. **08.3 — Índices:** use itens nos índices 0, 3 e 8, remova o índice 3 e apresente índices restantes e quantidade. Esperado: índices 0/8 e quantidade 2; não percorra `0..quantidade-1` como se fossem contíguos.
4. **08.4 — Frequência:** conte `azul verde azul vermelho verde azul` num array associativo. Esperado: azul 3, verde 2, vermelho 1, sem exigir ordem. Primeiro limite a entrada a essas palavras conhecidas; depois discuta como validar categorias externas.

**Fechamento:** refaça 08.1 com um item vazio entre dois não vazios e prove que continuam sendo três itens. Explique a diferença entre `"${vetor[@]}"` e `"${vetor[*]}"`.
