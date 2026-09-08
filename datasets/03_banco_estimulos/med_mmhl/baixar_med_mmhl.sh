#!/bin/bash
# Med-MMHL: os dados NAO estao no GitHub, ficam num Dropbox de ~4,0 GB (inclui imagens).
# Rode isto so quando/se o prototipo passar a tratar infograficos ou imagens.
URL="https://www.dropbox.com/scl/fo/zvud6ta0uaqm2j1liupts/h?rlkey=zhychubvhspdxramyjdqjteqd&dl=1"
curl -L "$URL" -o Med-MMHL.zip && unzip Med-MMHL.zip
# Pastas relevantes: fakenews_article/ (texto), image_article/ (multimodal),
# sentence/ (frases geradas por LLM), fakenews_tweet/, image_tweet/
