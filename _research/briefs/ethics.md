# Chapter brief: Ethics, Equity, and Institutional Accountability — EXPAND EXISTING CHAPTER

**Target file:** `ethics.qmd`
**Status:** EXISTING chapter (213 lines, ~2,700 words) — structurally strong, good argument, pre-2025 evidence.
**Goal:** Research dossier for targeted additions: HHS 1557 2024 final rule specifics, recent bias evidence, state privacy laws, consent architecture in ambient AI era, workforce/labor implications.
**Position in book:** Workstream Resources part.

## What the current chapter already covers — DO NOT duplicate

- Algorithmic bias as structural problem: Obermeyer 2019 (race-cost proxy), Zack 2024 (GPT-4 bias)
- Equity as performance metric: Badal et al. framework, demographic stratification as standard requirement
- Informed consent in the continuous AI era: background AI vs. ambient documentation
- WHO ethics guidance on disclosure to patients
- California AB 3030 (AI-generated patient communications disclosure)
- IP and AI authorship gap: US Copyright Office position, ICMJE standards
- Liability and the "duty to use" emerging argument (Zemmar 2023)
- Ethics review pipeline Mermaid diagram
- Two starter projects: equity audit, clinical AI ethics policy

## What is MISSING and must be researched

### Gap 1: HHS Section 1557 (2024 final rule) specifics for clinical AI
The current chapter mentions HHS 1557 but doesn't describe the 2024 final rule in detail. What does the 2024 final rule actually require for AI-enabled clinical decision support? What is the covered entity's obligation for assessing and documenting AI tool nondiscrimination? What is the enforcement mechanism and timeline?

### Gap 2: Recent algorithmic bias cases beyond Obermeyer
The Obermeyer 2019 case is well-documented. What are the 2022–2025 documented cases of AI bias in healthcare? Look for: ambient documentation tools performing differently by patient demographics, imaging AI failing on darker skin tones (dermatology), sepsis prediction models underperforming in non-English-speaking patients, prior authorization AI with demographic disparities.

### Gap 3: State privacy laws with healthcare AI implications
Beyond California AB 3030: Washington My Health MY Data Act (2023), Illinois BIPA in healthcare contexts, Colorado SB 23-169 (Consumer Data Privacy), Texas SCOPE Act — which of these create obligations for AMC AI deployments? What do they require for AI-generated patient communications or AI-assisted clinical decisions?

### Gap 4: Consent architecture for ambient AI — current standards
The current chapter notes the "tractable" verbal consent model but doesn't describe it in detail. What have UCSF, Mayo, and other peer AMCs published about their patient consent processes for ambient scribes? What does the verbal consent typically include? Are there published templates?

### Gap 5: Workforce and labor implications of AI in the AMC
This is entirely absent from the current chapter. What does the economic literature say about AI and healthcare workforce? Which AMC roles face displacement risk (medical coders, prior auth specialists, transcriptionists)? What obligations does the institution have to affected workers? Are there AMC examples of AI-related workforce restructuring?

### Gap 6: Community trust and social license for healthcare AI
The current chapter doesn't address patient and community perspectives. What do patient surveys say about trust in AI-assisted care? Are there racial/ethnic differences in AI trust in healthcare? What does meaningful community engagement in AI governance look like?

## Source types needed

**Tier 1 (retrieve and verify directly — most important for this chapter):**
- HHS Section 1557 final rule (2024) — federalregister.gov or hhs.gov
- California AB 3030 full text — leginfo.legislature.ca.gov
- Washington My Health MY Data Act text — app.leg.wa.gov
- WHO Ethics and Governance of AI for Health (2024 update) — who.int
- OSTP Blueprint for an AI Bill of Rights — whitehouse.gov/ostp
- Brookings Institution healthcare AI equity reports — brookings.edu
- National Academy of Medicine AI in Health papers — nam.edu

**Tier 2 (peer-reviewed — PUBMED-PENDING placeholders only, no DOIs):**
Studies on patient trust in AI-assisted care (stratified by demographics), documentation of ambient scribe demographic performance differences, healthcare workforce displacement studies, IRB policy analyses of AI research consent.

## Scope

The ethical, legal, and social implications of generative AI at an academic
medical center, across all four domains. This is the conceptual foundation the
other chapters assume. **Not scope:** data governance specifics (that is
`data.qmd`); infrastructure and security specifics (that is `infrastructure.qmd`).

## Argument the chapter should make

The ethical challenges of AI in healthcare are not primarily about dramatic
failure modes — the runaway robot, the malicious algorithm. They are structural:
bias baked into training data, consent frameworks designed for a different era,
liability rules written before AI-assisted decisions existed, and an
intellectual-property regime that was not designed for machine authorship. Each
of these structural problems has a specific, practical implication for the AMC,
and each is tractable if the institution acts before a crisis rather than after.

## Areas the dossier must cover

- **Algorithmic bias and health equity in the clinical AI literature**: the
  landmark papers (Obermeyer 2019 in Science on the commercial risk algorithm;
  the Singhal Med-PaLM bias evaluations; bias audits of GPT-4 on clinical
  reasoning tasks). What "bias" actually means in this context — not just
  demographic disparities in outputs but disparities in training data
  representation, in who benefits, and in who is harmed when tools fail.
- **Informed consent in the era of ambient AI**: what a patient consents to
  when an ambient scribe records their encounter; what a research subject
  consents to when their EHR data is used to fine-tune a model; the
  adequacy of existing consent frameworks; what emerging standards look like.
  Cite current IRB and hospital policy examples.
- **Intellectual property and AI-generated work**: who owns an AI-assisted
  paper; the US Copyright Office's position on AI-generated content; the
  implications for academic publications, grant applications, and the AMC's
  own IP portfolio. The specific case of clinical notes generated with
  AI-assist and their status as medical records.
- **Liability and accountability**: when an AI-assisted clinical decision
  results in harm, who is liable — the clinician, the institution, the AI
  vendor, the developer? The current state of the case law and legal commentary.
  The PREP Act and whether it provides any AI-related liability shield. The
  malpractice insurance landscape.
- **Privacy beyond HIPAA**: the limits of de-identification; model memorization
  and privacy attacks; the social-license question of whether patients expect
  their data to be used for AI training; the role of patient advisory councils
  in AI governance.
- **Social implications — workforce and labor**: the historical pattern of
  automation in healthcare (cite the economic literature); what is actually
  threatened (routine documentation, coding, scheduling) vs. what is not
  (complex diagnosis, difficult communication, hands-on care); the equitable
  distribution of AI productivity gains; what an AMC owes its affected workforce.
- **The social license question**: whether the community served by the AMC
  trusts AI in their care; the evidence from patient and community surveys;
  the racial and ethnic dimensions of that trust; what community engagement
  in AI governance looks like.
- **The regulatory framework as an ethical instrument**: how FDA, ONC, NIST AI
  RMF, and the White House Blueprint for an AI Bill of Rights translate into
  ethical practice at the institutional level. Cross-reference the regulatory
  chapter if it exists, or the HHS appendix.
- **Decolonial and structural critiques**: engage seriously with the
  scholarship (Ruha Benjamin's Race After Technology; Noble's Algorithms of
  Oppression; the decolonial AI literature) as it applies specifically to an AMC.
  This is not a sidebar — it is a necessary corrective to naive technoptimism.
- **Practical ethics governance**: what an AI ethics review process looks like;
  the AISC's role; the difference between an ethics consultation and a
  compliance review; who should sit on an ethics review panel for AI projects;
  how to handle disagreement.

## Connections to other chapters

- Values chapter: cross-reference heavily — this chapter deepens the
  principles the values chapter states.
- Appendices: the WHO, FUTURE-AI, FDA/HC/MHRA, and AMIA principle sets are
  already there — build on them.
- Clinical chapter: connects on bias, consent, and liability.
- Research chapter: connects on consent for data use, IP, and publication ethics.

## Figure and table targets

- A table: major AI ethics principle frameworks (WHO, FUTURE-AI, AMIA, NIST
  AI RMF, White House Blueprint) mapped to concrete institutional practices —
  what each principle means operationally for an AMC.
- A Mermaid diagram: an AI ethics review process flow — project proposed →
  initial screening → full review (privacy, bias, consent, liability) →
  conditions set → pilot with monitoring → post-deployment review.
- A table of selected bias findings from the peer-reviewed literature —
  study, AI tool evaluated, bias found, population affected, magnitude.

## Voice constraints

This chapter should not be preachy. It should treat ethical analysis as
rigorous intellectual work, the same way the clinical chapter treats
evidence-based medicine. Name the specific harms, cite the specific evidence,
propose the specific mitigations. The audience includes the general counsel,
the CMO, the IRB chair, and the CISO, not just the ethicist.

## Open questions to flag

- The liability question is genuinely unsettled in the courts; flag the most
  current legal commentary and any relevant cases.
- The social-license/community-trust literature in healthcare AI specifically
  is growing; flag the most current patient-survey evidence.
