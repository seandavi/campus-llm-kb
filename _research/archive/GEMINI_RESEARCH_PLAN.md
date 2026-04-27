# A Plan for Gemini: Deep Research and Authorship for the Campus LLM Knowledge Base

## Who you are and what this is

You are Gemini operating in deep research mode. The repository at hand is a [Quarto](https://quarto.org/) book titled *Large Language Model Policy and Practice: Thoughts and a light framework around Generative AI in an Academic Medical Center*. It is rendered to HTML, PDF, and EPUB, and it lives at <https://seandavi.github.io/campus-llm-kb/>. The author has built a solid scaffold — a four-domain framework (Education, Research, Clinical, Business Operations) crossed by five workstreams (Data Access & Use; IT, Security & Infrastructure; Ethical, Legal & Social; Training & Workforce Development; Project Management & Support) — but the domain chapters are largely unfinished. Several `.qmd` files contain only a heading. The clinical chapter is partially developed but reads as an annotated bibliography rather than a chapter of a book.

Your job is to turn this scaffold into a finished manuscript: chapters of flowing prose suitable for a published book, grounded in the current literature, illustrated with diagrams or carefully chosen public-domain figures, and written in a voice that does not betray its machine origin. The author values craft. Treat this like ghostwriting for a senior academic.

## What "done" looks like for each chapter

A finished chapter in this book has the following properties. Hold yourself to all of them before you stop.

**It is substantial.** Target a minimum of six rendered pages of body text per chapter — roughly 3,000 to 4,500 words of prose, exclusive of figures, tables, and reference lists. A chapter of this length needs a real spine: an opening that establishes the stakes, three to six developed sections of argument, and a closing turn that hands the reader something to carry into the next chapter. Do not pad to hit the page count; if a chapter wants to be longer, let it be longer, and if a topic genuinely cannot sustain six pages, surface that to the author rather than inflating it. The existing `framework.qmd` and `barriers.qmd` are the lower bound of acceptable depth; aim higher.

**It is prose, not a list.** The current draft leans heavily on bullets. That is a tell of a brainstorm, not a chapter. Convert every bulleted argument into a paragraph that develops the idea, names the actors, and explains the consequence. Reserve bullets for genuine enumerations — a checklist of regulatory criteria, a list of named tools, an inventory of datasets — and never for connected reasoning. A reader should be able to read a chapter end-to-end and feel they have been led somewhere.

**It cites primary sources, and the citations resolve.** Every empirical claim, every statistic, every named regulation, every quoted figure must trace to something a reader can open. Prefer peer-reviewed literature (PubMed, Nature, JAMA, NEJM AI, *Lancet Digital Health*, *npj Digital Medicine*, JAMIA), authoritative institutional sources (NIH, ONC, HHS, FDA, NIST, WHO, OSTP, AHRQ), and named primary documents (federal rules, model cards, technical reports). Avoid blog posts and vendor marketing as load-bearing citations; if you must cite a blog, cite it once and pair it with a primary source. Add new entries to `references.bib` and use Quarto's `[@bibkey]` syntax inline. When a URL is the right citation (a federal rule, a university policy), use a Markdown link with descriptive anchor text — never a bare URL, never "click here."

**It is illustrated.** Each chapter should contain at least one figure that earns its place. Three acceptable kinds:

1. **Mermaid or Graphviz diagrams** authored inline as Quarto code blocks. Use these for conceptual schematics — a governance flow, a data lifecycle, a decision tree, a stakeholder map. The existing `framework.qmd` contains a Graphviz diagram you should treat as a model.
2. **Public-domain or openly licensed images** from sources such as Wikimedia Commons, NIH/NLM image collections, the CDC Public Health Image Library, government agency websites, or figures from open-access papers under CC-BY. Use Quarto's `![Caption](url){#fig-label}` form, give the figure a caption that names the source and license, and *verify* that the URL is reachable and the license permits reuse before including it. Do not hotlink images whose license you have not confirmed.
3. **Tables** built from real data — comparisons of institutional policies, summaries of regulatory criteria, principle-by-principle question banks (the existing `tbl-healthcare-guiding-principles` is the model).

Every figure and table must have an `{#fig-...}` or `{#tbl-...}` label and be referenced from the body text using `@fig-label` or `@tbl-label`. Figures the reader is not pointed to are decoration; figures the reader is pointed to are argument.

**It does not sound like an LLM wrote it.** This is a hard requirement. After drafting any chapter, run it through the `humanizer` skill before committing. The patterns to remove are the usual ones: em-dash overuse, the rule of three, "it's not just X, it's Y" parallelisms, "in the rapidly evolving landscape," "navigate the complexities," "delve into," "leverage," "robust," "comprehensive," superficial -ing analyses ("highlighting the importance of..."), promotional adjectives, and vague attributions ("experts say," "studies show"). Replace promotional vagueness with specific claims and named sources. The author's own voice in `framework.qmd` and `barriers.qmd` is plain, declarative, and slightly skeptical; match that register.

**It connects to the rest of the book.** Cross-reference the framework chapter when you invoke a domain or workstream. Cross-reference the values chapter when you invoke a principle. Use Quarto's section-cross-reference syntax (`@sec-foo`) — add `{#sec-foo}` IDs to section headings as you go.

## Repository conventions you must follow

- **Quarto, not generic Markdown.** Files end in `.qmd`. Chapters appear in `_quarto.yml` under `book.chapters` in a specific order. If you create a new chapter, add it to `_quarto.yml`. Do not rename existing chapters without checking that no other file references them.
- **Bibliography is `references.bib`, BibTeX format.** Add new entries with stable keys (e.g., `Singhal2023-medpalm`, not `ref42`). Prefer DOIs in the `doi` field. Cite inline as `[@key]` or `@key` per Quarto/Pandoc rules.
- **Figure and table labels** must use the `fig-` and `tbl-` prefixes Quarto requires for cross-references to work.
- **No emoji** unless the author asks. The existing prose has none.
- **No "AI Disclosure" boilerplate** at the top of chapters. The author handles attribution; do not add notes about how the chapter was drafted.
- **Front matter dates.** Where chapters carry a `date:` field, use `date: last-modified` rather than a hard-coded date.
- **Build before you commit.** Run `quarto render` (or at minimum `quarto check`) and resolve any errors. A diagram that fails to render is worse than no diagram.

## Chapter-by-chapter brief

The repository has files in three states: nearly empty stubs, partially drafted, and reasonably complete. Treat each accordingly.

### `resources_research.qmd` — currently a stub

This is the largest greenfield. Write a chapter that does the following, in this order, as continuous prose:

1. **Open with the stakes.** Why generative AI matters for a research enterprise inside an academic medical center: the scale of the literature, the time cost of grant writing, the reproducibility crisis, the IRB and human-subjects context that distinguishes biomedical research from research generally.
2. **Survey the use cases by research lifecycle stage.** Literature review and synthesis (with named tools: Elicit, Consensus, SciSpace, Undermind; cite peer-reviewed evaluations where they exist), hypothesis generation, study design and statistical consultation, code generation for data analysis, manuscript drafting, peer review, and grant writing. For each, name what is working in 2025–2026, what is not, and what the institutional risks are.
3. **Address research integrity head-on.** Authorship attribution (cite ICMJE's position; cite *Nature*'s and *Science*'s editorial policies), the use of LLMs in peer review (cite the NIH peer-review policy on generative AI and the NSF guidance), data fabrication risk, hallucinated citations (cite the empirical work on this — there is a literature now). Discuss what an institutional research integrity office should do.
4. **Address the human-subjects and privacy questions.** What can be entered into a public LLM versus an institutional tenant? Connect to HIPAA, the Common Rule, and the institution's IRB processes. Reference the values chapter (`@sec-values`) for the principles.
5. **Close with infrastructure.** GPU access, secure compute environments, institutional API access, the role of research computing units, and the choice between hosted and self-hosted models for sensitive data.

Include at minimum: a Mermaid diagram of the research lifecycle annotated with where AI tools fit; a table comparing two or three institutional policies on generative AI in research (Stanford, Harvard, NIH-intramural, or similar); citations to at least 25 primary sources added to `references.bib`.

### `resources_education.qmd` — currently a curated link list

The current file is 95 percent hyperlinks under bullet headings. Convert it into a chapter. The link list is a research artifact; the chapter is the product.

Structure as prose with the following arc:

1. **What changed in medical and graduate education when ChatGPT arrived**, and what has shaken out by 2025–2026. Cite the wave of empirical studies on student use, faculty attitudes, and outcomes.
2. **The two failed framings**: the prohibition framing (honor codes alone) and the laissez-faire framing. Why each fails. Cite specific institutional case studies.
3. **A workable framing for the academic medical center**: tiered policies by course type, transparent disclosure norms, AI-resistant assessment design, and the move from product-grading to process-grading. Cite the writing-studies literature (Mollick, Anson, Watkins) and the medical-education-specific literature.
4. **What to teach students about AI itself**, including AI literacy in the curriculum (cite the AAMC and LCME positions if they have updated them; cite McCoy 2020 and James/Wachter 2022 from the existing clinical chapter).
5. **The faculty development problem**, which is larger than the student-policy problem.
6. **Resources** — the existing link list, but cut to the genuinely useful, organized into a small number of tables (institutional policies; teaching guides; podcasts and newsletters), with one-sentence editorial annotations rather than raw links.

Include at minimum: a Mermaid diagram of an "assessment redesign decision tree"; a comparative table of three to five institutional policies; ten or more new citations to primary studies. Aggressively cut links that have rotted, that are paywalled with no abstract worth citing, or that duplicate one another.

### `resources_clinical.qmd` — partially drafted

This chapter has good bones (the eight Badal principles, with a table) but the body alternates between bulleted question banks and short prose stubs. Principles 5 through 8 are headings only. Two issues to fix:

1. **Finish principles 5 through 8** with the same depth as principles 1 through 4 — a paragraph or two each, with citations and concrete clinical examples.
2. **Replace the trailing reference dump** (the numbered list of 44 papers at the end) with prose. The references should be cited in context within the chapter, and the bibliography should live in `references.bib`. A book chapter does not end with a numbered list of papers; that is a literature review supplement.

Add new sections for areas the existing draft does not cover and that an academic medical center cannot ignore in 2025–2026: ambient documentation / AI scribes (the Tierney citation is already there — build on it; add Epic's and Microsoft/Nuance's deployments and the empirical evaluations); clinical decision support and the FDA's evolving stance on generative AI as a device; the ONC HTI-1 algorithm transparency rule (already linked in `HHS.qmd` — connect the two); patient-facing chatbots and the medico-legal exposure; documentation of AI use in the medical record. Each as connected prose, not a checklist.

Include at minimum: an updated Mermaid diagram showing the clinical AI lifecycle (procure → validate → deploy → monitor → retire) with governance touchpoints; a table summarizing FDA, ONC, and CMS actions on AI in healthcare with dates and links to primary documents; one diagram or carefully chosen openly licensed image illustrating an ambient-scribe workflow.

### `resources_business.qmd` — currently empty

Write the chapter from scratch. The business operations of an academic medical center include finance, HR, supply chain, IT operations, marketing, philanthropy, facilities, and legal. Generative AI use cases in each are real and increasingly mature; treat this with the same seriousness as the clinical chapter.

Structure:

1. **The argument that business operations is the lowest-risk, highest-velocity domain** for AI adoption — and why that does not mean it is unregulated. EEOC guidance on AI in hiring, NYC Local Law 144, the FTC's posture on AI marketing claims, state-level employment AI laws.
2. **Function-by-function survey** as connected prose, not a bulleted list of functions. For each function name two or three concrete use cases that an academic medical center has actually deployed somewhere (cite the deployment).
3. **The shadow-IT problem**: employees using consumer ChatGPT with internal data. What an enterprise tenant buys you. Microsoft Copilot, Google Workspace AI, and institutional ChatGPT Enterprise as the three common paths in 2025–2026.
4. **Procurement and vendor risk**, including the model card / system card review, the data residency questions, and the BAA question for any tool that may touch PHI.
5. **Measurement**: how to know if any of this is working. KPIs that are actually trackable.

Include at minimum: a Mermaid diagram of an "AI procurement decision flow"; a table of the top three to five institutional enterprise AI platforms with a short comparison; ten or more primary citations.

### `framework.qmd`, `implementation.qmd`, `barriers.qmd`, `values.qmd`, `index.qmd`, `preface.qmd`

These are reasonably developed and reflect the author's voice. **Do not rewrite them.** Light passes only:

- Add primary citations where load-bearing claims are uncited.
- Replace any stale or broken external links.
- Where bullets are doing the work of paragraphs, convert to paragraphs without changing the argument.
- Run the humanizer over them; correct only what the humanizer flags.
- The Graphviz diagram in `framework.qmd` is good. Leave it. Consider adding one supporting Mermaid diagram (for example, a swimlane of how the AISC interacts with domains and workstreams).

### `appendices.qmd`, `bill_of_rights.qmd`, `HHS.qmd`

These are reference appendices and should remain compact. For `HHS.qmd`, expand the single-paragraph summary into two or three paragraphs of context (what the rule changed, what "decision support intervention" certification now requires, what this means for institutions deploying their own LLM-based CDS), with citations. For `bill_of_rights.qmd`, add a short closing paragraph on what the 2023 Executive Order on AI and any subsequent federal action have superseded or extended, with primary-source links. For `appendices.qmd`, leave it alone unless you find a more current synthesis from the same authors.

### Empty placeholder files and the Workstream Resources part

`infrastructure.qmd`, `workforce.qmd`, `ethics.qmd`, `data.qmd`, and `pm_and_support.qmd` correspond exactly to the five workstreams defined in `framework.qmd`. They are present in the repo but commented out of `_quarto.yml`. The author is open to additional chapters, so the recommended path is to **uncomment the "Workstream Resources" part of the book and write all five as full chapters**. Each maps to a workstream and should be six or more pages, structured the same way the domain chapters are. Brief sketches:

- **`data.qmd` — Data Access & Use.** The data lifecycle for AI in an academic medical center: provenance, classification (public, internal, confidential, regulated/PHI), de-identification limits in the era of LLMs, the re-identification literature, data sharing agreements, the role of the honest broker, the tension between research data lakes and clinical data warehouses, FHIR and the OMOP common data model as substrates for AI. Include a Mermaid diagram of a data flow with policy gates.
- **`infrastructure.qmd` — IT, Security & Infrastructure.** Reference architectures for institutional LLM deployment: API gateways to commercial models, private tenants (Azure OpenAI, AWS Bedrock, Google Vertex), self-hosted open-weight models on institutional GPUs, retrieval-augmented generation patterns, vector stores, identity and access management, audit logging, and the security controls that make any of this defensible (NIST AI RMF, HITRUST, the institution's existing security framework). Include an architecture diagram.
- **`ethics.qmd` — Ethical, Legal & Social.** Build on `values.qmd` with depth: the bias literature specific to clinical LLMs (cite the Singhal Med-PaLM evaluations, the bias audits of GPT-4 in clinical reasoning, the disparity findings), informed consent in the age of ambient documentation, the IRB's posture, the medico-legal exposure, the intellectual property questions for AI-generated research output, and the social-license question of community trust. This chapter should be one of the longest.
- **`workforce.qmd` — Training & Workforce Development.** A curriculum, not a wish list. AI literacy tiers (board / executives, clinicians, researchers, staff, students), competency frameworks (cite the AAMC, AMIA, and ACGME positions; cite Garvey 2022), training modalities, the train-the-trainer problem, and how to measure competence. Include a competency matrix table.
- **`pm_and_support.qmd` — Project Management & Support.** The operational chapter: how an AI Steering Committee actually runs, the intake-and-triage process for proposed AI projects, stage gates (idea → pilot → validation → deployment → monitoring → retirement), the role of solution architects and change-management staff, and the support model for end users once tools are live. Include a stage-gate diagram and a sample intake form as a table.

If you take this path, uncomment the relevant block in `_quarto.yml` and add a short part-introduction to a new file (`workstream_resources.qmd` or similar, mirroring `domainresource.qmd`).

### Additional chapters worth proposing

Beyond the four domains and five workstreams, three further chapters would meaningfully strengthen the book. Each is six or more pages. Propose them to the author and write them if approved:

- **An evaluation and monitoring chapter.** How an institution evaluates a generative-AI tool before deployment and monitors it after. Pre-deployment: silent-mode evaluation, red-teaming, fairness audits, calibration, the difference between benchmark performance and local performance. Post-deployment: drift detection, the "shadow deployment" pattern, incident reporting, the equivalent of pharmacovigilance for AI. Cite the FDA's Predetermined Change Control Plan guidance, the Coalition for Health AI (CHAI) work, and the empirical literature on post-deployment AI failures. This is currently scattered across the framework, clinical, and barriers chapters; pulling it into one chapter improves the whole book.
- **A regulatory and policy landscape chapter.** A consolidated reference chapter covering the federal layer (FDA SaMD and the Predetermined Change Control Plan, ONC HTI-1 algorithm transparency, CMS, HHS OCR on HIPAA and AI, OSTP, the 2023 Executive Order and its successors, the NIST AI Risk Management Framework), the state layer (Colorado AI Act, California, New York), the international layer to the extent that institutions with international collaborators care (EU AI Act, UK MHRA, Health Canada), and the professional-society layer (AMA, AHA, AAMC, ACR, ACGME). Heavy on tables; structured for use as a desk reference.
- **A case studies chapter.** Three to five worked case studies of real generative-AI deployments in academic medical centers in 2024–2026, each two pages or so: an ambient-scribe deployment, an institutional ChatGPT tenant rollout, a research-side LLM tool, an inbox-message draft-reply deployment, a back-office automation. Cite published evaluations and institutional press releases as primary sources; do not fabricate cases. Each case study follows the same structure (context, intervention, governance, results, lessons).

These three are the highest-leverage additions; do not add others without discussing first.

## Working method

Work one chapter at a time. For each chapter:

1. **Research first.** Spend the bulk of your effort on retrieval, not generation. Pull the primary sources, read them, and form an argument. Cite what you read.
2. **Outline the prose argument** before writing — what is the chapter's spine? What does the reader know at the end that they did not know at the start?
3. **Draft the chapter** in `.qmd` form. Use Quarto features (cross-references, callouts where genuinely useful, code blocks for diagrams). Add bibliography entries to `references.bib` as you go.
4. **Add figures and tables** with labels and in-text references.
5. **Run the humanizer skill** on the prose. Apply its edits.
6. **Render** with `quarto render` and confirm the chapter builds, the citations resolve, the figures appear, and the cross-references link.
7. **Commit** with a descriptive message scoped to the chapter (e.g., `flesh out research domain chapter with prose, citations, and lifecycle diagram`). One commit per chapter, or smaller commits within a chapter for distinct sections — the author prefers thorough, frequent commits over one giant commit at the end.
8. **Surface a short report** to the author after each chapter or batch of chapters so they can review.

### Parallel work is fine

If you can run multiple research-and-drafting threads in parallel, do so. The chapters are largely independent — the four domain chapters do not depend on one another, the five workstream chapters do not depend on one another, and the three proposed additional chapters (evaluation, regulatory landscape, case studies) stand alone. Reasonable parallel batches:

- All four domain chapters in parallel.
- All five workstream chapters in parallel.
- The three additional chapters in parallel.

A few constraints when working in parallel:

- **`references.bib` is a shared resource.** Multiple parallel threads writing to the same file will collide. Either serialize the bibliography commits, or have each thread write its new entries to a per-chapter scratch file (e.g., `references_research.bib`) that you merge into `references.bib` at the end of the batch. Use stable, descriptive bibkeys (`Singhal2023-medpalm`, `ICMJE2023-aiauthorship`) so merges do not produce duplicates.
- **`_quarto.yml` is also shared.** Only one thread should edit it per batch. Coordinate so that uncommenting the Workstream Resources part or adding new chapter entries happens in a single edit, not five competing edits.
- **Cross-references across chapters** (e.g., the research chapter pointing to a section in the ethics chapter) should be added in a final reconciliation pass after the parallel batch lands, not during it. Draft each chapter as if its siblings exist; wire up the cross-references at the end.
- **Render the full book once per batch**, not once per chapter, when working in parallel. A clean `quarto render` of the whole project is the integration test.
- **Commit boundaries**: prefer one commit per chapter even when the chapters are written in parallel, so the history reads cleanly. Avoid one mega-commit covering an entire batch.

If a parallel thread hits a question that requires the author's judgment (scope of a chapter, whether to cite a contested source, whether to add a new top-level chapter), do not block the other threads — set that chapter aside, surface the question, and continue with the chapters that are unblocked.

## What to avoid

- Do not invent citations. If you cannot verify a paper exists at the DOI you have, do not cite it. Hallucinated references are the single fastest way to destroy the author's trust in this manuscript.
- Do not write hedging filler ("It is important to note that...", "It is worth considering..."). State the claim.
- Do not pad. A short, dense chapter is better than a long, thin one.
- Do not add "Conclusion" sections that restate the chapter. End where the argument ends.
- Do not introduce new top-level sections to `_quarto.yml` without checking with the author.
- Do not commit broken renders. If `quarto render` fails on your changes, fix it before committing.
- Do not rewrite chapters the author already considers done.

## Deliverables, in order of priority

Each domain and workstream chapter is six or more pages of body prose. Work the list top to bottom, surfacing each chapter to the author for review before moving to the next.

1. `resources_business.qmd` — full chapter from scratch.
2. `resources_research.qmd` — full chapter from scratch.
3. `resources_education.qmd` — convert link list to a full chapter.
4. `resources_clinical.qmd` — finish principles 5–8, dissolve the trailing reference list into the body, add the missing sections, expand to the six-page minimum.
5. **Propose adding the Workstream Resources part to the author.** If approved, write `data.qmd`, `infrastructure.qmd`, `ethics.qmd`, `workforce.qmd`, and `pm_and_support.qmd` as full chapters and uncomment the relevant block in `_quarto.yml`.
6. **Propose the three additional chapters** (evaluation and monitoring, regulatory and policy landscape, case studies). If approved, write them and add them to `_quarto.yml` in a sensible location.
7. Light passes on `framework.qmd`, `implementation.qmd`, `barriers.qmd`, `values.qmd`, `index.qmd`, `preface.qmd`.
8. Expansion of `HHS.qmd` and `bill_of_rights.qmd`.
9. Updated `references.bib` reflecting all new citations.

When everything in 1–9 is done and the book renders cleanly to HTML and PDF, it is ready for an editorial pass by the author.
