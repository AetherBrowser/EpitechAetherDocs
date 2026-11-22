# Conception Docs

Markdown sources for the Conception deliverables. Pandoc produces one PDF per file in `docs/`.

## Cover page

Each document starts with:

```yaml
---
name: "AETHER"
title: "Document title"
slogan: "Slogan"
---
```

Colors and sizes (defined in `template/header.tex`):

| Element | Size | Color |
| --- | --- | --- |
| Name | 40 pt | `#1E2761` |
| Document title | 20 pt | `#2C5F2D` |
| Slogan | 13 pt italic | `#2C5F2D` |
| Heading 1 (section) | Large | `#1E2761` |
| Heading 2 and 3 | large / normalsize | `#2C5F2D` |

The second page is a table of contents built from headings 1 to 3. Body text starts on the following page.

`template/_template.md` is the starting point for a new deliverable. Files named `_*.md` in `docs/` are skipped at build time.

The typeface is Arial (`fonts/arial.ttf`, bold, italic, bold italic). XeLaTeX embeds it in every PDF. The last page reads `document-date` and `modify-date` from each document’s YAML header.

## Local PDFs

```bash
bash scripts/build-pdf.sh
```

Requires `pandoc` and a XeLaTeX distribution (`texlive-xetex`). PDFs are written to `dist/`.

## CI

`.github/workflows/pdf.yml` runs the same command on every push and publishes the `aether-docs-pdf` artifact. On `main`, it also deploys the PDFs to GitHub Pages: files named `obj*.pdf` go in `objectives/`, the others stay at the site root. Pages must use the GitHub Actions source.
