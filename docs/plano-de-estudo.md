# Plano de aprendizado de Bash

## Objetivo final

Receber um problema, identificar entradas, saídas e restrições, escolher os comandos e estruturas adequados, implementar um script e demonstrar que funciona com testes. A autonomia será medida resolvendo uma variação inédita do problema e explicando cada decisão.

O plano usa as duas listas baixadas (02 e 04) como referência de competências. Os assuntos dos slides 01–07 orientam a continuidade. As listas 01 e 03 não estavam disponíveis localmente: a cobertura delas só poderá ser confirmada quando seus conteúdos forem consultados. Não é necessário esperar isso para começar.

## Ponto de partida e ritmo

Faça primeiro o [diagnóstico](diagnostico.md). Não há domínio de Bash presumido. Sugestão: 24 sessões de 60–90 minutos, distribuídas em 4–6 semanas. Esses prazos são estimativas, não uma obrigação nem uma garantia. Se tiver menos tempo, faça sessões menores e mantenha a ordem das dependências.

| Módulo | Sessões | O que aprender | Entrega e evidência |
| --- | --- | --- | --- |
| [00 — Ambiente](../modulos/00-ambiente.md) | 1 | Bash, shebang, execução, documentação, sintaxe | Primeiro script executado de duas formas |
| [01 — Terminal](../modulos/01-terminal.md) | 2–3 | Caminhos, arquivos, permissões, filtros, pipes | Relatório de uma árvore de laboratório |
| [02 — Expansões](../modulos/02-expansoes.md) | 4–5 | Aspas, variáveis, glob, substituição de comandos | Nomes com espaços preservados como argumentos |
| [03 — Entrada e saída](../modulos/03-entrada-saida.md) | 6–7 | `read`, `printf`, parâmetros, códigos de saída | Contrato de argumentos e mensagens separadas |
| [04 — Aritmética](../modulos/04-aritmetica.md) | 8–9 | Operadores, divisão inteira, módulo, `bc`, RANDOM | Quatro desafios e primeira tentativa da lista 02 |
| [05 — Decisão](../modulos/05-decisoes.md) | 10–11 | `if`, `elif`, testes, regex, `case`, validação | Entradas inválidas rejeitadas antes do cálculo |
| [06 — Repetição](../modulos/06-repeticao.md) | 12–14 | `for`, `while`, `until`, estado, contadores | Tabela de rastreamento e tentativa da lista 04 |
| [07 — Strings](../modulos/07-strings.md) | 15–16 | Tamanho, fatias, padrões, substituições | Transformações de texto com espaços |
| [08 — Arrays](../modulos/08-arrays.md) | 17–18 | Índices, contagem, iteração, associativos | Coleção com itens inteiros e índices esparsos |
| [09 — Funções](../modulos/09-funcoes.md) | 19–20 | Parâmetros, `local`, stdout, `return`, composição | Script dividido em funções com testes próprios |
| [10 — TUI](../modulos/10-tui.md) | 21–22 | Menu texto, `select`, `dialog`, cancelamento | Menu que volta ou sai sem perder o controle |
| [11 — Integração](../modulos/11-integracao.md) | 23–24 | Depuração, regressão, projeto e simulado | Projeto final e resolução independente |

## Uma sessão de 75 minutos

1. **10 min:** recupere de memória dois conceitos anteriores; preveja uma saída.
2. **15 min:** leia um tópico e altere um exemplo para observar o comportamento.
3. **35 min:** resolva um desafio sem copiar código; descreva o algoritmo antes.
4. **10 min:** teste, encontre um caso que quebre a primeira tentativa e corrija.
5. **5 min:** anote evidências, dúvida e próximo passo no progresso.

Se travar por 15 minutos, peça primeiro uma pergunta orientadora. Depois uma dica conceitual, depois pseudocódigo e somente então um pequeno exemplo diferente. Refaça sem olhar após receber ajuda.

## Quando avançar

Cada módulo exige: prever corretamente um trecho, implementar o desafio de fechamento, explicar a escolha da estrutura e passar por casos normais e limites. A partir do módulo 05, inclua entradas inválidas. O código passar em uma única entrada não basta.

Use a escala no [progresso](progresso.md): não avaliado → com ajuda → independente → retido. Só marque independente após uma tentativa sem solução aberta. Só marque retido após refazer uma variação em outra sessão. Se falhar, volte ao conceito específico em vez de repetir todo o curso.

## Revisão espaçada

Após a primeira prática bem-sucedida de cada módulo, programe recuperação em **D+1, D+3, D+7 e D+14**, contando a partir desse dia. Em cada revisão: uma previsão de saída e uma variação curta escrita do zero. Registre a data apenas quando a revisão acontecer. Não preencha o diário como se revisões previstas já tivessem sido feitas.

Faça checkpoints cumulativos após 03 (argumentos e aspas), 06 (lógica e listas), 09 (organização) e 11 (transferência). Errou aspas no projeto final? Retome o 02 e teste o mesmo dado com espaços.

## Retorno às listas da UTFPR

Depois de 04, tente a lista 02 e marque o que depende de validação; depois de 05, refaça com tratamento de erros. Depois de 06, tente a lista 04. Consulte o [mapa](mapa-das-listas.md), que relaciona cada questão à habilidade exigida sem reproduzir a lista ou entregar suas soluções.

Para cada questão: escreva entradas/saídas, trace um caso à mão, implemente, teste e explique. Use primeiro o enunciado original local. Preserve decisões de interpretação quando houver ambiguidade.

## Opção de revisão concentrada

Se a prioridade for a avaliação anunciada para 30/11/2026, o período 26–29/11 pode servir como revisão de quem já demonstrou alguma base: 26 = diagnóstico e 00–03; 27 = 04–05 e lista 02; 28 = 06 e lista 04; 29 = 07–10 e simulado do 11. Isso **não substitui** a trilha completa para um iniciante. Faça apenas os blocos compatíveis com sua disponibilidade e mantenha as lacunas registradas; sono e pausas fazem parte do estudo.

## Conclusão

Considere o objetivo atingido quando conseguir resolver as duas listas disponíveis, explicar os testes e implementar uma variação inédita de aritmética, uma de decisão e uma de laço sem consultar soluções. Depois conclua o projeto integrador para consolidar strings, arrays, funções e TUI. A conclusão depende de evidência do aluno; este plano não marca nenhuma etapa como já aprendida.
