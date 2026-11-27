# 11 — Depuração, integração e autonomia

[Plano](../docs/plano-de-estudo.md) · Anterior: [10](10-tui.md)

**Meta:** resolver sem depender de um exemplo aberto. Sessões 23–24; exige 00–10.

Para investigar uma falha: reproduza a menor entrada, escreva esperado/observado, confira sintaxe (`bash -n`), observe execução (`bash -x`) e acompanhe variáveis no papel. ShellCheck ajuda a encontrar problemas de quoting e outras construções; não prova a lógica do programa. `set -e` tem exceções conforme o contexto: não o adicione como remédio universal. `pipefail`, quando habilitado, muda o status de pipelines; pratique conscientemente antes de depender dele.

## Prática autoral

1. **11.1 — Caça ao erro:** faça cópias temporárias de um script seu com três falhas separadas: aspas removidas de argumento composto, condição de laço com limite errado e status lido tarde demais. Encontre cada falha com uma entrada que a exponha. Corrija antes de versionar o arquivo `.sh`.
2. **11.2 — Testes:** monte uma tabela com pelo menos 8 casos para 05.1 e automatize execução, comparação de stdout/stderr e status. Uma saída correta com status errado também deve falhar no teste.
3. **11.3 — Projeto:** implemente o [gerenciador de sessões](../exercicios/projeto-final.md). Demonstre os fluxos e guarde o roteiro de teste junto da tentativa.
4. **11.4 — Simulado:** sem solução aberta, crie (a) conversor de segundos não negativos em minutos e segundos, (b) classificador de um inteiro de 0 a 50 em baixo (0–9), médio (10–29) ou alto (30–50), (c) contador regressivo de n até 0 com 3 valores por linha, n entre 0 e 20. Tempo sugerido: 60–90 min. Caso tenha usado dica, registre e refaça uma variação depois.

## Avaliação final

Para cada parte, dê 0 (não demonstrado), 1 (com ajuda) ou 2 (independente): contrato e validação; cálculo/fluxo; aspas e argumentos; testes normais/limites/inválidos; explicação e adaptação. Alvo: pelo menos 8/10 **e** nenhum zero em validação ou fluxo. O resultado das listas originais deve ser avaliado separadamente com seus próprios critérios.

Volte ao módulo da dificuldade se não atingir o alvo. Faça outra versão com números/limites diferentes 24–72 horas depois. Marque “retido” somente após essa recuperação. Ao concluir, escolha extensões como `getopts`, testes com Bats, sinais e `trap` ou automação de arquivos, conforme a necessidade; elas não bloqueiam a meta inicial.
