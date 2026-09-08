# Proposal: Engage — Desinformação em Saúde Pública

## Why

O Challenge 1 foi entregue ao grupo como enunciado aberto: uma Big Idea, uma
Essential Question e um roadmap de seis semanas. Nada disso é acionável sem
que o grupo defina o que vai investigar, com que método, e como saberá que
investigou bem.

Há um risco concreto de partir direto para a solução. A leitura literal do tema
("fake news" + "IA") sugere um classificador de veracidade, e existem datasets
públicos abundantes que empurram nessa direção. Mas um veredito automático é
substituição de julgamento, que é exatamente o que a Essential Question
descarta. Sem uma decisão registrada agora, o viés dos dados disponíveis decide
o projeto pelo grupo.

Este change existe para fixar, antes de qualquer desenvolvimento, três coisas:
o recorte do problema, o método de investigação, e os critérios que tornam os
artefatos da fase Engage aceitáveis.

## What Changes

Introduz três capabilities de pesquisa, todas entregáveis até 11/09:

- **`pesquisa-investigativa`** — protocolo de análise forense de casos de
  desinformação em saúde, com ficha padronizada e medição de esforço.
- **`matriz-confianca`** — estrutura de avaliação de confiança: dimensões,
  sinais observáveis, limites e rubrica. É o primeiro dos entregáveis finais
  do desafio a ganhar forma.
- **`guiding-questions`** — backlog priorizado de perguntas norteadoras que
  define o escopo das semanas 2–3.

Fixa também duas decisões de escopo que restringem todos os changes futuros:

- Recorte temático em **saúde pública**.
- Proibição de veredito automático como saída principal do produto
  (ver `openspec/project.md`).

## Impact

- **Specs afetadas:** nenhuma. `openspec/specs/` está vazio; as três
  capabilities são novas.
- **Entregáveis do desafio atingidos:** portfólio de pesquisa (parcial),
  estrutura de avaliação de confiança (versão 1).
- **Restrição herdada por changes futuros:** a proibição de veredito
  automático restringe o desenho de `add-copiloto-leitura-lateral` e
  `add-rag-evidencia-primaria`.
- **Risco de reversão:** se a fase Investigate demonstrar que o andaime
  cognitivo não produz ganho mensurável de discernimento, a restrição de
  produto será reaberta em um change de revisão, não silenciosamente
  abandonada.

## Out of Scope

Fora deste change, por serem prematuros no dia 1:

- Arquitetura do protótipo, escolha de modelo, pipeline de RAG.
- Sub-recorte definitivo dentro de saúde (vacinação, crônicas, suplementos).
- Construção do instrumento de avaliação em PT-BR — vai para
  `add-instrumento-avaliacao-ptbr`, na fase Investigate.
- Qualquer treino de modelo.
