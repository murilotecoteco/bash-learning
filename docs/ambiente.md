# Ambiente Linux para praticar

Comece com `bash scripts/ambiente.sh`. O plano usa Bash 4+; a escrita e a leitura de scripts podem ser feitas num editor comum. Execute pelo Bash, mesmo que seu shell interativo padrão seja outro.

Ferramentas básicas são Bash, Git e utilitários comuns do Linux. `bc` aparece no módulo decimal, `dialog` na TUI, e ShellCheck é uma checagem adicional. O diagnóstico não instala nada. Se já tiver as ferramentas, não precisa reinstalar.

No Arch Linux, depois de conferir o que falta, os nomes de pacotes opcionais são:

```bash
sudo pacman -S --needed bc dialog shellcheck
```

Esse comando altera o sistema e pede sua senha; rode por decisão própria se quiser instalar. Em outra distribuição, consulte o gerenciador correspondente. Para começar 00–03, essas dependências opcionais não bloqueiam o estudo.

O verificador faz checagem de sintaxe e testes dos exemplos. Sem ShellCheck, ele informa que essa análise adicional não foi executada. Os testes não dependem de `bc` nem de `dialog`; atividades com essas ferramentas exigem seus testes específicos.

Use `sandbox/` para dados de laboratório: a pasta é ignorada pelo Git. O plano não exige `sudo` para executar exercícios. Mantenha os materiais de aula na pasta externa e confira o commit antes de publicar.
