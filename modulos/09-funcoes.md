# 09 — Funções e contratos

[Plano](../docs/plano-de-estudo.md) · Anterior: [08](08-arrays.md) · Próximo: [10](10-tui.md)

**Meta:** separar entrada, validação, cálculo e apresentação. Sessões 19–20; exige 08.

```bash
saudar() {
    local nome=$1
    printf 'Ola, %s!\n' "$nome"
}
mensagem=$(saudar 'Lua Azul')
printf '%s\n' "$mensagem"
```

Funções têm parâmetros próprios durante a chamada. `local` limita a variável à função (com escopo dinâmico em Bash). `return` comunica um status de 0 a 255; não é a forma de devolver um resultado numérico arbitrário como em C. Produza dados em stdout e erros em stderr. `$(funcao)` captura dados em uma subshell: não dependa de mudanças globais feitas ali.

Um predicado como `validar_entrada` pode retornar sucesso/falha; uma função de cálculo pode produzir o resultado; a função principal decide quando sair. Evite `exit` em helpers que deveriam permitir ao chamador tratar o erro. Defina as funções antes de chamá-las.

## Prática autoral

1. **09.1 — Validador:** função aceita decimal canônico de 0 a 99 e retorna apenas status. Teste `0`, `99`, `100`, `-1`, `abc` e `08` (rejeitado pelo contrato canônico), sem imprimir resultados misturados.
2. **09.2 — Transformação:** função recebe um nome e devolve uma saudação em stdout. Capture a saída e teste `"Ana Maria"`; o nome inteiro deve permanecer.
3. **09.3 — Refatorar:** reescreva 05.4 em funções de validação, operação e apresentação; preserve o contrato e todos os resultados anteriores. Escreva a tabela de entradas/saídas antes de mudar o código.
4. **09.4 — Escopo:** crie variável externa `valor=10`, altere uma variável `local valor` numa função e confirme que a externa continua 10. Compare chamada direta e captura de stdout e explique o comportamento observado.

**Checkpoint:** escolher stdout ou status para cada responsabilidade e justificar. Retome um desafio com entrada inválida e demonstre que a função principal decide como reportar a falha.
