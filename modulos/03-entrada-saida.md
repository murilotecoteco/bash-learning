# 03 — Entrada, saída e contrato do script

[Plano](../docs/plano-de-estudo.md) · Anterior: [02](02-expansoes.md) · Próximo: [04](04-aritmetica.md)

**Meta:** definir de onde vêm os dados e como o script responde. Sessões 6–7; exige 02.

`$0` identifica o script; `$1`, `$2`, `${10}` são parâmetros; `$#` é a quantidade; `"$@"` preserva cada argumento separadamente. `"$*"` combina os argumentos numa palavra usando o primeiro caractere de IFS. Use `"$@"` para encaminhar argumentos.

```bash
IFS= read -r -p 'Apelido: ' apelido
printf 'Ola, %s!\n' "$apelido"
printf 'Uma mensagem de diagnostico\n' >&2
```

`read -r` preserva barras invertidas; `IFS=` evita remover espaços das bordas nessa leitura. stdout é resultado e stderr é diagnóstico. `$?` é o status do último comando: capture imediatamente, pois outro comando o substitui. Zero significa sucesso; não zero indica falha ou outra condição definida pelo programa. `exit` termina o script.

## Prática autoral

1. **03.1 — Cartão:** script recebe nome e cidade por argumentos e imprime `nome | cidade`. Com `"Ana Maria" "Rio Claro"`, deve preservar os dois textos. Anote como detectar quantidade errada; implemente a rejeição depois do 05.
2. **03.2 — Leitura:** leia uma linha e devolva entre `<` e `>`. Teste texto, vazio, `a\b` e espaços nas bordas. A saída deve preservar o que foi digitado.
3. **03.3 — Canais:** crie script que imprime `resultado` em stdout, `aviso` em stderr e termina com status 2. Redirecione para dois arquivos dentro de `sandbox/`; capture o status e confirme cada conteúdo.
4. **03.4 — Encaminhar:** use um script intermediário para chamar `bash exemplos/argumentos.sh "$@"`. Teste `"a b" "" "c"`: o exemplo final deve receber exatamente 3 argumentos.

**Checkpoint:** explicar por que `bash teste.sh < entrada.txt` alimenta `read`, mas não cria `$1`. Distinguir execução do interpretador de permissão de execução. A validação completa vem no 05.
