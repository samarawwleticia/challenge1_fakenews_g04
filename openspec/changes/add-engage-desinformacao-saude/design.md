# Design — Decisões da Fase Engage

## Decisão 1: andaime cognitivo em vez de classificador

**Contexto.** A formulação padrão da tarefa em NLP é classificação binária de
veracidade, e a maior parte dos datasets públicos existe para servir a essa
formulação.

**Decisão.** O produto não emite veredito como saída principal. Ele expõe
proveniência, afirmações checáveis, cobertura independente e enquadramento, e
devolve a conclusão ao usuário.

**Consequências.**
- A métrica primária deixa de ser acurácia de modelo e passa a ser ganho de
  discernimento do usuário, medido com e sem a ferramenta.
- Datasets de rótulo perdem o papel de alvo de treino e ganham o papel de banco
  de estímulos para teste com usuários.
- Datasets que trazem cadeia de raciocínio (explicação junto do rótulo) passam a
  ser o núcleo do portfólio.

**Alternativa descartada.** Classificador com camada de explicabilidade (XAI)
sobre a predição. Descartada porque a explicação, nesse desenho, justifica um
veredito já emitido — o usuário continua recebendo a conclusão pronta.

## Decisão 2: recorte em saúde pública

**A favor.** Existe hierarquia de evidência estabelecida e consultável, o que
resolve a pergunta "quem decide o que é confiável" sem que o grupo precise
arbitrar. Ler evidência de saúde (tipo de estudo, tamanho amostral, risco
relativo vs. absoluto) é uma habilidade transferível, que é exatamente o que a
Essential Question pede. E o dano é concreto e documentado.

**Contra, e como tratar.**
- *O consenso se move.* Recomendações mudam. Tratar fonte oficial como verdade
  atemporal ensina obediência, não avaliação. Vira guiding question aberta.
- *A maior parte do conteúdo problemático não é falso, é exagerado.* Estudo real
  inflado em manchete não é detectado por classificador de veracidade e é bem
  tratado por comparação entre manchete e estudo de origem. Reforça a Decisão 1.
- *Fronteira com aconselhamento médico.* O sistema avalia informação; não
  recomenda conduta. Precisa de rota explícita para profissional de saúde.
  Registrado como restrição para a fase Act.

## Decisão 3: capabilities de pesquisa, não de software

Enquanto o projeto estiver em Engage e Investigate, cada capability corresponde
a um artefato entregável (ficha de caso, matriz, backlog de GQs), com critérios
de aceitação verificáveis. Isso mantém o SDD útil sem exigir que o grupo invente
comportamento de sistema antes de ter feito a pesquisa.

## Riscos registrados

| Risco | Efeito | Mitigação prevista |
| --- | --- | --- |
| Viés de automação | Usuário aceita a saída da IA sem pensar | Métrica de guarda; itens em que a ferramenta erra de propósito no instrumento de avaliação |
| Falso positivo em conteúdo legítimo | Alimenta descrédito generalizado | Métrica de guarda; rubrica exige distinguir sinal fraco de sinal ausente |
| Ceticismo indiscriminado | Usuário passa a desconfiar de orientação legítima | Medido no pós-teste, não só o acerto |
| Alucinação de citação científica | Referência inventada em contexto de saúde | Recuperação restrita a índice fechado com identificador verificável; nunca geração livre de referência |
| Efeito da verdade ilusória no teste | Exposição a manchete falsa aumenta credibilidade percebida | Debriefing estruturado obrigatório ao final da sessão |
| Solução travada antes da pesquisa | Investigate vira justificativa retroativa | Quadro Solução do board tratado como parking lot; capabilities de produto adiadas para a fase Act |

## Questões em aberto

1. Qual sub-recorte dentro de saúde pública.
2. Em que ponto da jornada (antes de ler, ao ler, antes de compartilhar) a
   intervenção tem mais efeito.
3. Qual atrito o usuário aceita antes de abandonar.
4. Como comunicar que o consenso científico é provisório sem produzir a
   conclusão de que "ninguém sabe nada".
5. Quais sinais de qualidade de evidência são extraíveis de um texto de
   divulgação e quando é preciso ir ao artigo original.

Nenhuma dessas questões é decidida neste change. Todas entram no backlog de
`guiding-questions`.
