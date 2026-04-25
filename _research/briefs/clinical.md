# Chapter brief: Clinical Domain

**Target file:** `resources_clinical.qmd`
**Status:** partially drafted — has the Badal 8-principle framework with good table
and prose for principles 1–4; principles 5–8 are headings only; ends with a
44-item numbered reference dump that needs to be dissolved into the body text.
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** third domain chapter.

## What is already there (do not re-research these)

The chapter already has solid coverage of:
- The Badal 8-principle framework table (tbl-healthcare-guiding-principles)
- Principle 1: AI tools should aim to alleviate existing health disparities (full prose)
- Principle 2: AI tools should produce clinically meaningful outcomes (full prose)
- Principle 3: AI tools should reduce overdiagnosis and overtreatment (full prose)
- Principle 4: AI tools should have high healthcare value (full prose)

The dossier should focus on what is **missing** from the existing chapter.

## Areas the dossier must cover

### Finish the Badal principles (5–8)

Research and produce annotated sources for:
- **Principle 5: Incorporate social, structural, environmental, emotional, and
  psychological drivers of health** — the SDOH literature; how LLMs can and
  cannot handle biographical data; specific examples from the clinical AI
  literature; the ICD-10-CM Z codes as a data substrate; the bias risks when
  SDOH data is missing or proxy-encoded.
- **Principle 6: Be easily tailored to the local population** — federated
  learning; fine-tuning on local EHR data; the tension between generalizability
  and local calibration; examples of models that failed when deployed outside
  the development population.
- **Principle 7: Promote a learning healthcare system** — the IOM learning
  health system framework; continuous model monitoring; the PDSA cycle applied
  to AI tools; when to retrain vs. retire; incident reporting for AI failures.
- **Principle 8: Facilitate shared decision-making** — AI explainability
  methods (SHAP, LIME, attention visualization) in clinical context; whether
  patients understand AI-generated explanations; the literature on physician
  trust calibration; the connection to informed consent.

### New sections the existing chapter lacks

- **Ambient documentation / AI scribes**: the empirical literature on
  accuracy, clinician satisfaction, and time savings for ambient AI scribes
  (Nabla Copilot, Suki, Microsoft/Nuance DAX, Abridge, DeepScribe). Cite
  peer-reviewed evaluations, not vendor press releases. The Tierney et al.
  CAT.23.0404 citation is already in the chapter — build on it. What the
  liability questions are.
- **Clinical decision support and LLMs**: the FDA's regulatory position on
  clinical decision support software, the SaMD framework, and specifically
  the Predetermined Change Control Plan (PCCP) for adaptive AI/ML medical
  devices. The distinction between non-device CDS and device CDS under the
  21st Century Cures Act. What this means for an institution deploying
  LLM-based CDS.
- **ONC HTI-1 (Health Data, Technology, and Interoperability) final rule**:
  the chapter cross-references `HHS.qmd` but doesn't explain what "decision
  support intervention" certification now requires or what algorithm
  transparency means operationally for clinical AI. Fill that gap.
- **Patient-facing chatbots and conversational AI**: the current deployments
  (Epic MyChart AI, Ro, K Health, various symptom checkers); the medico-legal
  exposure; the informed-consent question; FDA's position on chatbots as
  medical devices.
- **Documentation of AI use in the medical record**: should clinicians
  document when a clinical decision was AI-assisted? What the malpractice
  implications are. What early adopters are doing.

## Connections to other chapters

- Appendices (`appendices.qmd`) has the Badal principles table from a
  different source — cross-reference rather than duplicate.
- Infrastructure chapter (`infrastructure.qmd`) covers the technical deployment
  stack; this chapter should reference it for the ambient scribe / EHR
  integration question.
- Regulatory chapter (if approved): that chapter covers FDA/ONC/CMS in depth;
  this chapter should summarize the clinical-specific pieces and reference the
  deeper treatment.

## Figure and table targets

- A Mermaid diagram of the clinical AI lifecycle:
  Identify need → procure/build → local validation → safety review → deploy
  → monitor → retrain or retire — with governance touchpoints (IRB, AISC,
  IT security, legal, clinical champion) annotated at each stage.
- A table: FDA, ONC, and CMS actions on clinical AI — rule/guidance name,
  date, primary source URL, key requirement for AMC deployers.
- A diagram or publicly licensed image illustrating an ambient-scribe
  workflow (physician/patient encounter → real-time transcription → draft
  note → physician review → EHR documentation). Verify license.

## Voice constraints

Directed at clinical leaders, CMIOs, and clinical informatics teams. Should
treat clinicians as sophisticated professionals who can handle nuance — not
a consumer-facing intro. The chapter should not pretend AI scribes are
universally wonderful or that the FDA framework is simple.

## Open questions to flag

- FDA's guidance on LLMs as clinical decision support is actively evolving;
  flag the most current version of the SaMD/PCCP guidance and any 2024–2026
  draft guidance on AI/ML.
- The medico-legal liability literature for AI-assisted clinical decisions is
  still sparse — flag where the case law and commentary actually stand.
