# Appendix D — How This Book Was Written: A Multi-Model AI Authorship Workflow

This appendix documents the workflow used to research and write the chapters of this book. We include it not as a novelty item but because it is itself an instance of the kind of human-AI collaboration the book describes — and because the specific tool choices, failure modes, and tradeoffs we encountered are illustrative of the decisions any organization faces when it tries to use AI for substantive knowledge work.

The workflow involved four distinct agents with different roles: a human author who owned the intellectual direction, Claude Opus 4.7 as the planning and architectural intelligence, Claude Sonnet 4.6 as the orchestrating author, and Gemini as the research engine. Each played to its comparative advantage, and the division of labor was not arbitrary — it emerged from thinking carefully about what each tool does well and where each fails. The human author was present and directing at every phase: writing the prompts, evaluating the outputs, redirecting scope when the AI’s framing was wrong, and deciding what to accept, revise, or discard. No phase ran autonomously to completion without human review.

## D.1 The Workflow in Brief

The workflow proceeded in five phases. [Table tbl-workflow-phases](#tbl-workflow-phases) summarizes them.

| Phase | AI agent | What the AI did | Human author’s role | Output |
|----|----|----|----|----|
| 1\. Scaffold | — | — | Built the Quarto book structure, wrote initial chapter drafts, established the domain/workstream framework | Existing `.qmd` files, `_quarto.yml`, `references.bib` |
| 2\. Analysis and planning | Claude Opus 4.7 | Reviewed the repo, identified gaps, drafted a research plan covering structure, voice, citation standards, and figure requirements | Directed the analysis with specific prompts; reviewed the master prompt and revised scope before accepting it | `_research/MASTER_PROMPT.md` (~500 words) |
| 3\. Brief writing | Claude Sonnet 4.6 | Wrote per-chapter research briefs specifying argument arc, source targets, figure sketches, and open questions | Reviewed each brief; redirected scope where framing was wrong (e.g., ensuring all four AMC domains were covered, not just clinical) | 17 briefs in `_research/briefs/` (~16,500 words total) |
| 4\. Deep research | Gemini (via CLI) | Executed web-search-backed research for each brief, producing annotated source lists, argument spines, section outlines, and figure sketches | Reviewed each dossier for scope gaps; evaluated source quality; accepted, rejected, or re-ran research sessions as needed | 17 dossiers in `_research/dossiers/` (~30,900 words total) |
| 5\. Authorship | Claude Sonnet 4.6 | Wrote chapter prose from dossiers, verified citations, created diagrams and tables, added BibTeX entries | Reviewed each chapter; evaluated voice, argument, and factual accuracy; directed revisions and approved final text | Chapter `.qmd` files, updated `references.bib` |
| 6\. Review pass | Gemini + Claude Sonnet 4.6 | Audited completed chapters for unsupported factual claims and unlinked entities; flagged gaps for resolution | Evaluated each flagged item; approved or rejected proposed citations; made final editorial calls on what to add, revise, or leave as synthesis | Updated `.qmd` files, new BibTeX entries, `_research/REVIEW_PROMPT.md`, `_research/review_groups/` |

Table D.1: The six-phase multi-model authorship workflow. The human author directed and evaluated every phase; no phase ran to completion without human review. The AI agents contributed throughput and breadth; the human author contributed judgment, direction, and accountability for the final text.

## D.2 Why These Tools in These Roles

The tool assignments were deliberate.

**Claude Opus 4.7 for planning.** The planning phase required understanding an existing codebase, identifying structural gaps, and writing a specification detailed enough that a separate agent could execute against it without constant supervision. This is closer to architectural reasoning than text generation, and it benefited from Opus’s stronger judgment on ambiguity and its ability to produce a coherent multi-thousand-word specification in a single pass. We used Opus only for the planning phase and switched to Sonnet for execution — the planning phase is the most cognitively expensive, but it is also the one that generates the fewest tokens, so the cost differential is acceptable.

**Gemini for research.** The research phase requires a different capability profile than authorship: breadth over depth, web search over reasoning, high recall over precise citation. Gemini’s deep research mode — which runs multiple web searches, synthesizes across sources, and produces structured outputs — is well suited to this. It is also meaningfully faster and cheaper than having a frontier model perform iterative web searches itself. The limitation we encountered was that Gemini, when given complex multi-part research prompts, tends to produce planning text (“I will now search for…”) without always completing the structured output the prompt requested. We addressed this by re-running failed chapters sequentially rather than in parallel to avoid rate-limiting, and by specifying the output structure in the master prompt precisely.

Gemini in autonomous (YOLO) mode also took actions we did not explicitly request — creating chapter stub files and editing `_quarto.yml` to add them to the book structure. This is a useful illustration of the principal-agent problem in AI deployment: an agent given broad autonomy in a codebase will take actions consistent with its understanding of the task, which may or may not match the operator’s intent. In this case, the actions were sensible and we kept them. In a production deployment, review before accepting is the right default.

**Claude Sonnet for orchestration and authorship.** Sonnet handles the execution loop: read the dossier, verify suspicious citations before citing them, write prose, create diagrams, edit `references.bib`, check that the Quarto build passes. This is a high-volume task that benefits from fast output and low cost per token more than it benefits from the deeper reasoning Opus provides. The important thing is that the human reviewed each chapter after completion, not that the model was the most capable available.

## D.3 The Citation Problem

The most consistent failure mode in the research phase was citation hallucination. Gemini’s dossiers reliably produced regulatory primary sources (NIST, NIH, FDA, EEOC) with correct URLs, and reliably produced real peer-reviewed papers from high-profile journals with correct DOIs. Where it failed was with newer or more obscure literature: it generated plausible-sounding papers with plausible-sounding DOIs that do not exist. The pattern is recognizable in retrospect — sequential-looking identifiers (`10.1109/COMPUTER.2025.1234567`, `10.5281/zenodo.1234567`), papers from journals that would be unlikely venues for the specific claim, and 2025 publication dates for papers that were too specific to be plausible given the knowledge cutoff.

The structural fix we implemented after discovering fabricated DOIs in early dossiers was a two-tier citation discipline codified in `_research/MASTER_PROMPT.md`. Tier 1 covers sources Gemini can retrieve and verify directly during a session — federal documents, regulatory filings, institutional publications, vendor documentation — and requires a live URL confirmed during the research run. Tier 2 covers peer-reviewed biomedical and informatics papers, and requires only a placeholder in the format `[PUBMED-PENDING: Author YYYY — descriptor — journal]`, with an explicit prohibition on writing any DOI unless the publisher landing page was retrieved during that session. The placeholder system shifted verification responsibility to the authorship phase, where PubMed MCP tools and direct DOI resolution can confirm or reject each citation before it enters `references.bib`. This is not a perfect solution — it requires more authorship-phase work — but it eliminated the most damaging failure mode: a confident, wrong DOI cited in finished prose.

The authorship phase treats every Tier 2 placeholder as unverified until confirmed by direct lookup. The BibTeX entries in `references.bib` contain only sources that were either in the original project bibliography, confirmed real by direct URL or PMID retrieval, or drawn from prior knowledge with high confidence. When no verified citation is available, the prose makes the claim without a citation rather than citing a hallucinated paper.

[Table tbl-citation-quality](#tbl-citation-quality) summarizes the citation quality we observed across the completed dossiers.

| Source type | Accuracy rate (observed) | Notes |
|----|----|----|
| Federal regulatory documents | ~95% | Correct URLs, correct document numbers |
| Major journal policies (Nature, NEJM, JAMA) | ~90% | Correct, with occasional date errors |
| High-profile peer-reviewed papers | ~80% | Well-known papers reliably correct |
| Newer or niche peer-reviewed papers | ~40% | Frequent fabrication of DOIs and author lists |
| Vendor documentation | ~70% | URLs often stale or approximate |
| News/trade press | ~60% | Article may exist but headline or date wrong |

Table D.2: Observed citation accuracy rates by source type across Gemini research dossiers. Rates are estimates based on spot-checking; not every citation was independently verified. The two-tier PUBMED-PENDING discipline was implemented to prevent fabricated Tier 2 citations from reaching `references.bib`.

The practical implication is that Gemini research output should never be committed to a bibliography without verification. The workflow’s structure — Gemini produces a dossier with verified Tier 1 sources and placeholders for Tier 2, a human or second model resolves the placeholders — is the right one for any research-intensive writing task.

## D.4 Costs and Volume

[Table tbl-workflow-artifacts](#tbl-workflow-artifacts) summarizes the artifacts produced and their approximate scale. Token counts for the AI interactions were not systematically recorded; the estimates below are based on output sizes and typical input-to-output ratios.

| Artifact | Files | Words | Notes |
|----|----|----|----|
| Research master prompt (`_research/MASTER_PROMPT.md`) | 1 | ~500 | Written by Claude Sonnet 4.6; two-tier citation discipline codified here |
| Chapter briefs (`_research/briefs/`) | 17 | ~16,500 | Written by Claude Sonnet 4.6 |
| Automation script (`scripts/gemini-research.sh`) | 1 | 76 lines | Written by Claude Sonnet 4.6 |
| Gemini research dossiers (`_research/dossiers/`) | 17 complete | ~30,900 | Produced by Gemini CLI (sequential runs) |
| Chapter prose (`.qmd` files) | 17+ | ~22,300 | Written by Claude Sonnet 4.6 |
| New BibTeX entries (`references.bib`) | 30+ new entries | — | Added during authorship phase; Tier 1 verified, Tier 2 resolved via PubMed |
| Quarto stub files (Gemini-initiated) | several | ~200 each | Autonomous action by Gemini; accepted and incorporated |

Table D.3: Artifacts produced by the multi-model workflow across all authorship sessions. Word counts are approximate; individual chapter and dossier files can be examined in the repository for exact lengths.

The total research and planning effort — phases 2 through 4 — produced approximately 47,400 words of structured inputs for the authorship phase. The authorship phase produces finished chapters of approximately 2,500–4,500 words each, depending on the domain. The ratio of research material to finished prose reflects the verification and synthesis work the authorship phase requires: not all research material makes it into the chapter, the prose is more compressed than the dossiers, and citation verification eliminates a meaningful fraction of the sourced claims.

## D.5 The Review Pass

After the authorship phase produced a complete draft, a structured review pass identified two categories of gap that the writing phase does not reliably close on its own: unsupported factual claims that carry meaningful epistemic weight, and significant entities — organizations, tools, frameworks, standards bodies — mentioned in the text without a hyperlink.

The review was structured by having Gemini perform a first-pass audit of completed chapters, using instructions codified in `_research/REVIEW_PROMPT.md`. Six review group files in `_research/review_groups/` specified which chapters each Gemini run should examine; runs were executed sequentially rather than in parallel to avoid rate-limiting. The prompt asked Gemini to identify, per chapter:

- **Unsupported claims**: Factual assertions that carry substantive weight and lack a citation or reference, prioritized by how much the claim’s validity bears on the chapter’s argument.
- **Unlinked entities**: Organizations, tools, frameworks, and regulatory bodies mentioned by name without a hyperlink that would allow a reader to verify or explore further.

The prompt imposed strict rules: Gemini was not to suggest fabricated URLs or invent citation keys. For unsupported claims, it could flag the claim and name the type of source that would address it, but not supply a DOI it had not verified during that session. For unlinked entities, it could suggest a URL only if it had retrieved that URL during the current run.

Claude Sonnet reviewed Gemini’s outputs and resolved items selectively. A meaningful fraction of flagged claims turned out to already be supported by citations elsewhere in the same paragraph — the audit prompt lacked full bibliography context and could not detect these. Those were closed as non-issues without adding redundant citations. Only high-confidence gaps were resolved: claims traceable to a verifiable primary source, and organizations with stable institutional URLs.

The net output: several new BibTeX entries for sources that had been mentioned without citation, and approximately forty inline links added to first occurrences of significant organizations and tools across the chapter set. The process also confirmed that many flagged claims were already adequately supported — which is useful negative space: it documents that the review was done rather than skipped.

The review pass is intentionally conservative. It closes verifiable gaps rather than filling word count. A chapter that makes a specific numerical claim without a citation, where the claim is traceable to a primary source, is a closure candidate. A chapter that makes a framing claim without a citation — one that represents synthesis rather than a specific verifiable fact — is not. The response to “this could use a citation” is different from “this is documented at a specific primary source we failed to cite.” Conflating them inflates the bibliography without improving the book.

## D.6 What This Means for AI-Assisted Knowledge Work

This workflow illustrates several things about AI-assisted knowledge work that are not obvious from reading about AI in the abstract.

**AI at its most valuable is a research collaborator, not a ghostwriter.** The chapters in this book are not AI-generated prose edited by a human. They are human-structured arguments, grounded in AI-gathered sources, written by a model that was given specific direction about what to argue and how to argue it, and reviewed by a human who can tell when the argument is wrong. The value of the AI is in the research throughput — ~30,900 words of sourced, structured research material produced in hours rather than days — not in generating text that the human then accepts.

**The division of labor matters.** Running Gemini research sessions in parallel consistently caused rate-limiting failures that produced empty or truncated outputs; running them sequentially, one at a time, succeeded. Using Opus for planning and Sonnet for execution reduced cost without sacrificing quality, because the task profiles genuinely differ. These are engineering decisions, not philosophical ones.

**Autonomy requires clear boundaries.** Gemini in YOLO mode created files and edited configuration — actions that were correct in this case but that could easily have been wrong in a different context. Any workflow that gives an AI agent write access to a production system needs explicit boundaries around what the agent is and is not authorized to change.

**The bottleneck is authorship, not research.** The research phase produced ~30,900 words of structured material in approximately four hours of elapsed time (including re-runs for failed dossiers). The authorship phase produces approximately 4,300 words per chapter at higher quality but significantly more elapsed time. At scale, the constraint is the human review step and the authorship pass, not the research. Tools that improve the authorship pass — better citation verification, tighter prose controls — will have a larger impact on throughput than further improvements to the research phase.

**The workflow is reproducible.** The `scripts/gemini-research.sh` wrapper, the `_research/briefs/` input structure, and the `_research/MASTER_PROMPT.md` template are all checked into the repository. Any contributor can run the same workflow for a new chapter or an update pass on an existing chapter. The intellectual bottleneck is writing a good brief; once the brief is right, the research and authorship passes follow a repeatable pattern.
