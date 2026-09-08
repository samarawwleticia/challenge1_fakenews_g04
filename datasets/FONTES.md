# Fontes, licenças e atribuição

Este diretório contém dados de terceiros. Cada base abaixo tem fonte primária,
licença e citação próprias. **Atribuição é condição de uso** — em especial para
as bases sob CC BY, cuja licença exige crédito na redistribuição.

Coleta feita em 08/09/2026. As contagens estão em [`relatorio.json`](relatorio.json)
e a descrição de uso de cada base, em [`README.md`](README.md).

## O que está versionado e o que não está

O repositório é público e versiona apenas os **derivados** (tabelas prontas para
uso no projeto), a documentação, as licenças e os arquivos pequenos. Os corpora
brutos ficam fora do git — são 181 MB e nenhum deles é nosso.

| Caminho | Estado | Tamanho |
| --- | --- | --- |
| `derivados/` | versionado | 47 MB |
| `01_nucleo_metodologico/factckbr/` | versionado (dataset completo, 721 KB) | 725 KB |
| `02_comparacao_exagero/scientific_exaggeration/` | versionado (dataset completo) | 600 KB |
| `03_banco_estimulos/med_mmhl/` | versionado (só docs, licença e script) | 965 KB |
| `01_nucleo_metodologico/factcenter/central_de_fatos.csv` | **fora do git** | 54 MB |
| `01_nucleo_metodologico/pubhealth/*.csv` | **fora do git** | 65 MB |
| `01_nucleo_metodologico/fakehealth/{reviews,content,engagements}/` | **fora do git** | 53 MB |
| `03_banco_estimulos/fakerecogna/FakeRecogna.csv` | **fora do git** | 11 MB |

As exclusões estão no `.gitignore` da raiz. Para reconstituir o pacote completo,
baixe de cada fonte primária abaixo e confira contra os checksums da última seção.

## Bases

### PUBHEALTH

- **Citação:** Kotonya, N. & Toni, F. *Explainable Automated Fact-Checking for
  Public Health Claims.* EMNLP 2020.
- **Origem do arquivo baixado:** release original dos autores (TSV), não o loader
  do HuggingFace. Espelho conhecido: `bigbio/pubhealth` no HF Hub.
- **Motivo da escolha:** o loader do HF mapeia rótulos por índice; no TSV original
  os rótulos vêm como texto (`true/false/mixture/unproven`), o que elimina a
  fragilidade apontada no portfólio.
- **Licença:** não declarada no pacote baixado. **Verificar no release dos autores
  antes de qualquer redistribuição** — ver "Pendências" abaixo.
- **Derivado versionado:** `derivados/pubhealth_pool_fewshot.csv` (casos com
  explicação > 300 caracteres, 15 por classe).

### FakeHealth (HealthStory + HealthRelease)

- **Citação:** Dai, E., Sun, Y. & Wang, S. *Ginger Cannot Cure Cancer: Battling
  Fake Health News with a Comprehensive Data Repository.* arXiv:2002.00837.
- **Origem:** repositório dos autores, `EnyanDai/FakeHealth`. Conferido contra o
  ZIP do Zenodo, **DOI 10.5281/zenodo.3606757** — mesmo snapshot.
- **Nota do dataset:** os `engagements/` trazem apenas IDs de tweets, por política
  de privacidade do Twitter/X; o conteúdo não é redistribuível.
- **Derivados versionados:** `derivados/fakehealth_criterios_long.csv`,
  `fakehealth_matriz_10_criterios.csv`, `fakehealth_reviews_indice.csv`.

### FactCenter / Central de Fatos

- **Licença: CC BY 4.0** — redistribuição permitida **com atribuição**.
- **Origem:** Zenodo, **DOI 10.5281/zenodo.5191798**. O link de dados não consta
  do artigo publicado no JIDM.
- **Composição:** 11.647 checagens em português, de 6 agências (boatos, Lupa,
  Aos Fatos, Fato ou Fake, Estadão Verifica, Comprova).
- **Derivado versionado:** `derivados/factcenter_subset_saude.csv` — 4.063
  checagens filtradas por termos de saúde e ciência.

### FACTCK.BR

- **Licença: MIT** (© 2019 jghm-f) para a estrutura do dataset. O **texto das
  checagens permanece das agências** (Aos Fatos, Lupa, Truco) — a licença MIT
  cobre o código e a organização, não o conteúdo jornalístico de terceiros.
- **Origem:** `thiagorainmaker77/FACTCK.BR`, espelho do original `jghm-f/FACTCK.BR`.
- **Composição:** 1.313 alegações em português, coletadas via schema ClaimReview.
- **Versionado por inteiro** (721 KB), com `LICENSE` e o script `update_factckbr.py`.

### Scientific Exaggeration (InSciOut)

- **Citação:** Wright, D. & Augenstein, I. *Semi-Supervised Exaggeration Detection
  of Health Science Press Releases.* EMNLP 2021. arXiv:2108.13493.
- **Origem:** repositório dos autores; também em `copenlu/scientific-exaggeration-detection`
  no HF Hub.
- **Anotação de origem:** derivada dos estudos de Sumner et al. 2014 (BMJ 349:g7015)
  e Bratton et al. 2019 — **cite os dois** ao usar os rótulos.
- **Composição:** 663 pares comunicado/abstract com rótulo `same`/`exaggerates`/`downplays`
  e o *strength* dos dois lados.
- **Versionado por inteiro.** Fora ficou só o `unlabelled_pet.jsonl` (18 MB), que
  serve apenas para treinar PET.

### FakeRecogna

- **Composição:** 11.903 itens em português, balanceados em 5.951 por classe.
  Classe 0 (falso) de boatos.org, e-farsas e AFP Checamos; classe 1 (verdadeiro)
  de UOL e G1.
- **Licença:** não declarada no pacote baixado. **Verificar antes de manter os
  derivados em repositório público** — ver "Pendências" abaixo.
- **Caveat metodológico:** o balanceamento perfeito denuncia curadoria artificial,
  e os itens verdadeiros vêm encurtados de portais grandes. Uso previsto é
  **amostragem de estímulo, nunca treino** — e os itens verdadeiros precisam de
  revisão manual antes do teste com usuário, senão o participante acerta pelo
  estilo do texto.
- **Derivados versionados:** `derivados/fakerecogna_subset_saude_ciencia.csv`
  (5.058 itens) e `fakerecogna_amostra_estimulos_300.csv` (amostra estratificada,
  `random_state=42`).

### Med-MMHL

- **Licença: CC BY-NC 4.0** — não comercial, compatível com uso acadêmico. Texto
  completo em `03_banco_estimulos/med_mmhl/LICENSE-CC-BY-NC-4.0.md`.
- **Citação:** *Med-MMHL: A Multi-Modal Dataset for Detecting Human- and
  LLM-Generated Misinformation in the Medical Domain.* arXiv:2306.08871.
- **Status: dados não baixados.** São ~4,0 GB num Dropbox, quase tudo imagem. O
  uso previsto é teste de estresse condicional; o comando está pronto em
  `baixar_med_mmhl.sh`, junto do apêndice do artigo e da licença.

## Pendências de licença

Duas bases têm derivados versionados neste repositório público **sem licença
declarada no pacote de coleta**:

1. **PUBHEALTH** — `derivados/pubhealth_pool_fewshot.csv`
2. **FakeRecogna** — `derivados/fakerecogna_subset_saude_ciencia.csv` e
   `fakerecogna_amostra_estimulos_300.csv`

Antes da entrega, conferir a licença de cada uma na fonte primária. Se a
redistribuição não for permitida, mover esses três arquivos para o `.gitignore`
e deixar apenas o script que os reconstrói. Nenhum uso interno do grupo fica
bloqueado por isso — a pendência é sobre publicar, não sobre usar.

## Checksums dos brutos não versionados

SHA-256, para conferir um download novo contra o snapshot de 08/09/2026:

```
2ac61adced62eee5cd89d438cc010946e5103161467e999f6f31ccfa316126e5  01_nucleo_metodologico/factcenter/central_de_fatos.csv
12a95e5760500b5f7e3acb5094db250398b627a9a1cef4d1f27497e810f47c28  01_nucleo_metodologico/pubhealth/train_limpo.csv
c715f2ac953626378ef5244318ded58be8843d4fea1815678f49749b5ee614f7  01_nucleo_metodologico/pubhealth/dev_limpo.csv
ba98fbfb64084f9613ac6b3ba7023648bcafd4297178b1d5bf44585eed3ce16c  01_nucleo_metodologico/pubhealth/test_limpo.csv
4d9db2ec053888234313e8ef9a8c999fe9b57cbc3dea8c0181c217827256fd7c  01_nucleo_metodologico/fakehealth/reviews/HealthStory.json
f0c800154e29f1df8599b91c337ae362641083aa44e3c93f3a75186b861dcd1f  01_nucleo_metodologico/fakehealth/reviews/HealthRelease.json
85c87c2462106232da708e7e1707583157ad2a7b82af1387c54cfe990e6dd564  01_nucleo_metodologico/fakehealth/engagements/HealthStory.json
1e369e609814a0ae0bed39d33c8a07c480350a73e2da7c2db7a50ab16e22cb9f  01_nucleo_metodologico/fakehealth/engagements/HealthRelease.json
282110d0390a6dff37fedf43a22b3e61b97e30381bf96dacaa668ed45d3c4407  03_banco_estimulos/fakerecogna/FakeRecogna.csv
```

`01_nucleo_metodologico/fakehealth/content/` não entra na lista acima: são 2.237
arquivos JSON (23 MB) do texto das notícias. Os checksums dos arquivos versionados
estão em [`SHA256SUMS`](SHA256SUMS).
