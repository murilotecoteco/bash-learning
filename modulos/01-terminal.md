# 01 — Navegação, arquivos e pipelines

[Plano](../docs/plano-de-estudo.md) · Anterior: [00](00-ambiente.md) · Próximo: [02](02-expansoes.md)

**Meta:** navegar, localizar arquivos e combinar comandos. Sessões 2–3; exige 00.

Um caminho absoluto começa em `/`; um relativo parte do diretório atual. `.` é o atual e `..` o pai. `pwd` mostra onde você está. Aprenda `ls -la`, `cd`, `mkdir -p`, `touch`, `cp`, `mv`, `cat`, `head`, `tail` e `chmod u+x`. Use apenas arquivos de laboratório ao praticar mudanças.

Execute na raiz do clone:

```bash
mkdir -p sandbox/terminal/entrada sandbox/terminal/saida
printf '%s\n' banana uva banana pera > sandbox/terminal/entrada/frutas.txt
sort sandbox/terminal/entrada/frutas.txt | uniq -c
wc -l < sandbox/terminal/entrada/frutas.txt
```

Preveja a saída antes de rodar. `|` conecta stdout à entrada do próximo comando; `>` grava substituindo o conteúdo; `>>` acrescenta; `<` fornece entrada. `grep` filtra linhas, `cut` seleciona campos, `tr` transforma caracteres. `sort | uniq` reúne duplicatas porque `uniq` só compara linhas adjacentes. `find` percorre uma árvore. Consulte `man` e `--help`.

## Prática autoral

1. **01.1 — Caminhos:** crie `sandbox/terminal/entrada/nome composto.txt`, entre em `saida/` e mostre o arquivo por caminho relativo e absoluto. Ambas as leituras devem coincidir.
2. **01.2 — Cópia:** copie `frutas.txt` para `saida/`, renomeie só a cópia e compare com `cmp`. Original e cópia devem existir com o mesmo conteúdo.
3. **01.3 — Filtro:** escreva um pipeline que mostre as frutas distintas em ordem e outro que conte as linhas contendo `banana`. Esperado: 3 frutas distintas e 2 linhas com banana.
4. **01.4 — Relatório:** use `find` para listar arquivos regulares da árvore de laboratório e grave em `sandbox/relatorio.txt` (fora da árvore consultada). Justifique por que a saída não deve ficar entre os arquivos contados.

**Fechamento:** refaça a árvore em outra subpasta e explique o caminho atual, o que cada pipe transporta e a diferença entre acrescentar e substituir. Não use `ls` para alimentar um laço de nomes de arquivos.
