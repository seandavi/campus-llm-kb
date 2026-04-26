# Chapter brief: Values, Principles, and Institutional Governance Framework

**Target files:** `values.qmd` (rewrite) and `framework.qmd` (expand)
**Status:** both existing chapters — thin bullet-point content, 2023-era framing.
**Length target:** `values.qmd` ≥3 rendered pages (~1,500–2,000 words); `framework.qmd` ≥3 rendered pages (~1,500–2,000 words). These are orientation chapters, not reference chapters.
**Position in book:** `values.qmd` is the third chapter; `framework.qmd` opens the Implementation section.

## Scope

Two chapters that together establish why the governance framework exists and what it is. `values.qmd` grounds the framework in institutional values and shows how those values have been operationalized at peer institutions. `framework.qmd` explains the 4-domain × 5-workstream matrix structure and argues for why this particular organizational approach reflects how AMCs actually work — not an abstract ideal.

## Argument the chapters should make

### values.qmd
Institutional values for AI are not differentiating — every AMC says it values patient safety, equity, transparency, and trust. The question is whether those values are encoded in operational governance structures or whether they remain aspirational statements. The chapter shows how peer AMCs have operationalized values into governance mechanisms: equity monitoring requirements, transparency disclosure requirements, human-oversight mandates. It is about the gap between a values statement and a governance program.

### framework.qmd
The 4-domain × 5-workstream matrix is not a theoretical construct. It reflects a real structural feature of AMCs: four semi-independent organizational entities (clinical, research, education, business operations) that share infrastructure and governance overhead but have largely independent missions, budgets, risk profiles, and use cases for AI. The workstreams (data, infrastructure, ethics/ELSI, workforce, PM/support) are the cross-cutting capabilities that those domains share. The matrix lets the institution centralize what should be centralized (governance, infrastructure, ethics) while decentralizing what should be decentralized (domain-specific use cases and deployment decisions).

## Areas the dossier must cover

### Peer AMC values and governance frameworks

- **UCSF Trustworthy AI (TAI) Playbook**: the six principles (Fair, Robust, Transparent, Responsible, Privacy, Safe) and how they are defined operationally. Who owns each principle. How the playbook is used in practice. Find the primary document at ai.ucsf.edu or equivalent.
- **Duke Health ABCDS Oversight Charter**: the algorithm-based clinical decision support oversight structure. Decision rights, the algorithm registry, the committee structure. Find the publicly available documentation.
- **Vanderbilt AVAIL program**: the AI governance and intake process. What Vanderbilt has published about their REDCap-based intake and multidisciplinary review.
- **Mayo Clinic Platform AI Enablement Framework**: the "validation-as-a-service" model and how Mayo governs AI across the platform.
- **Mass General Brigham / Partners Healthcare**: any published AI governance framework.
- **Other peer institutions**: any AMC with a publicly documented AI governance framework or AI values statement that has been operationalized. Find 2–3 additional examples.

### How values have been operationalized

- **Transparency**: what does "transparency" actually mean operationally for clinical AI? The ONC HTI-1 rule's transparency requirements (31 source attributes for DSIs) — find the actual list of required source attributes. How have leading AMCs operationalized transparency beyond regulatory minimums?
- **Equity**: what does "equity" mean operationally? The Badal framework (alleviation of health disparities as a design principle). Find the most current published frameworks for operationalizing equity in clinical AI validation and monitoring.
- **Human oversight**: the WHO requirement for human oversight as a governance principle. How have AMCs encoded this in deployment policies? The relationship between human-oversight requirements and automation complacency literature.
- **Privacy**: beyond HIPAA — what does privacy mean for LLM inference? The zero-data-retention principle and how it is operationalized in BAA negotiations.
- **Accountability**: how is accountability structured when AI is involved in a clinical error? Published liability frameworks and how AMCs have responded.

### The structure of AMC AI governance bodies

- What are the common names for AMC AI governance committees? (AI Steering Committee, AI Governance Committee, ABCDS committee, etc.)
- What is the typical membership? Find any published descriptions or surveys of AMC AI governance committee structures.
- AISC reporting relationships: who does the AI governance body report to? CEO, CMO, CIO — what is the evidence on which reporting structure is most effective?
- How frequently do AMC AI governance committees meet? What decisions are delegated vs. reserved to the full committee?
- Any published surveys on the prevalence of formal AI governance committees at U.S. health systems or AMCs.

### The 4-domain matrix rationale

- Is there published evidence for the domain-based governance approach (separate governance by clinical, research, education, business operations) vs. a unified approach?
- How have other AMCs organized their AI programs: by function (like this framework's workstreams) vs. by domain vs. by use case?
- The "federated governance" model: what is it, what are its advantages and disadvantages, and which AMCs have adopted it?
- The case for cross-domain workstreams: what is the governance literature on shared services vs. distributed ownership in technology programs? Any healthcare-specific evidence.

### Values frameworks from professional societies and standards bodies

- **NIST AI RMF** Govern function: what specific governance elements does the NIST framework require?
- **FUTURE-AI principles**: the six foundational requirements (fairness, universality, traceability, usability, robustness, explainability) and how they map to governance practices.
- **AMA policy on augmented intelligence**: the most current version, with specific language on physician accountability and oversight.
- **ISO/IEC 42001:2023**: the AI management systems standard and what AMC certification would require.
- **Coalition for Health AI (CHAI)**: their responsible health AI framework and assurance standards guide.

## Figure and table targets

- A table comparing peer AMC governance frameworks: institution, framework name, year established, number of principles/domains, key distinguishing features, public URL.
- A table mapping governance principles to operational mechanisms: principle (equity, transparency, safety, etc.) → operational requirement → responsible body → monitoring mechanism.
- A Mermaid diagram showing the 4×5 matrix with arrows indicating how workstreams serve domains and how the AISC sits above both — the governance architecture of the framework.

## Voice constraints

`values.qmd` should avoid the trap of listing principles that sound good but are not actionable. Every principle discussed should be grounded in a specific operational mechanism — what the institution actually *does* to honor that principle, not just what it *believes*. The peer institution examples are essential here.

`framework.qmd` should explain the reasoning behind the structure, not just describe it. The reader should finish understanding *why* the domains are those four domains and not others, *why* the workstreams cut across domains rather than being housed within them, and *why* central governance with domain autonomy is the right balance. This requires the author's voice — honest about the trade-offs.

## Open questions to flag

- The UCSF TAI Playbook: find the current URL and whether the full playbook is publicly available or just the principles summary.
- Duke ABCDS: find whatever is publicly documented — a charter, a publication, a policy document.
- Prevalence of formal AI governance committees: is there a published survey with recent data on what fraction of U.S. health systems have a formal AI governance committee?
- ISO 42001 in healthcare: has any U.S. AMC achieved ISO 42001 certification? Find any published accounts.
