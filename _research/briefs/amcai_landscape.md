# Chapter brief: AMC AI Overview and Introduction

**Target file:** `index.qmd` (complete rewrite)
**Status:** existing chapter — thin, generic, frozen in 2023 language.
**Length target:** ≥4 rendered pages (~2,000–2,500 words). Shorter than workstream chapters; this is an executive introduction, not a reference chapter. Every sentence must earn its place.
**Position in book:** second chapter, after preface. First substantive chapter every reader hits.

## Scope

A compelling, specific, current-as-of-2026 introduction to why AI governance at an AMC requires a structured program — not just policy documents. This chapter replaces a generic "challenges and opportunities" overview with an honest account of where the field actually is, what has worked, what has failed, and why this book exists.

## Argument the chapter should make

The 2023–2025 wave of AI deployment at U.S. health systems is structurally different from previous AI waves in healthcare (expert systems, early machine learning). The difference is not the technology alone — it is scale, pace, and the ambient/always-on nature of the new tools. Most institutions have deployed faster than their governance matured. The result is a growing body of both promising early results and high-profile failures that share a common cause: governance and workforce readiness were treated as afterthoughts. This book is for the institutions that want to not repeat those failures.

## Areas the dossier must cover

### The scale of current AMC AI deployment

- How many U.S. health systems have deployed at least one ambient documentation tool (DAX, Abridge, Nuance, Suki)? Cite the most current adoption figures available.
- What is Epic's current reported deployment of its ambient documentation features? How many patient encounters per day or month now involve AI-generated documentation?
- How many FDA-cleared AI-enabled medical devices are currently on the market (as of 2025-2026)? Find the most current figure from FDA's database.
- What fraction of U.S. hospitals or health systems report using at least one AI clinical decision support tool? Cite AHA surveys, HIMSS surveys, or peer-reviewed studies.
- Key AMC-specific case studies: UCSF, Duke, Vanderbilt, Mayo Clinic, Mass General/Partners — what have they deployed and at what scale? Find published accounts, not press releases.

### What makes this wave different

- The API commoditization argument: foundation models are now accessible through enterprise APIs with BAAs. What changed from 2020 to 2024 that lowered the barrier to deployment?
- The ambient/always-on distinction: previous AI was episodic and discrete (this test, this image). Current AI is continuous and ambient. What are the governance implications of that shift?
- The pace argument: how fast are AMCs deploying relative to their governance maturation? Any published data on the gap between AI tool inventory and governance program maturity.
- The "pilot graveyard" phenomenon: cite any published data or accounts of the gap between AI pilots that complete and AI tools that achieve sustained clinical deployment.

### Early results: what has worked

- 2–3 specific, named, published case studies where clinical AI deployment demonstrably improved patient outcomes or operational efficiency. Actual measured outcomes, not anecdotes. Cite the peer-reviewed literature.
- Ambient documentation adoption data: what do AMCs that have deployed ambient scribes report about physician time savings, note quality, and burnout? Find the most current published studies.
- The business case: what ROI data exists for clinical AI deployment at scale? Revenue, cost savings, or retention benefits.

### Early results: what has failed

- High-profile AI failures in clinical settings: IBM Watson for Oncology; any published post-mortems on failed clinical AI deployments. What went wrong and why?
- The Sepsis prediction algorithm controversy: the retrospective studies that questioned whether deployed sepsis AI tools were actually improving outcomes (cite the published debates, including the ProPublica/University of Michigan work if applicable).
- The Obermeyer 2019 racial bias finding: what happened after it was published? Were the algorithms changed? Is there published follow-up?
- Alert fatigue data: what fraction of clinical AI alerts are overridden? Find published figures.

### The governance gap

- Any published surveys or studies on the state of AI governance at U.S. health systems: what fraction have a formal AI governance committee, a tool inventory, an equity audit process?
- The disconnect between stated AI ethics principles and operational governance: any published research on this gap.
- What peer institutions have said publicly about why they needed structured governance programs: UCSF TAI playbook rationale, Duke ABCDS charter rationale, Vanderbilt AVAIL program rationale.

## Figure and table targets

- A timeline figure (Mermaid or table): key milestones in healthcare AI deployment 2018–2026, organized by clinical/regulatory/governance tracks running in parallel. Shows that deployment outpaced governance.
- A table: selected AMC AI governance programs with dates established, structures, and public documentation. Shows the field is converging on common structures.

## Voice constraints

This chapter speaks directly to the reader — a clinical leader, informatics director, or compliance officer who is trying to decide whether to invest in building a governance program. It should not be a literature review. It should be an honest account of the current situation that motivates the rest of the book. First-person perspective is appropriate in places. Acknowledge complexity and uncertainty where they exist. The chapter should read like someone who has been in the room when AI deployments succeed and when they fail.

Do not use the framing "challenges and opportunities." That framing signals a 2023 think-piece. Use specific present-tense claims about what is happening at AMCs right now.

## Open questions to flag

- The pilot-to-deployment gap: is there published data on the fraction of healthcare AI pilots that achieve sustained deployment, or is this primarily anecdotal?
- Alert fatigue and override rates: find the most current published figures; rates vary widely by tool type.
- Epic ambient AI: Epic is notoriously tight-lipped about deployment data; find whatever is publicly reported.
- Sepsis AI controversy: flag the state of the evidence debate as of 2025-2026.
