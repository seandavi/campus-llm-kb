# Research dossier prompt — Campus LLM Knowledge Base

You are producing a research dossier for a chapter of a Quarto book titled
*Large Language Model Policy and Practice: Thoughts and a light framework
around Generative AI in an Academic Medical Center*. The book lives at
<https://github.com/seandavi/campus-llm-kb/>. The dossier you produce will be
handed to a separate authorship pass that turns it into prose; you are not
writing the chapter, you are producing the raw materials.

## What to produce

Output a single Markdown document with these sections, in this order:

### 1. Argument spine (≤300 words)

The shape of the chapter as a paragraph: what the reader knows at the end that
they did not know at the start, in three to six logical moves. Plain prose. No
bullets in this section.

### 2. Section outline

A numbered outline of the chapter's sections, each with a one-sentence
description of what that section argues. Five to eight sections is typical for
a chapter targeting six or more rendered pages (≈3,000–4,500 words of body
prose).

### 3. Annotated source list

A numbered list of primary sources you found. For each source provide:

- Full citation in a form usable for BibTeX conversion (authors, title, venue,
  year, DOI or stable URL).
- A 2–4 sentence annotation: what the source actually says, what claim in the
  chapter it supports, and any caveats (sample size, methodological limits,
  date sensitivity).
- A flag for source type: `peer-reviewed`, `regulatory-primary`,
  `institutional-policy`, `professional-society`, `news-or-blog`, or `vendor`.

Aim for at least 25 sources for a domain or workstream chapter, at least 15 for
an appendix-style chapter. **Prefer peer-reviewed literature, named regulatory
documents, and institutional primary sources. Cite blogs and vendor pages
sparingly and only when they are the primary source for a deployment or
policy.**

**Verify every DOI and URL before listing it.** Do not list a citation you have
not retrieved. Hallucinated citations are the single worst failure mode for
this dossier; an empty slot is better than a fabricated one.

### 4. Candidate figures and tables

A list of three to six candidate figures or tables for the chapter. For each:

- What it shows and why it earns its place in the argument.
- Type: `mermaid-diagram`, `graphviz-diagram`, `data-table`, or
  `external-image`.
- For external images: the source URL, the license (must be public-domain,
  CC0, CC-BY, or a US-government work), and a confirmation that you opened the
  source page and verified the license.
- For diagrams and tables: a one-paragraph sketch of what the figure or table
  contains, specific enough that the authoring pass can build it without
  further research.

### 5. Open questions for the author

A short list of judgment calls the authoring pass should not make alone:
contested framings, scope choices, sources where the literature genuinely
disagrees. One to five items. If there are none, write "None."

## Voice and conventions

- Markdown only. No HTML.
- Use stable, descriptive bibkeys (`Singhal2023-medpalm`,
  `ICMJE2023-aiauthorship`), not `ref1`, `ref2`.
- Prefer DOIs over URLs when both exist.
- Date everything you can; the field is moving fast and a 2022 finding may not
  hold in 2026.
- Do not write the chapter prose itself. The argument spine and section
  outline are scaffolding, not draft text.
- Do not produce promotional language, "rapidly evolving landscape" framings,
  or rule-of-three constructions. The dossier should read like a research
  memo, not a press release.

## Chapter-specific brief

The brief for the chapter you are researching follows below. Read it
carefully. If the brief is ambiguous on scope, note that in section 5 (Open
questions) rather than guessing.

---
