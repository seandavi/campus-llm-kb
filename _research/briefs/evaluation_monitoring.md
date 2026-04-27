# Chapter brief: Evaluation and Monitoring

**Target file:** `evaluation_monitoring.qmd` (new file — add to `_quarto.yml`)
**Status:** new chapter — does not yet exist.
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** Workstream Resources part, alongside `pm_and_support.qmd`.

## Scope

How an AMC evaluates AI tools before deploying them and monitors them after
deployment — across all four domains: clinical, research, education, and
business operations. The chapter's organizing insight is that evaluation and
monitoring have a shared set of general principles (pre-deployment validation,
post-deployment drift detection, stakeholder feedback loops, governance
escalation) but that the specific KPIs, relevant stakeholders, cultural norms,
and ethical obligations differ substantially by domain. A clinical AI tool and
a student assessment AI tool share the principle that monitoring must be ongoing
— but what you measure, who you ask, and what a bad result means are entirely
different.

**Not scope:** the project-management stage-gate process (that is
`pm_and_support.qmd`); infrastructure and MLOps monitoring (that is
`infrastructure.qmd`); domain-specific deployment guidance (the domain resource
chapters). Do not write a clinical AI chapter; write a chapter that uses
clinical examples alongside research, education, and business operations
examples.

## Argument the chapter should make

Deploying an AI tool without a monitoring plan is not a deployment — it is an
experiment with patients, students, and staff as unwitting subjects. The chapter
should make the case that pre-deployment evaluation and post-deployment
monitoring are not bureaucratic overhead; they are the minimum bar for
responsible adoption. And it should give the reader the tools to actually do
this work across all four AMC domains, not just aspire to it.

## Structure the dossier should follow

The dossier should organize its research around this two-part structure:

**Part 1 — General principles (domain-agnostic):**
- Why benchmark performance is a poor predictor of local performance; the
  literature on model performance degradation outside development populations.
- Pre-deployment evaluation: shadow/silent-mode deployment, local validation
  requirements, red-teaming for LLMs (hallucination, bias, confidentiality
  failures), the TRIPOD-AI and DECIDE-AI reporting standards, CHAI model cards.
- Post-deployment monitoring: drift detection (covariate shift, concept drift,
  data pipeline failures), fairness monitoring, the pharmacovigilance analogy,
  incident reporting, decommissioning criteria.
- KPI architecture: the distinction between technical KPIs (model performance),
  operational KPIs (utilization, override/rejection rates, time effects), and
  outcome KPIs (downstream impacts on the thing the tool was meant to improve).
  Cite any published or proposed healthcare AI KPI frameworks.
- Stakeholder feedback loops as a monitoring method: why quantitative dashboards
  alone miss sociotechnical failure modes; structured mechanisms for collecting
  input from frontline users and affected parties.

**Part 2 — Domain-specific dimensions:**
For each domain, research what differs in KPIs, stakeholders, culture, and
ethical obligations:

- **Clinical**: patient safety KPIs, clinician override rates, outcome
  attribution, equity monitoring across demographic groups, regulatory
  obligations (FDA PCCP, ONC HTI-1, HHS 1557). Patient engagement in
  monitoring: patient advisory boards, community advisory bodies for
  equity-sensitive tools, participatory design literature in health AI.
  What does meaningful patient engagement in AI governance look like beyond
  consent forms?

- **Research**: research integrity KPIs (reproducibility, provenance
  auditability, IRB compliance), data provenance monitoring, publication bias
  risks from AI-assisted analysis, researcher/trainee as key stakeholder,
  IRB as governance body for monitoring decisions.

- **Education**: student learning outcome KPIs (are students actually learning
  or outsourcing reasoning?), academic integrity monitoring without relying
  on detection tools, faculty as key stakeholder and evaluator, accreditor
  requirements (ACGME, LCME) as external monitoring mandate, assessment
  validity as the core equity concern.

- **Business operations**: operational efficiency KPIs (throughput, error
  rates, staff time), financial KPIs (cost per transaction, denial rates,
  revenue cycle impact), employment equity monitoring (algorithmic hiring
  bias), frontline administrative staff as key stakeholder, labor relations
  and workforce displacement as ethical dimension.

## Specific sources to find

- TRIPOD-AI reporting guideline (Collins et al. or equivalent) — peer-reviewed
- DECIDE-AI reporting guideline (Vasey et al. 2022, Nature Medicine) — already
  in references.bib as `Vasey2022-decideai`; do not duplicate, reference it
- CHAI assurance standards and model card framework — current version, URL
- Literature on post-deployment AI performance degradation: Finlayson et al.
  on COVID-era drift (already in bib as `Finlayson2021-shift`); find additional
  studies documenting specific cases of performance degradation in production
- Epic Sepsis Model external validation studies (Wong et al., JAMA IM 2021)
- Participatory design / co-production in health AI — literature on patient
  and community engagement in AI governance beyond consent
- Any published KPI frameworks for healthcare AI programs (CHAI, AMIA, NHS AI
  Lab, etc.)
- FDA post-market surveillance requirements for AI/ML-based SaMD — flag
  whether a final rule exists or only guidance as of 2025
- Published examples from research, education, or business operations AI
  monitoring — not just clinical

## Figure and table targets

- A Mermaid lifecycle diagram: pre-deployment evaluation → shadow deployment
  → go/no-go decision → live deployment → ongoing monitoring → alert →
  escalation → remediate or retire. Domain-agnostic.
- A domain comparison table: rows = domains (clinical, research, education,
  business ops); columns = primary KPI type, key stakeholders, main ethical
  obligation, governance body for escalation, illustrative example metric.
- A KPI taxonomy table: KPI category (technical / operational / outcome),
  example metric, what it detects, who interprets it, monitoring cadence.

## Voice constraints

Audience: clinical informaticists, quality improvement officers, AI program
directors, CMIOs, and — given the domain breadth — research compliance officers,
deans, and CFOs who may read the chapter relevant to their domain. Technically
honest about what is hard to measure. Does not give the reader an excuse to
delay indefinitely, but is clear about the minimum responsible bar. Uses
clinical examples but does not treat clinical as the only domain that matters.

## Open questions to flag

- CHAI assurance standards: flag the most current version and whether formally
  adopted by any accreditor or regulator as of research date.
- FDA post-market surveillance for AI/ML SaMD: final rule or guidance only?
- Participatory design in health AI: flag whether the literature is mature
  enough to cite specific, replicable methods, or still largely aspirational.
- Education domain monitoring: flag whether there is peer-reviewed literature
  on monitoring AI tools in health professions education specifically, or
  whether the dossier must rely on general higher-ed AI literature.
