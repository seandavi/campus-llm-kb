# Chapter brief: Regulatory and Policy Landscape

**Target file:** `regulatory_landscape.qmd` (new file — add to `_quarto.yml`)
**Status:** new chapter — does not yet exist.
**Length target:** ≥6 rendered pages. Heavy on tables; structured for use as a
desk reference. May run longer.
**Position in book:** propose as a new chapter after the four domain chapters,
before the workstream chapters, or as a standalone part. Author to decide placement.

## Scope

A consolidated reference chapter covering the regulatory and policy frameworks
that govern AI at an academic medical center: federal law and regulation,
federal guidance, professional-society positions, and selected international
frameworks. This chapter is reference material — it does not argue a position
so much as it maps the terrain accurately and completely as of early 2026.

## Argument the chapter should make

An AMC operating in 2026 faces a fragmented regulatory environment: multiple
federal agencies with overlapping jurisdiction, a wave of state legislation,
professional-society guidance that is often ahead of the law, and international
frameworks that matter for research collaborators. No single document covers
all of it. This chapter is that document — as current as the author can make it.

## Areas the dossier must cover

### Federal regulatory layer

- **FDA**: the Software as a Medical Device (SaMD) framework; the
  Predetermined Change Control Plan (PCCP) for AI/ML medical devices; the
  2021 AI/ML Action Plan; any 2024–2026 draft or final guidance on LLMs
  specifically; the distinction between device CDS and non-device CDS under
  21st Century Cures Act Section 3060. Cite the Federal Register, docket
  numbers, and dates.
- **ONC**: the HTI-1 final rule (Health Data, Technology, and Interoperability)
  — what "decision support intervention" (DSI) certification now requires;
  the algorithm transparency requirements; effective dates; what this means
  for EHR vendors and for AMC deployers. Cite the Federal Register rule
  (2023-28857).
- **CMS**: any AI-related coverage policy or MACRA/MIPS incentives; the
  No Surprises Act in the context of algorithmic billing; audit risk for
  AI-assisted coding.
- **HHS OCR**: HIPAA enforcement guidance on AI; the 2024 guidance on
  cybersecurity and AI; what "workforce member" means when AI tools are
  processing PHI.
- **NIST**: the AI Risk Management Framework (AI RMF 1.0, January 2023);
  its four functions (Govern, Map, Measure, Manage); how it applies to
  healthcare AI; NIST's ongoing AI standards work. Cite the primary document.
- **OSTP / White House**: the October 2023 Executive Order on AI; the
  Blueprint for an AI Bill of Rights (2022); what has been implemented, what
  has been superseded or revoked, what remains active as of early 2026.
- **AHRQ**: any AI-specific patient safety guidance.
- **FTC**: enforcement posture on AI claims; the guidance on AI transparency
  and deceptive practices; relevance to AMC marketing and patient-facing tools.

### State regulatory layer

- **Colorado AI Act (SB 21-169 / 2024 updates)**: what it requires; who is
  covered; effective dates; relevance to AMC.
- **California**: CCPA and its AI implications; any state AI legislation
  enacted by early 2026.
- **New York**: NYC Local Law 144 on automated employment decision tools.
- **Other relevant states**: flag any other enacted state AI laws as of your
  research date.

### Professional society layer

- **AMA**: AI policy positions and H-480 series on augmented intelligence;
  most current version.
- **AAMC**: AI guidance for medical education and research; dates.
- **AMIA**: AI position statements; the AMIA core data science competencies.
- **ACGME**: any competency milestone language related to AI; date.
- **The Joint Commission**: any AI-related accreditation standards.
- **HIMSS**: AI governance and policy positions.

### International layer (brief, not exhaustive)

- **EU AI Act**: the risk-tier framework; medical devices as high-risk AI;
  effective dates; relevance to AMCs with EU research collaborators.
- **UK MHRA**: guidance on AI as a medical device.
- **Health Canada**: ML-enabled medical devices guidance.
- **WHO**: the 2021 Ethics and Governance of AI for Health document.

## Figure and table targets

- A master regulatory timeline table: law/rule/guidance name, issuing body,
  publication date, effective date, primary source URL, one-sentence
  description. Sorted chronologically 2021–2026.
- A jurisdiction-by-use-case table: rows = AI use cases (clinical decision
  support, ambient documentation, diagnostic imaging AI, patient-facing
  chatbot, administrative automation); columns = FDA, ONC, CMS, HIPAA/OCR,
  state law, professional society. Cell = applicable framework or "none known."
- A Mermaid diagram of FDA CDS regulatory decision tree: is it a device? →
  does it display/interpret/analyze patient data? → does it require clinical
  judgment to act? → is it for a serious condition? → device vs. non-device CDS
  vs. exempt. Based on the 21st Century Cures Act Section 3060 criteria.

## Voice constraints

Reference chapter, not argument. Should be dense with specific primary sources.
No promotional language. Note all effective dates, transition periods, and
places where guidance is draft or proposed (not final). Date-stamp the dossier
itself clearly so the author knows when to update it.

## Open questions to flag

- The October 2023 Executive Order on AI: flag whether any provisions have been
  revoked or modified by subsequent executive action as of early 2026.
- EU AI Act implementation timeline: flag which provisions are in effect vs.
  coming into effect over the 2025–2027 transition period.
- FTC enforcement on AI: any relevant consent orders or enforcement actions
  against healthcare entities specifically.
