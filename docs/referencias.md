# Referências e leituras por etapa

Leia a seção indicada depois de tentar o experimento. A documentação é consulta; a prática e a explicação são as evidências de aprendizado.

| Etapa | Fonte primária | O que procurar |
| --- | --- | --- |
| 00–03 | [Manual GNU Bash](https://www.gnu.org/software/bash/manual/bash.html) | Shell Syntax, Shell Expansions, Quoting, Shell Parameters, Redirections, Bash Builtins (`read`, `printf`) |
| 01 | [GNU Coreutils](https://www.gnu.org/software/coreutils/manual/coreutils.html) | `pwd`, `ls`, `cp`, `mv`, `chmod`, `wc`, `sort`, `uniq`, `cut`, `tr` |
| 04–06 | [Manual GNU Bash](https://www.gnu.org/software/bash/manual/bash.html) | Shell Arithmetic, Conditional Constructs, Looping Constructs, `RANDOM` |
| 04 | [GNU bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html) | `scale`, expressões e divisão |
| 07–09 | [Manual GNU Bash](https://www.gnu.org/software/bash/manual/bash.html) | Shell Parameter Expansion, Arrays, Shell Functions |
| 10 | [Documentação de dialog](https://invisible-island.net/dialog/manpage.html) | `--menu`, `--inputbox`, `--stdout`, retorno e cancelamento |
| 11 | [ShellCheck](https://www.shellcheck.net/) e [wiki oficial](https://github.com/koalaman/shellcheck/wiki) | Diagnósticos de quoting, globbing e portabilidade |

Consulta local sem internet: `help printf`, `help read`, `help test`, `help for`, `help set`, `man bash` e `man dialog` quando instalado.

## Inspiração pedagógica

[Engenharia Reversa — Fundamentos](https://github.com/murilotecoteco/engenharia-reversa-fundamentos): organização por temas, professor particular, tentativas preservadas, previsão de saída e dicas graduais. Aqui o conteúdo e a progressão foram adaptados ao Bash e às competências das listas disponíveis. O diário global permanece a fonte única das lições pessoais.
