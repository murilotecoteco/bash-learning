# 00 — Ambiente e primeiro script

[Plano](../docs/plano-de-estudo.md) · Próximo: [terminal](01-terminal.md)

**Meta:** distinguir terminal, shell e script e executar Bash conscientemente. Pré-requisito: nenhum. Sessão sugerida: 1.

O terminal é a interface em que você digita; o shell interpreta comandos; Bash é um desses shells. Um script é texto com comandos que podem ser executados em sequência. A extensão `.sh` organiza o nome, mas não escolhe o interpretador sozinha.

```bash
bash --version
help printf
bash exemplos/argumentos.sh 'Ana Maria'
bash -n exemplos/argumentos.sh
```

`bash arquivo.sh` escolhe Bash explicitamente. `./arquivo.sh` usa o shebang, como `#!/usr/bin/env bash`, e exige permissão de execução (`chmod u+x arquivo.sh`). `bash -n` verifica sintaxe sem executar: não encontra todos os erros de lógica. `bash -x` executa mostrando comandos expandidos; use depois para investigar scripts de laboratório.

## Prática autoral

1. **00.1 — Identidade:** crie `exercicios/tentativas/00-identidade.sh` para mostrar duas linhas: `Estudo de Bash` e `Sessao 1`. Execute com Bash e depois com `./`. Compare as saídas.
2. **00.2 — Sintaxe:** numa cópia da sua tentativa, remova uma aspa. Observe `bash -n`, registre a mensagem e corrija. A cópia é um exercício de erro, não deve entrar como script quebrado no commit final.
3. **00.3 — Consulta:** use `help` para descobrir como `printf` escreve uma quebra de linha. Demonstre duas formas de imprimir duas palavras em linhas separadas.
4. **00.4 — Ambiente:** rode `bash scripts/ambiente.sh` e explique o que está disponível e o que é opcional. Nenhuma instalação é necessária para avançar ao 01.

**Critério de avanço:** executar 00.1 de duas formas, explicar shebang e permissão e diferenciar sintaxe válida de resultado correto. Se falhar, volte ao comando de execução e leia a mensagem completa.
