# 06 — Repetição e estado

[Plano](../docs/plano-de-estudo.md) · Anterior: [05](05-decisoes.md) · Próximo: [07](07-strings.md)

**Meta:** escolher laços e rastrear o que muda em cada iteração. Sessões 12–14; exige 05.

```bash
for ((i=1; i<=4; i++)); do
    printf '%s\n' "$((i * 3))"
done
```

`for item in ...` percorre itens; `for ((início; condição; passo))` conta; `while` repete enquanto a condição tem sucesso; `until` repete enquanto falha. `break` encerra e `continue` pula o restante da iteração. Uma atualização ausente no `while` pode impedir o término.

Para uma linha por vez: `while IFS= read -r linha; do ...; done < arquivo`. Para arquivo cujo último registro não tem quebra final, use `while IFS= read -r linha || [[ -n $linha ]]; do ...; done < arquivo`. Um `comando | while ...` pode executar o laço em subshell: alterações de variáveis podem não persistir fora dele. Para nomes de arquivos arbitrários, a estratégia muda (por exemplo, NUL com `find -print0`); não divida a saída de `ls`.

## Prática autoral

1. **06.1 — Contagem:** mostre de 3 a 17 inclusive usando `for` e `while`. Esperado: 15 valores; primeiro 3, último 17. Faça uma versão regressiva.
2. **06.2 — Linhas:** mostre múltiplos de 3 de 0 a 45 com 4 números por linha, separados por um espaço e sem espaço ao fim da linha. Esperado: 16 números, 4 linhas. Varie o limite para deixar a última linha incompleta e ainda assim terminá-la com `\n`.
3. **06.3 — Sentinela:** leia inteiros de 0 a 99 até receber `fim`; mostre soma e quantidade. Entrada `2`, `5`, `fim` → soma 7, quantidade 2; `fim` imediato → ambos 0. Entrada inválida deve ser recusada sem entrar na soma. EOF deve encerrar sem laço infinito.
4. **06.4 — Recorrência:** gere n termos de uma sequência que começa em `2, 3` e soma os dois anteriores para obter o próximo. `n=1 → 2`; `n=2 → 2 3`; `n=5 → 2 3 5 8 13`. Aceite apenas n de 1 a 30. Faça tabela com índice e estados antes/depois; depois adapte seu raciocínio para três estados na lista local.

**Checkpoint cumulativo:** tente a lista 04 local. Separe valor exibido, número de itens e contador de coluna; não são sempre a mesma variável. Explique por que atualizações sequenciais de uma recorrência podem destruir o valor que ainda será necessário. Teste todos os limites do [mapa](../docs/mapa-das-listas.md).
