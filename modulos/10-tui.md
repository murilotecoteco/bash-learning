# 10 — Menus e interfaces de terminal

[Plano](../docs/plano-de-estudo.md) · Anterior: [09](09-funcoes.md) · Próximo: [11](11-integracao.md)

**Meta:** ligar um menu a funções e lidar com voltar/cancelar. Sessões 21–22; exige 09.

Comece com `printf`, `read`, `while` e `case`. `select` também pode apresentar opções numeradas; ele não encerra automaticamente após uma escolha, então controle a saída com `break`. Faça primeiro a lógica funcionar em modo texto.

`dialog` é um programa que oferece componentes de TUI com apoio de curses; não é preciso escrever C ou chamar a biblioteca ncurses diretamente para estes exercícios. Confirme `command -v dialog` e consulte `man dialog`. Ele é opcional para o menu texto e necessário para a etapa visual da disciplina.

Experimento, num terminal interativo com dialog instalado:

```bash
if escolha=$(dialog --stdout --menu 'Experimento' 12 45 2 a 'Mensagem' s 'Sair'); then
    printf 'Selecionado: %s\n' "$escolha"
else
    status=$?
    printf 'Menu encerrado com status %s\n' "$status" >&2
fi
```

`--stdout` facilita capturar a escolha. Capture o status antes de executar outro comando; cancelamento e Escape não devem ser tratados como texto válido. Consulte os códigos documentados na instalação para diferenciar Cancelar, Escape e falhas.

## Prática autoral

1. **10.1 — Menu texto:** opções 1 = saudação, 2 = quantidade de argumentos e 0 = sair. Opção desconhecida deve mostrar aviso e reapresentar o menu. EOF também deve encerrar.
2. **10.2 — Select:** recrie o menu com `select`; compare variável escolhida e `REPLY` para uma opção inválida e uma válida. Use `break` explicitamente na saída.
3. **10.3 — Dialog:** adapte 10.1 para `--menu`; trate OK, Cancelar e Escape e retorne ao shell. Sem `dialog`, apresente mensagem de dependência ou ofereça menu texto; não considere a etapa visual concluída só por ter um fallback.
4. **10.4 — Formulário:** use `--inputbox` para um apelido e `--msgbox` para uma saudação. Entrada `Ana Maria` deve chegar inteira; cancelar não deve gerar uma saudação vazia por acidente.

**Fechamento:** teste iniciar → escolher → voltar → escolher novamente → sair; depois teste cancelamentos. Se a lógica falhar tanto no menu texto como na TUI, volte às funções, não à aparência do componente.
