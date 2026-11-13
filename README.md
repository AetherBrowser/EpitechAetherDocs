# Epitech Aether Docs

Sources Markdown des livrables EIP Aether. Pandoc produit un PDF par fichier de `docs/`.

## Page de garde

Chaque document commence par :

```yaml
---
name: "AETHER"
title: "Titre du document"
slogan: "Slogan"
---
```

Couleurs et tailles (définies dans `template/header.tex`) :

| Élément | Taille | Couleur |
| --- | --- | --- |
| Nom | 40 pt | `#1E2761` |
| Titre du document | 20 pt | `#2C5F2D` |
| Slogan | 13 pt italique | `#2C5F2D` |
| Titre 1 (section) | Large | `#1E2761` |
| Titre 2 et 3 | large / normalsize | `#2C5F2D` |

`docs/_template.md` est ignoré à la compilation. Copiez-le pour un nouveau livrable.

La police est Arial (`fonts/arial.ttf`, gras, italique, gras italique). XeLaTeX l'embarque dans chaque PDF. La dernière page lit `document-date` et `modify-date` dans l'en-tête YAML de chaque document.

## PDF en local

```bash
bash scripts/build-pdf.sh
```

Nécessite `pandoc` et une distribution XeLaTeX (`texlive-xetex`). Les PDF sortent dans `dist/`.

## CI

`.github/workflows/pdf.yml` lance la même commande sur chaque push et publie l'artefact `aether-docs-pdf`.
