# 05 — Condições e validação

[Plano](../docs/plano-de-estudo.md) · Anterior: [04](04-aritmetica.md) · Próximo: [06](06-repeticao.md)

**Meta:** expressar regras e rejeitar entradas antes do cálculo. Sessões 10–11; exige 04.

```bash
texto='arquivo.txt'
if [[ $texto == *.txt ]]; then
    printf '%s\n' 'Nome com sufixo txt'
else
    printf '%s\n' 'Outro nome'
fi
```

`if` executa o ramo conforme o status de um comando. Com `[ ... ]`, espaços e o `]` final são argumentos necessários: use `[ "$n" -gt 5 ]` após validar `n`. Em `[[ ... ]]`, `==` compara strings/padrões, `=~` aceita regex e `-z` testa string vazia. Para números já validados, `((n > 5))` é claro. `-e`, `-f`, `-d`, `-r` e `-x` testam propriedades de caminhos.

Primeiro confira `$#`; depois confira texto (`^[0-9]+$` para decimal não negativo), tamanho e faixa. Só então calcule. Se aceitar zeros iniciais, normalize com base 10 em um domínio limitado; não aplique `10#` cegamente a negativos. Para inteiros com sinal, valide e normalize sinal e magnitude separadamente. Você também pode declarar que a atividade só aceita a grafia canônica sem zeros iniciais. Valores enormes podem exceder os inteiros do Bash.

`&&` executa o próximo comando após sucesso; `||` após falha. Não substitua todo `if/else` por `a && b || c`: uma falha em `b` também executa `c`. `case` é adequado para opções discretas.

## Prática autoral

1. **05.1 — Faixa:** aceite exatamente um inteiro decimal de 0 a 59; informe se é par ou ímpar. Teste `0`, `1`, `58`, `59`, `60`, `-1`, `abc`, vazio e argumento ausente. Anuncie se `08` é aceito ou rejeitado; não o deixe virar erro octal.
2. **05.2 — Maior:** compare dois inteiros de -99 a 99 e diferencie maior, menor e igualdade. Teste sinais diferentes e valores iguais. Se rejeitar zeros iniciais, diga isso na mensagem de uso.
3. **05.3 — Inspeção:** receba um caminho e classifique arquivo regular, diretório ou inexistente. Teste um nome com espaços e mantenha a inspeção apenas de leitura.
4. **05.4 — Operação:** use `case` para escolher `somar`, `subtrair` ou `ajuda`. Opção desconhecida deve ir a stderr e terminar com status diferente de zero. Teste cada ramo.

**Fechamento:** retome os quatro desafios do 04 e acrescente validação coerente. Prove que nenhum dado inválido alcança a aritmética. Se errar o teste numérico, retome a distinção entre texto e número, não apenas a sintaxe do `if`.
