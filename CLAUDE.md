# Claude Code context — Implementing AI in Academic Medicine

This file captures project-specific context for Claude Code sessions working
on this Quarto book. Read it before starting any authorship or research task.

## What this project is

A Quarto book titled *Implementing AI in Academic Medicine: A guide to
governance and principled practice*. Published at
<https://seandavi.github.io/amc-ai-governance/>. Source at
<https://github.com/seandavi/amc-ai-governance/>.

The book covers AI governance for academic medical centers (AMCs) across four
domains (clinical, research, education, business operations) and five
workstreams (data, infrastructure, ethics, workforce, project management /
evaluation). The framework chapter (`framework.qmd`) is the structural
orientation for the whole book.

## Build and deploy

```
just render    # quarto render
just publish   # quarto publish gh-pages --no-render (pushes _book/)
just deploy    # render then publish
```

The GitHub Actions workflow (`.github/workflows/publish.yml`) runs on push to
main with a 15-minute timeout. If it hangs, the timeout surfaces the error
rather than burning CI minutes indefinitely.

**Known quirk — `framework.qmd`:** This file uses a Graphviz `{dot}` block for
the AMC matrix diagram. Do not replace it with Mermaid. A prior Mermaid
`graph TD` version with 20 cross-subgraph edges caused quadratic dagre-d3
layout computation that hung the renderer on first pass. The `{dot}` block
with `rank=same` constraints is the correct approach for grid/matrix layouts
in Quarto.

## Chapter structure

Chapters live as `.qmd` files at the repo root. They are registered in
`_quarto.yml` under the appropriate part. The book has four parts plus
appendices:

- **Implementation** — framework, implementation, barriers
- **Domain Resource Guide** — resources_clinical, resources_research,
  resources_education, resources_business, regulatory_landscape
- **Agentic AI in Practice** — agentic_safety, patient_trust,
  professional_wellness
- **Workstream Resources** — infrastructure, workforce, ethics, data,
  pm_and_support, evaluation_monitoring

Chapters target ≥6 rendered pages (≈3,000–4,500 words of body prose).

## Adding a new chapter

The full workflow is documented in `appendix_workflow.qmd`. Short version:

1. Write a chapter brief in `_research/briefs/<chapter_name>.md`. The brief
   template is in `_research/MASTER_PROMPT.md`. The brief specifies the
   argument arc, target sources, figure sketches, and open questions.

2. Run Gemini research:
   ```
   cat _research/MASTER_PROMPT.md _research/briefs/<chapter>.md > /tmp/prompt.md
   gemini --yolo < /tmp/prompt.md > _research/dossiers/<chapter>.md
   ```
   Run sequentially, not in parallel. Parallel runs trigger rate limiting.

3. Verify Tier 2 citations in the dossier against PubMed (use the PubMed MCP
   tool). Add confirmed entries to `references.bib` before writing prose.

4. Write the chapter `.qmd` from the dossier. Cite only sources in
   `references.bib`.

5. Add the chapter to `_quarto.yml`. Render to verify (`quarto render
   <file>.qmd --to html`).

## Citation discipline (critical — read this)

**Tier 1** — federal regulatory documents, institutional publications, vendor
documentation, professional-society statements: cite with a verified URL
confirmed live during the session.

**Tier 2** — peer-reviewed biomedical and informatics papers: use a
`[PUBMED-PENDING: Author YYYY — descriptor — journal]` placeholder in the
dossier. In the authorship pass, resolve each placeholder against PubMed
before adding to `references.bib`. Do not invent a DOI. Do not cite a paper
without verifying it exists.

All BibTeX keys in `references.bib` follow the pattern `AuthorYYYY-slug`
(e.g., `Collins2024-tripodai`, `Finlayson2021-shift`).

## Voice and style

The author's voice profile is documented in the auto-memory system at
`~/.claude/projects/.../memory/user_voice_profile.md`. Key constraints:

- Prose only, no bullet lists in body text
- Avoid em-dash overuse — the current chapters are already heavy; reduce further
- Avoid AI-generation vocabulary: "crucial," "landscape," "pivotal,"
  "transformative," "align with," "underscore," "highlight" (verb), "delve"
- Vary sentence length: longer sentences that build, short ones that land
- Concrete specifics over adjectives ("AUC 0.63" not "significantly lower")
- Honest about what is hard to do; does not give the reader excuses to delay
- No bullet lists (this constraint is worth repeating)

See `appendix_workflow.qmd` for the full authorship context including why
these choices were made.

## references.bib

All citations go here. Before adding a new entry:
1. `grep "AuthorYYYY" references.bib` to confirm it is not already present.
2. For peer-reviewed papers, verify the DOI resolves to the correct paper.
3. Use consistent key format: `AuthorYYYY-slug`.

Existing relevant keys to know about: `Vasey2022-decideai`,
`Finlayson2021-shift`, `Wong2021-esm`, `Collins2024-tripodai`,
`HHS2024-1557`, `FDA2024-pccp`, `ACGME2025-CPR`, `Liang2023-aidetect`,
`NYCLL144`, `Baker2016-reproducibility`, `Wiens2019-harm`.

## Figures

- **Mermaid** (`{mermaid}` blocks): use for flowcharts and lifecycle diagrams.
  Use `flowchart TD` not `graph TD` for new diagrams (avoids dagre-d3 issues).
- **Graphviz** (`{dot}` blocks): use for matrix/grid layouts requiring
  `rank=same` constraints.
- **Tables**: use standard Markdown pipe tables. Add a caption with `{#tbl-id}`
  for cross-references.
- Lightbox is enabled globally; figures render with click-to-zoom.

## What not to do

- Do not replace the Graphviz matrix diagram in `framework.qmd` with Mermaid.
- Do not cite a paper without verifying it in PubMed or confirming the DOI.
- Do not add `evaluation_monitoring.qmd` to `_quarto.yml` again — it is already
  there.
- Do not commit sensitive files (`.env`, credentials).
