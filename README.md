# Bash Learning

Trilha prática para aprender Bash no Linux e ganhar autonomia para resolver exercícios de linha de comando e shell script da UTFPR.

**Comece aqui:** [plano completo](docs/plano-de-estudo.md) → [diagnóstico](docs/diagnostico.md) → [módulo 00](modulos/00-ambiente.md).

O percurso tem **12 módulos, 24 sessões sugeridas e 48 desafios autorais**, do terminal à criação de uma aplicação com menu. Cada módulo traz explicação, um experimento, exercícios com resultados verificáveis e uma condição para avançar. A previsão inicial é de **24 a 36 horas**, ajustada pelo diagnóstico e pelas dificuldades reais.

## Como estudar

Prever → tentar → pedir uma dica → implementar → testar → explicar → revisar em outro dia.

Estude um módulo por vez. Guarde suas tentativas, inclusive as que falharam. O professor particular faz uma pergunta por vez e oferece dicas graduais; as soluções dos desafios ficam para você construir.

1. Leia o [plano](docs/plano-de-estudo.md) e faça o diagnóstico sem pesquisar.
2. Abra o módulo indicado no plano e reproduza o pequeno experimento.
3. Crie suas respostas em `exercicios/tentativas/` seguindo o [guia de exercícios](exercicios/README.md).
4. Teste entradas normais, limites e entradas inválidas. Explique o resultado.
5. Registre evidências no [progresso](docs/progresso.md) e retome as questões locais no [mapa das listas](docs/mapa-das-listas.md).

## Ambiente

Linux com Bash 4+ e Git; o ambiente usado na criação foi Arch Linux com Bash 5.3. Não execute os scripts com `sh`, porque arrays e `[[ ... ]]` são recursos de Bash. `bc`, `dialog` e ShellCheck são opcionais no início e apresentados quando necessários.

```bash
git clone https://github.com/murilotecoteco/bash-learning.git
cd bash-learning
bash scripts/ambiente.sh
bash exemplos/argumentos.sh 'Murilo de Souza'
bash scripts/verificar.sh
```

O verificador checa sintaxe dos scripts próprios e executa testes dos exemplos. Ele **não atesta domínio dos módulos nem corrige automaticamente suas respostas**.

## Navegação

| Parte | Conteúdo |
| --- | --- |
| [Plano](docs/plano-de-estudo.md) | Ordem, sessões, rotina, revisões e critérios de domínio |
| [Módulos](modulos/00-ambiente.md) | Aulas curtas e desafios progressivos |
| [Professor particular](docs/professor-particular.md) | Como conduzir o estudo com Codex, OpenCode ou Copilot |
| [Guia de consulta](docs/consulta-bash.md) | Sintaxe e armadilhas para consultar depois da tentativa |
| [Mapa das listas](docs/mapa-das-listas.md) | Relação entre competências e as duas listas disponíveis |
| [Projeto final](exercicios/projeto-final.md) | Integração de argumentos, decisões, laços, arrays e funções |
| [Diário](learning/README.md) | Uso do diário global compartilhado, sem publicar registros pessoais |
| [Referências](docs/referencias.md) | Documentação oficial e inspiração deste projeto |

## Materiais da disciplina

Os slides, PDFs, listas originais, gravações e códigos baixados do Moodle permanecem fora deste repositório. O conteúdo publicado é o plano, explicações e atividades autorais. Veja [como consultar os materiais localmente](docs/materiais-locais.md).

A estrutura de prática guiada foi inspirada no meu projeto [Engenharia Reversa — Fundamentos](https://github.com/murilotecoteco/engenharia-reversa-fundamentos). O estado de aprendizagem aqui começa **não avaliado**; ter estudado C não implica já dominar Bash.
