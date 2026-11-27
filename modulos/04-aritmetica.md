# 04 — Aritmética e decomposição de problemas

[Plano](../docs/plano-de-estudo.md) · Anterior: [03](03-entrada-saida.md) · Próximo: [05](05-decisoes.md)

**Meta:** converter uma regra matemática em passos testáveis. Sessões 8–9; exige 03.

```bash
itens=29
capacidade=6
printf 'Grupos: %s; sobra: %s\n' "$((itens / capacidade))" "$((itens % capacidade))"
printf 'Diferenca ao quadrado: %s\n' "$(((9 - 4) ** 2))"
```

`$((...))` calcula inteiros: `7/2` produz 3. `%` fornece resto e `**` potência. `((...))` avalia aritmética como comando e tem status 1 quando a expressão resulta em zero; esse status não significa automaticamente erro de cálculo. Não use esse fato sem entender sua interação com `set -e`.

Para decimais, `bc` é uma ferramenta externa. Se estiver disponível, compare `printf 'scale=3; 7/2\n' | bc` com a divisão nativa. `scale` regula casas em operações como divisão e não é uma regra geral de arredondamento. Defina a precisão esperada. Não use `$((5 / 9))` como fator de conversão decimal.

`RANDOM` gera inteiros pseudoaleatórios de 0 a 32767. Redução por módulo pode servir aos exercícios de faixa, mas traz viés se o tamanho da faixa não dividir o intervalo de origem. Não é fonte criptográfica. Entradas do usuário devem ser validadas antes da avaliação aritmética (05); números com zero inicial exigem cuidado com interpretação octal.

## Prática autoral

1. **04.1 — Expressão:** receba dois inteiros e calcule `3*a + 2*b`. Casos: `4 5 → 22`; `0 0 → 0`; `-2 3 → 0`. Declare a ordem dos argumentos e teste-a.
2. **04.2 — Duração:** decomponha minutos não negativos em horas completas e minutos restantes. `135 → 2 h e 15 min`; teste 0, 59, 60 e 61. Faça a conta à mão antes.
3. **04.3 — Escala decimal:** transforme uma leitura `x` pela regra `y = 1.5*x + 2`. Casos: `0 → 2`, `2 → 5`, `-4 → -4`. Escolha ferramenta decimal, anuncie duas casas na apresentação e teste frações. Se `bc` não estiver instalado, planeje o algoritmo e retome após instalá-lo conscientemente.
4. **04.4 — Sorteio:** produza um inteiro de 10 a 15 inclusive. Justifique a cardinalidade do intervalo e teste pelo menos 100 gerações. Todos devem ficar dentro da faixa; isso não prova uniformidade nem exige observar cada valor numa amostra curta.

**Fechamento:** faça a primeira tentativa da lista 02 local usando o [mapa](../docs/mapa-das-listas.md). Não publique os enunciados. Se travar nas contas, trace unidades e resultados intermediários; se travar nas entradas, retome 03. Após o 05, acrescente rejeição de dados inválidos e divisão por zero quando aplicável.
