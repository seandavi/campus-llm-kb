# Chapter brief: Ethical, Legal & Social Workstream

**Target file:** `ethics.qmd`
**Status:** stub — not in active `_quarto.yml`.
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose). This
chapter should probably run longer — 8–10 pages — given the depth of the
literature and the importance of the subject.
**Position in book:** third workstream chapter.

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
