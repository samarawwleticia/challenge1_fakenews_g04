# Delta para guiding-questions

## ADDED Requirements

### Requirement: Critério de qualidade da guiding question

Uma guiding question MUST ser pesquisável, MUST NOT admitir resposta binária, e
MUST alterar alguma decisão do projeto quando respondida.

Perguntas que não satisfazem os três critérios MUST ser descartadas e o descarte
registrado.

#### Scenario: Pergunta que não muda decisão

- WHEN uma pergunta candidata é avaliada e nenhuma decisão do projeto depende da resposta
- THEN a pergunta é descartada
- AND o descarte é registrado com o motivo

#### Scenario: Pergunta binária reformulada

- WHEN uma pergunta candidata admite resposta sim ou não
- THEN a pergunta é reformulada para uma forma investigativa
- AND a versão original é mantida no registro para rastreabilidade

### Requirement: Rastreabilidade até o brainstorming

Cada guiding question MUST estar associada ao quadro do brainstorming que a
originou: Problema, Público, Sucesso, Solução ou Sinais e Viabilidade.

Agrupamentos de notas que não geram nenhuma pergunta pesquisável MUST ser
marcados como opinião e removidos do escopo de pesquisa.

#### Scenario: Agrupamento sem pergunta derivada

- WHEN um agrupamento de notas adesivas não produz nenhuma pergunta pesquisável
- THEN o agrupamento é marcado como opinião do grupo
- AND não é levado para a fase Investigate como item de pesquisa

### Requirement: Priorização por impacto e incerteza

As guiding questions MUST ser priorizadas em uma matriz de impacto por
incerteza. Esforço MUST NOT ser usado como eixo nesta fase.

#### Scenario: Abertura da fase Investigate

- WHEN a priorização é concluída
- THEN as perguntas de alto impacto e alta incerteza são marcadas como abertura
  das semanas 2 e 3
- AND as de alto impacto e baixa incerteza são registradas como candidatas a
  escopo de protótipo

### Requirement: Fechamento do backlog na fase Engage

Ao final de 11/09, o backlog MUST conter entre 8 e 12 guiding questions
priorizadas, sendo no mínimo 3 marcadas como abertura do Investigate.

#### Scenario: Backlog abaixo do mínimo

- WHEN o backlog priorizado contém menos de 8 perguntas
- THEN uma nova rodada de divergência é conduzida antes do fechamento da fase
- AND o change não é considerado completo
