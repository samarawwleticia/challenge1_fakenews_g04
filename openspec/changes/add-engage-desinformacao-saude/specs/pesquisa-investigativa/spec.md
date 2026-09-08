# Delta para pesquisa-investigativa

## ADDED Requirements

### Requirement: Ficha padronizada de caso

Todo caso analisado na investigação forense MUST ser registrado em uma ficha com
os campos: afirmação central, veículo e data de publicação, tipo de manipulação,
sinais de não-confiabilidade observados, estudo ou fonte primária de origem
quando houver, tempo gasto na verificação, o que uma IA teria adiantado e o que
ela não resolveria.

Fichas incompletas MUST NOT ser incluídas no portfólio de pesquisa.

#### Scenario: Caso com estudo primário identificado

- WHEN um integrante analisa uma alegação de saúde derivada de um estudo real
- THEN a ficha registra a referência do estudo com identificador verificável
- AND registra a distância entre o que o estudo mediu e o que a publicação afirmou

#### Scenario: Caso sem fonte primária localizável

- WHEN a alegação não cita fonte e nenhuma origem é localizada
- THEN a ficha registra explicitamente a ausência de fonte primária
- AND o esforço de busca empregado é registrado no campo de tempo

### Requirement: Protocolo de leitura lateral

A análise de cada caso MUST seguir leitura lateral: a avaliação da fonte é feita
saindo da página analisada e consultando fontes externas independentes, e não
apenas inspecionando o conteúdo interno da página.

O protocolo aplicado MUST ser descrito no portfólio, de modo que outro grupo
possa reproduzi-lo.

#### Scenario: Avaliação de um veículo desconhecido

- WHEN o caso vem de um domínio que o integrante não conhece
- THEN a avaliação do veículo é feita por consulta a fontes externas
- AND aparência, layout e tom da própria página não são aceitos como evidência
  de confiabilidade

### Requirement: Medição do custo de verificação

Cada ficha MUST registrar o tempo decorrido entre o início da análise e a
conclusão fundamentada.

Esses tempos MUST ser consolidados e usados como evidência quantitativa do
problema no quadro Problema do brainstorming.

#### Scenario: Consolidação dos tempos

- WHEN todas as fichas da forense estão preenchidas
- THEN o portfólio apresenta o tempo mínimo, máximo e mediano de verificação
- AND esse dado é referenciado como justificativa do problema

### Requirement: Diversidade de tipos de manipulação

O conjunto de casos analisados MUST cobrir no mínimo três tipos distintos entre:
fabricação integral, recontextualização de mídia ou dado antigo, exagero de
estudo real, distorção estatística e mídia sintética.

#### Scenario: Cobertura insuficiente de tipos

- WHEN o conjunto de casos cobre menos de três tipos distintos
- THEN casos adicionais são selecionados antes do fechamento da fase
- AND a lacuna de cobertura é registrada no portfólio
