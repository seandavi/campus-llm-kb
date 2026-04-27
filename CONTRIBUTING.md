# Contributing to *Implementing AI in Academic Medicine*

This book is a living document. If something in it is wrong, or if your
institution has found a better approach, we would genuinely like to know.
Contributions are welcome in several forms, from small corrections to new
chapter drafts.

## What we are looking for

**Corrections and updates.** The regulatory landscape in this book moves
fast. FDA guidance, ONC rules, and accreditor requirements described in one
chapter may be superseded by the time you read it. If you find a factual
error, an outdated regulatory citation, or a broken link, please file an
issue or open a pull request.

**Domain expertise.** The book covers four domains — clinical care, research,
education, and business operations — and no single author has deep expertise in
all four. If you have specific experience with AI governance in one of these
domains and see a gap or a better framing, that is useful input.

**Institutional examples.** The book deliberately avoids overfitting to any
single institution's experience. If your AMC has implemented a governance
approach, monitoring program, or stakeholder engagement model that worked (or
failed in an instructive way), that is the kind of grounded evidence the book
is trying to accumulate.

**New chapters.** The book structure has known gaps. If you want to draft a
new chapter, start with an issue proposing the scope, argument arc, and
target sources. We can discuss whether it fits before you invest writing time.

## How to contribute

### Small fixes (typos, broken links, outdated facts)

Open a pull request directly against `main`. The PR description should state
what was wrong, what you changed, and, for factual claims, a source supporting
the correction.

### Larger contributions (section rewrites, new chapters)

1. **Open an issue first.** Describe what you want to add or change and why.
   This avoids duplicated effort and helps scope the work before you write it.

2. **Follow the chapter brief workflow.** If you are writing a new chapter,
   create a brief in `_research/briefs/<chapter_name>.md` following the format
   in `_research/MASTER_PROMPT.md`. The brief specifies the argument arc,
   target sources, figure requirements, and open questions. Review the existing
   briefs for examples.

3. **Use verified sources only.** Every factual claim in this book should be
   traceable to a primary source — a peer-reviewed paper, a named regulatory
   document, or an institutional primary source. The book's citation
   discipline is described below.

4. **Open a pull request** against `main` with your changes. The PR description
   should explain what the contribution adds, what sources it relies on, and
   any judgment calls you made that a reviewer should examine.

## Citation standards

This book has a two-tier citation discipline designed to prevent hallucinated
citations from entering the bibliography.

**Tier 1 — verifiable primary sources:** Federal regulatory documents (FDA
guidance, ONC final rules, CMS memos), institutional policy documents,
professional-society statements, and vendor documentation. Provide a full
citation with a live URL you have confirmed resolves to the correct document.

**Tier 2 — peer-reviewed literature:** Every journal article cited in this
book has been verified against PubMed or by direct DOI resolution before
entering `references.bib`. Do not add a BibTeX entry for a paper without
confirming the DOI resolves to the correct paper. If you are not sure, use a
placeholder comment and flag it for verification in your PR description.

BibTeX keys follow the format `AuthorYYYY-slug` (e.g., `Collins2024-tripodai`,
`Finlayson2021-shift`). Check for duplicates before adding new entries:
`grep "AuthorYYYY" references.bib`.

## Voice and style

This book has a specific voice: concrete over abstract, honest about
difficulty, specific about what the minimum responsible bar actually is, and
written for practitioners rather than policy audiences. Before submitting a
large prose contribution, read a few existing chapters to get a sense of the
register. Specific things to avoid:

- Bullet lists in body text (use prose)
- Significance inflation ("represents a paradigm shift," "marks a pivotal
  moment")
- AI-generation vocabulary: "crucial," "landscape," "transformative,"
  "align with," "underscore," "delve," "pivotal"
- Em-dash overuse
- Generic conclusions ("exciting times ahead")

## Building the book locally

You need [Quarto](https://quarto.org/) installed.

```bash
# Render the book
quarto render

# Or use the justfile if you have `just` installed
just render
```

The rendered output lands in `_book/`. Open `_book/index.html` in a browser
to preview.

## Licensing

Contributions to this book are accepted under the same
[Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE)
license that governs the book. By submitting a pull request, you agree that
your contribution may be published under those terms.

## Questions

File an issue on GitHub. The point is not to be right on paper; the point is
to help institutions govern AI programs that are already real.
