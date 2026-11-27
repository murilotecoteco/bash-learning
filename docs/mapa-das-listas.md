# Mapa de competências para as listas locais

Base consultada em 26/11/2026: lista 02 (variáveis e aritmética) e lista 04 (repetição). Este documento identifica habilidades e casos para testar, sem transcrever os enunciados ou publicar soluções.

| Referência local | Competência principal | Preparação | Verificação a fazer na própria resposta |
| --- | --- | --- | --- |
| Lista 02, questão 1 | Limitar uma saída pseudoaleatória a um intervalo inclusivo | 04, desafio 04.4 | Várias execuções dentro da faixa; não exigir repetição exata ou distribuição perfeita |
| Lista 02, questão 2 | Argumentos, diferença e potência | 03–04, 04.1 | Ordem dos operandos, valores iguais e negativos |
| Lista 02, questão 3 | Fórmula e precisão decimal | 04, 04.3 | Valor de referência, temperatura negativa, arredondamento anunciado |
| Lista 02, questão 4 | Decomposição usando divisão e resto | 04, 04.2 | Zero, fronteira exata de unidade e unidade + 1 |
| Lista 02, questão 5 | Vários argumentos e produto | 03–04, 04.1 | Quantidade de argumentos, zero e sinal conforme domínio |
| Lista 04, questão 1 | Contagem inclusiva com duas estruturas | 06, 06.1 | Primeiro/último valor e total de iterações |
| Lista 04, questão 2 | Filtro por paridade e quebra de linha por contador | 04–06, 06.2 | Quantidade de itens por linha e última linha incompleta |
| Lista 04, questão 3 | Validação, decomposição decimal e plural | 04–07, 05.1 e 07.4 | Casos com 0/1/várias unidades; limite explicitamente interpretado |
| Lista 04, questão 4 | Recorrência com três estados e n termos | 06, 06.4 | n=1, 2, 3, 4; contar termos; preservar valores anteriores |

Na lista 04, questão 3, há uma tensão entre “menor que 1000” e a rejeição descrita apenas para “maior que 1000”. Confirme com o professor como tratar 1000. Enquanto isso, documente sua interpretação e teste 999, 1000 e 1001; não trate a hipótese como regra confirmada.

Na questão de recorrência, mantenha a ordem dos termos iniciais da lista original. Para valores grandes, Bash pode ultrapassar o limite do inteiro: teste apenas faixas que caibam ou anuncie um limite na sua solução.

## O que ainda não foi mapeado

Listas 01 e 03 não estavam entre os arquivos locais consultados. Os módulos 01–03 cobrem fundamentos do terminal e 05 cobre desvio de fluxo, mas isso não comprova cobertura de todas as questões dessas listas. Acrescente o mapeamento quando tiver os enunciados locais.

## Como comprovar autonomia

Para cada questão, registre: tentativa sem consulta, casos testados, ajuda recebida, explicação e uma variação inédita feita depois. Os números das questões servem para localizar o material privado; os arquivos originais continuam fora do Git.
