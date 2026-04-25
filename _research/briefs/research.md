# Chapter brief: Research Domain

**Target file:** `resources_research.qmd`
**Status:** currently a stub (one heading, no body).
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** second domain chapter, under the "Domain Resources" part.

## Scope

Research operations of an academic medical center: basic science, clinical research,
translational research, and population health research. Generative AI use cases
throughout the research lifecycle. **Not in scope:** education or clinical
operations — those have separate chapters.

## Argument the chapter should make

Generative AI arrived in research at exactly the moment the academic community
was already under pressure — from the reproducibility crisis, from publication
volume growth that outpaces any individual's reading capacity, from grant-writing
overhead that consumes a growing fraction of investigator time. The technology
genuinely helps with several of these problems, and the literature is honest
about where it does not. The chapter should give investigators and research
administrators a clear map of the real capabilities, the real risks, and what
the institution owes researchers in terms of policy, infrastructure, and
guidance.

## Areas the dossier must cover

- **Scale of the problem**: literature growth (PubMed indexed ~1.5M papers/year
  by 2024), grant-writing time burden, reproducibility crisis — cite primary
  sources for each.
- **Literature review and synthesis**: named tools (Elicit, Consensus, SciSpace,
  Undermind, Semantic Scholar, ResearchRabbit), peer-reviewed evaluations of
  their accuracy, recall, and hallucination rates. What they are good for vs.
  where they systematically fail.
- **Hypothesis generation and study design**: examples from the literature
  where LLMs contributed; critical analysis of when AI-generated hypotheses
  are worth pursuing.
- **Code generation for data analysis**: R, Python, SQL for research data;
  the reproducibility implications; watermarking and documentation practices.
- **Manuscript drafting and editing**: what ICMJE actually says about LLM
  authorship (cite the 2023 updated position); what the major journals say
  (Nature, Science, NEJM, JAMA, Cell — cite their editorial policies with dates
  and URLs); the difference between using LLM as grammar checker vs. substantive
  drafter.
- **Grant writing**: NIH's stated position on AI in grant applications; NSF's
  guidance; the intellectual-contribution question; what a PI should and should
  not disclose.
- **Peer review**: NIH's policy on use of AI in peer review (the 2023
  prohibition and its scope); similar policies from major publishers; the
  confidentiality problem (a reviewer pasting an unpublished manuscript into
  ChatGPT).
- **Research integrity risks**: citation hallucination (cite the empirical
  studies measuring hallucination rates in academic literature assistance);
  data fabrication concerns; detection limitations.
- **Human-subjects and privacy constraints**: what can be entered into a public
  LLM; Common Rule; HIPAA for clinical research data; the distinction between
  de-identified and re-identifiable data in the era of LLMs; IRB posture.
- **Infrastructure for research**: GPU access, secure compute environments,
  institutional API access, private model deployment for sensitive data, the
  role of research computing units, retrieval-augmented generation over
  proprietary corpora.

## Connections to other chapters

- Framework chapter defines Research as a domain with five workstreams — cross-reference.
- Values chapter principles apply here (transparency, reproducibility).
- The data workstream chapter (`data.qmd`) covers data governance in detail;
  this chapter should reference it for the human-subjects/privacy section
  rather than duplicating.

## Figure and table targets

- A Mermaid diagram of the research lifecycle (idea → hypothesis → study design
  → IRB → data collection → analysis → manuscript → peer review → publication →
  dissemination) with annotations showing where AI tools currently fit, where
  they are contested, and where institutional policy restricts them.
- A table comparing major journal and funder policies on AI use in manuscripts
  and grant applications (Nature, Science, NEJM, JAMA, NIH, NSF) — columns:
  organization, AI authorship position, disclosure required?, date of policy.
- A table or short comparison of literature-review AI tools (Elicit, Consensus,
  SciSpace, Semantic Scholar) on dimensions: coverage, hallucination rate,
  citation verification, cost, evidence quality.

## Voice constraints

Plain, specific, directed at working research investigators and research
administrators — not at AI enthusiasts. Should be willing to say "this tool
is not ready for X" when the evidence supports that. No "democratize research"
framing.

## Open questions to flag

- The institutional AI policies at NIH, NSF, and major journals are evolving
  rapidly; flag where you have found conflicting or superseded guidance.
- The empirical literature on LLM-assisted literature review is thin and
  growing — flag the most recent systematic evaluations and whether they are
  pre-print or peer-reviewed.
