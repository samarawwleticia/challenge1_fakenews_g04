# Contexto do Projeto — ClearColors / Challenge 1

## O que é este repositório

Documentação spec-driven do Challenge 1 (Fake News / Desinformação) da residência
em IA, conduzido pelo grupo ClearColors sob a metodologia CBL
(Challenge Based Learning).

As specs aqui descrevem **artefatos de pesquisa e critérios de aceitação de
entregáveis**, não comportamento de software — pelo menos até o final da fase
Investigate. A partir da fase Act, capabilities de produto passam a ser
especificadas em changes próprios.

## Enquadramento do desafio

- **Big Idea:** em um mundo com excesso de informação, como distinguir fatos,
  evidências e opiniões.
- **Essential Question:** como sistemas de IA podem ajudar as pessoas a avaliar a
  confiabilidade de informações **sem substituir seu pensamento crítico**.
- **Recorte adotado:** desinformação em saúde pública.
- **Sub-recorte:** em aberto. Candidatos: vacinação, doença crônica,
  suplementos e produtos naturais. Decisão prevista para a fase Investigate.

## Princípio arquitetural que restringe todas as soluções

A Essential Question exclui explicitamente a substituição do julgamento humano.
Em consequência, para qualquer capability proposta neste projeto:

- O sistema **não emite veredito** de verdadeiro/falso como saída principal.
- O sistema apresenta **evidência e proveniência**; a conclusão é do usuário.
- Métrica primária de sucesso é ganho de discernimento do usuário, incluindo
  **transferência** (desempenho sem a ferramenta), não acurácia de classificador.
- Toda saída assistiva precisa ser auditável pelo usuário até a fonte.

Datasets de rótulo binário são admitidos apenas como banco de estímulos para
teste com usuários, nunca como alvo de treino de classificador de veredito.

## Cronograma

| Fase | Período | Foco |
| --- | --- | --- |
| Engage | 07/09 a 11/09 | Entender o desafio |
| Investigate | Semanas 2–3 | Pesquisa e descoberta |
| Act | Semanas 4–5 | Desenvolvimento |
| Showcase | Semana 6 | Partilha de conhecimento |

Observação: 07/09 é feriado; a semana operacional do Engage começa em 08/09.

## Entregáveis finais do desafio

1. Portfólio de pesquisa
2. Estrutura de avaliação de confiança
3. Solução/protótipo com suporte de IA
4. Apresentação e reflexão

## Convenções deste repositório

- **Idioma:** texto em português. Palavras-chave normativas (`SHALL`, `MUST`,
  `MUST NOT`, `WHEN`, `THEN`, `AND`, `GIVEN`) permanecem em inglês para que
  `openspec validate --strict` funcione com a configuração padrão.
- **Capability = artefato entregável**, não módulo de código, enquanto o projeto
  estiver em fase de pesquisa.
- **Um change por fase do CBL.** Specs só são promovidas de `changes/` para
  `specs/` quando a fase correspondente é encerrada e o artefato existe de fato.
- `specs/` está vazio por design: no dia 1 não há nenhuma capability
  estabelecida como verdade corrente.

## Changes previstos

| Change | Fase | Estado |
| --- | --- | --- |
| `add-engage-desinformacao-saude` | Engage | ativo |
| `add-instrumento-avaliacao-ptbr` | Investigate | não iniciado |
| `add-copiloto-leitura-lateral` | Act | não iniciado |
| `add-rag-evidencia-primaria` | Act | não iniciado |
