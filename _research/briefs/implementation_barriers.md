# Chapter brief: Implementation Guide and Adoption Barriers

**Target files:** `implementation.qmd` (rewrite) and `barriers.qmd` (rewrite)
**Status:** both existing chapters — generic, still reference "ChatGPT implementation," bullet-list format throughout.
**Length target:** `implementation.qmd` ≥4 rendered pages (~2,000–2,500 words); `barriers.qmd` ≥4 rendered pages (~2,000–2,500 words).
**Position in book:** `implementation.qmd` and `barriers.qmd` are the second and third chapters in the Implementation section, after `framework.qmd`.

## Scope

`implementation.qmd`: A practical guide for how a domain team (clinical, research, education, or business operations) actually moves through the implementation process — not a generic change management checklist but a domain-specific sequence grounded in how AMC AI implementations actually succeed.

`barriers.qmd`: An honest taxonomy of why AMC AI implementations fail, grounded in evidence from the implementation science and clinical informatics literature, organized by barrier type with specific countermeasures that connect to the detailed workstream chapters in this book.

## Argument the chapters should make

### implementation.qmd
There is no generic "AI implementation" in an AMC. The clinical domain is dealing with EHR integration, FDA regulatory questions, and patient safety accountability. The research domain is dealing with IRB, data governance, and publication integrity. The education domain is dealing with academic integrity, assessment validity, and accreditation. The business operations domain is dealing with administrative efficiency, vendor management, and cost justification. Each domain has a different risk profile, a different set of stakeholders, and a different cadence. The implementation guide should give each domain a realistic, evidence-grounded sequence — not ten generic steps that apply to any technology change.

### barriers.qmd
The generic change management literature (resistance to change, lack of expertise, resource constraints) does not explain why AMC AI implementations fail. AMC-specific barriers are more structural: governance ambiguity about who has authority to deploy AI, EHR integration friction that vendor contracts don't resolve, the absence of clinical workflow analysis before pilot design, and the absence of post-deployment monitoring infrastructure. The chapter should name these structural barriers specifically, ground them in published evidence, and connect each one to the chapter in this book that addresses it.

## Areas the dossier must cover

### Implementation science frameworks applicable to clinical AI

- **CFIR (Consolidated Framework for Implementation Research)**: the five domains (intervention characteristics, outer setting, inner setting, characteristics of individuals, implementation process) and how they have been applied to clinical AI or clinical decision support implementation. Find 2–3 published studies that use CFIR to analyze clinical AI adoption. What barriers does CFIR most consistently identify?
- **Normalization Process Theory (NPT)**: the four constructs (coherence, cognitive participation, collective action, reflexive monitoring) and how they apply to AI normalization in clinical workflows. Any published applications to clinical AI.
- **The Greenhalgh et al. frameworks**: the "diffusion of innovations in health service organisations" framework and its application to AI/CDS adoption. Find the most relevant publication.
- **Implementation science frameworks specifically developed for AI**: are there any AI-specific implementation frameworks published since 2020 that go beyond the generic CFIR/NPT approaches?
- **The DECIDE-AI framework**: its role in pilot evaluation and how it differs from standard implementation research frameworks.

### Published barriers to clinical AI adoption

- Systematic reviews of barriers to clinical AI/CDS implementation (2020–2025). What are the most consistently cited barriers?
- The alert fatigue problem: specific published data on override rates, and what interventions have reduced override rates in practice.
- Workflow integration failure: published cases where clinically effective AI tools failed to achieve adoption because of workflow friction. The "integration tax" in the peer-reviewed literature.
- The trust problem: published studies on clinician trust in AI recommendations and what factors predict willingness to use AI tools. The calibration problem (over-trust vs. under-trust).
- The governance vacuum: any published evidence on how the absence of clear AI governance structures slows or blocks deployment.
- Domain-specific barriers: what are the specific barriers in clinical AI deployment vs. research AI use vs. administrative AI? Are they the same barriers or different ones?

### What makes AMC AI implementations succeed

- Published studies or case series on characteristics of successful clinical AI deployments. What do institutions with sustained deployment portfolios do differently?
- The champion model: evidence for clinician champion programs in AI adoption. What is the optimal structure?
- The shadow deployment / dry-run evidence: the Sendak Sepsis Watch account; any other published evidence for pre-deployment shadow testing as an adoption enabler.
- EHR integration approaches: what are the evidence-based best practices for integrating AI tools into EHR workflows? What makes some integrations succeed where others fail?
- The importance of pre-implementation workflow analysis: any published evidence on outcomes of implementations with vs. without structured workflow analysis.

### Change management specific to healthcare AI

- Healthcare-specific change management frameworks: what works in healthcare settings that does not generalize from the standard Kotter/ADKAR frameworks?
- Published accounts of change management in EHR rollouts (Epic implementations, etc.) and what translates to AI.
- The role of physician leadership in AI adoption: published evidence on whether physician-led implementations outperform IT-led ones.
- Communication strategies: what kinds of communication about AI tools increase clinician adoption? Any published evidence from implementation studies.

### AMC-specific structural barriers

- **Governance ambiguity**: the absence of a clear AISC or equivalent — how does this manifest in implementation failures? Any published evidence.
- **Budget fragmentation**: AI projects that die because no single domain owns the full lifecycle cost. How common is this? Any published accounts.
- **The "shadow AI" pull**: why do clinicians route around institutional AI governance? What are the documented pull factors that make consumer AI tools more attractive than sanctioned alternatives?
- **EHR vendor friction**: the documented difficulties of integrating third-party AI with Epic, Cerner/Oracle Health, and other major EHR platforms. What are the integration points and what breaks?
- **IRB and data governance lag**: research domain-specific barrier: the mismatch between the pace of AI development and the pace of IRB and data governance review.
- **Faculty development gap**: the education domain-specific barrier: faculty who cannot evaluate AI-generated student work and therefore cannot design AI-literate assessments.

## Figure and table targets

- A table: barrier taxonomy with columns for barrier type, domain(s) most affected, published evidence (citation), countermeasure, and which chapter in this book addresses it. This makes the barriers chapter a roadmap to the workstream chapters.
- A Mermaid diagram: the domain implementation lifecycle — from use case identification through pilot through enterprise deployment, with decision gates. Should show where most implementations fail (at the pilot-to-scale transition, typically).
- A table of domain-specific implementation differences: rows = four domains; columns = typical use cases, primary stakeholders, key regulatory considerations, common failure modes, estimated deployment timeline.

## Voice constraints

Both chapters should avoid the generic self-help register ("foster cross-functional collaboration," "educate leadership teams"). The audience is experienced healthcare administrators and informaticists who have heard that advice before and know why it is hard. The chapters should name specific difficulties — the 3 AM incident where the AI tool went down during a shift, the IRB turnaround that delayed a research AI project by 14 months, the vendor whose model card did not disclose the training data distribution — and ground recommendations in those specifics.

`barriers.qmd` in particular should acknowledge that some barriers are not solvable at the institution level. Vendor opacity, regulatory lag, and the pace of the technology are real constraints. The chapter should help the reader distinguish the barriers they can address from the ones they need to plan around.

The author has a strong personal voice. Where appropriate, acknowledge difficulty and uncertainty directly rather than presenting a smooth implementation playbook that no real AMC has ever executed cleanly.

## Open questions to flag

- CFIR applications to clinical AI: are there any published studies that specifically use CFIR for clinical AI (not just clinical decision support broadly)?
- Override rates: find the most current published data on CDS alert override rates; rates vary widely by tool type and institution.
- Governance vacuum data: is there published survey data on the fraction of health systems that lack formal AI governance structures?
- The shadow deployment duration question: what is the evidence base for how long shadow deployment should run? Is there any published guidance beyond the Sepsis Watch anecdote?
- EHR integration barriers: Epic, Cerner, and other EHR vendors have complex integration requirements — is there published academic work on these barriers or is this primarily industry knowledge?
