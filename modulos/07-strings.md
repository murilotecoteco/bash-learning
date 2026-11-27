# 07 — Strings e apresentação

[Plano](../docs/plano-de-estudo.md) · Anterior: [06](06-repeticao.md) · Próximo: [08](08-arrays.md)

**Meta:** tratar textos preservando seus limites. Sessões 15–16; exige 06.

```bash
nome='relatorio.final.txt'
printf 'Tamanho: %s\n' "${#nome}"
printf 'Sem sufixo: %s\n' "${nome%.txt}"
printf 'Maiusculas: %s\n' "${nome^^}"
```

`${texto:inicio:quantidade}` extrai parte do texto; `${texto/padrao/substituto}` troca a primeira ocorrência e `${texto//padrao/substituto}` todas. `${texto#padrao}` e `${texto##padrao}` removem prefixos; `%` e `%%` removem sufixos, usando correspondência curta/longa. São padrões de shell, não regex. Teste primeiro com ASCII; localidade influencia contagem e maiúsculas de caracteres acentuados.

## Prática autoral

1. **07.1 — Identificador:** transforme espaços em `_` e letras ASCII em minúsculas, mantendo outros caracteres. `Ana Maria → ana_maria`; vazio → vazio. Não execute o texto transformado.
2. **07.2 — Nome e extensão:** dado um nome simples de arquivo, separe o último sufixo. `relatorio.final.txt → relatorio.final | txt`. Defina casos para nome sem ponto, `.perfil` e ponto final antes de implementar.
3. **07.3 — Substituição:** em `a-b-c`, troque primeiro só o primeiro hífen e depois todos por `/`. Esperado: `a/b-c` e `a/b/c`. Explique a sintaxe usada.
4. **07.4 — Plural:** produza uma frase para quantidade de mensagens usando singular apenas para 1. Casos 0, 1 e 2. Combine depois com a decomposição decimal da lista local sem copiar a frase integral da lista.

**Fechamento:** explicar por que remover um sufixo não renomeia arquivo algum; é uma transformação de variável. Use `printf` com formato fixo para qualquer entrada que possa conter `%`.
