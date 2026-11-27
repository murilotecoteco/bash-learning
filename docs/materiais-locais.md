# Materiais da disciplina apenas no computador

Os arquivos baixados estão em:

```text
/home/murilo/PROJETOS/Fundamentos de Interface de Linha de Comando - Materiais/
```

Foram consultados os tópicos dos slides Bash 01–07 e as duas listas disponíveis (02 e 04) para definir competências. Os PDFs, os slides e o ZIP de códigos-fonte não foram incorporados ao projeto. `FAS_whoami` é material de apresentação e não é requisito para fazer a trilha.

Abra o original no leitor de PDF para estudar a aula ou conferir uma questão. Não copie o texto integral para Markdown, nem extraia o ZIP para uma pasta versionada. Se quiser guardar materiais junto ao clone, use `materiais-locais/`, que é ignorada. A pasta externa atual já mantém a separação.

Antes de qualquer envio:

```bash
git status --short
git diff --cached --stat
git ls-files '*.pdf' '*.pptx' '*.zip' 'materiais-locais/*'
```

O último comando deve ficar sem saída. `.gitignore` impede inclusão normal de arquivos novos, mas não remove arquivos já rastreados nem protege contra `git add -f`. Revise o conteúdo do commit; nunca use força para adicionar os materiais.
