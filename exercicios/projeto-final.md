# Projeto integrador — Gerenciador de sessões de estudo

Construa seu próprio `exercicios/tentativas/gerenciador.sh`. O objetivo é reunir o conteúdo aprendido, não cadastrar dados reais. Use registros fictícios. Esta página especifica o problema; a implementação é sua.

## Contrato

O script tem dois modos:

```text
bash gerenciador.sh resumo 20 35 45
bash gerenciador.sh menu
```

`resumo` aceita de 1 a 20 durações inteiras canônicas entre 1 e 240 minutos. Imprime uma linha por campo: `sessoes=N`, `total=N`, `minimo=N`, `maximo=N`. Para `20 35 45`, os campos devem ser 3, 100, 20 e 45. Resultado vai a stdout, uso e erros a stderr. Sucesso usa status 0; argumento inválido usa status 2.

`menu` permite cadastrar uma sessão com título e duração, listar sessões, mostrar resumo e sair. Título pode conter espaços, mas não ficar vazio. Durante uma execução, armazene títulos e durações em arrays; não é necessário salvar em disco. Aceite no máximo 20 sessões e informe quando o limite for atingido. Duas sessões podem ter o mesmo título.

Uma tentativa inválida não muda as sessões existentes. Lista vazia deve produzir `Nenhuma sessao`; resumo sem registros deve produzir `Sem dados`. EOF encerra o menu. O modo texto é obrigatório. A versão visual com `dialog` é a extensão do módulo 10: cancelar um cadastro deve voltar ao menu sem criar registro.

## Construção em etapas

1. Escreva o contrato e três exemplos no papel. Faça o modo `resumo` primeiro.
2. Separe validação e cálculo em funções. Não misture mensagens de interface nos dados retornados.
3. Faça o menu texto e os arrays; teste cada operação isoladamente.
4. Adicione a versão `dialog`, se instalado, preservando a lógica.
5. Teste regressão e explique uma escolha de projeto que precisou mudar.

## Roteiro de aceitação

| Entrada/ação | Resultado verificável |
| --- | --- |
| `resumo 20 35 45` | sessões 3, total 100, mínimo 20, máximo 45; status 0 |
| `resumo 1` | quatro campos com 1 |
| `resumo 240 240` | sessões 2, total 480, mínimo/máximo 240 |
| `resumo` sem duração | stderr de uso; status 2 |
| `resumo 0`, `241`, `abc`, `08` ou `""` | erro conforme contrato canônico; status 2; nenhum resumo parcial |
| Mais de 20 durações | erro de quantidade; status 2 |
| Menu: listar sem cadastrar | `Nenhuma sessao` |
| Menu: resumo sem cadastrar | `Sem dados` |
| Cadastrar `Revisao de Bash`, duração 25 | título preservado, uma sessão e total 25 |
| Tentar cadastrar duração inválida | contagem e total inalterados |
| Cancelar no dialog ou sair no menu | retorna ao ponto definido sem cadastro extra |
| EOF no menu | encerra sem repetir infinitamente |

## Entrega e avaliação

Entregue script, roteiro executado e uma explicação de como valida entradas antes da aritmética. Rode `bash -n`, o verificador do repo e ShellCheck se disponível; registre o que foi executado de fato. Asserções manuais de TUI não devem ser descritas como testes automatizados.

Depois altere o máximo de duração para 180 e inclua média inteira no resumo, refazendo testes de fronteira. Se conseguir essa variação sem copiar, ela é evidência de transferência do aprendizado.
