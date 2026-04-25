# Chapter brief: Evaluation and Monitoring

**Target file:** `evaluation_monitoring.qmd` (new file — add to `_quarto.yml`)
**Status:** new chapter — does not yet exist.
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** propose as a chapter after the Workstream Resources part,
or within the Implementation part. Author to decide.

## Scope

How an academic medical center evaluates a generative AI tool before deploying
it and monitors it after deployment. Covers pre-deployment evaluation, the
deployment decision, and the ongoing monitoring lifecycle. **Not scope:** the
project-management stage-gate process (that is `pm_and_support.qmd`);
infrastructure monitoring (that is `infrastructure.qmd`).

## Argument the chapter should make

Deploying an AI tool without a monitoring plan is not a deployment — it is an
experiment with patients, students, and staff as unwitting subjects. The chapter
should make the case that pre-deployment evaluation and post-deployment
monitoring are not bureaucratic overhead; they are the minimum bar for
responsible adoption. And it should give the reader the tools to actually do
this work, not just aspire to it.

## Areas the dossier must cover

- **The evaluation problem in healthcare AI**: why benchmark performance is a
  poor predictor of local performance; the literature on model performance
  degradation when deployed outside development populations; the gap between
  what AI vendors report and what institutions find on local validation.
  Cite specific cases.
- **Pre-deployment evaluation framework**:
  - Silent-mode / shadow deployment: running the AI system in parallel with
    existing practice, comparing outputs, before clinicians see the
    recommendations. What this requires operationally.
  - Local validation dataset requirements: how big, how representative, from
    what time period, how to handle class imbalance.
  - Performance metrics that matter clinically (vs. metrics that look good on
    a benchmark): sensitivity, specificity, PPV, NPV in the local population;
    fairness metrics (demographic parity, equalized odds) stratified by race,
    sex, age, insurance status.
  - Red-teaming: structured adversarial testing of LLMs before deployment;
    what categories of red-team tests matter for healthcare (hallucination,
    demographic bias, unsafe advice, confidentiality failures). Cite emerging
    frameworks.
  - The TRIPOD-AI reporting standard for clinical AI validation studies.
  - Regulatory clearance as a proxy for safety: why FDA clearance is necessary
    but not sufficient for local validation.
- **Coalition for Health AI (CHAI)**: its model cards and assurance standards;
  what CHAI membership offers an AMC; how to use the CHAI framework for
  vendor evaluation.
- **Post-deployment monitoring**:
  - What metrics to track: accuracy/performance on live data vs. validation
    set; utilization (are clinicians using it?); override rates (and what
    override patterns mean); time-to-completion effects; patient outcomes where
    attributable.
  - Fairness monitoring: ongoing stratified performance across demographic
    groups; alerts when disparities emerge.
  - Drift detection: covariate shift, concept drift, and data pipeline failures.
    Tools and methods.
  - The "pharmacovigilance" analogy: AI incident reporting systems; what
    constitutes a reportable AI adverse event; the FDA's forthcoming
    post-market surveillance requirements for AI/ML devices.
  - The FDA Predetermined Change Control Plan (PCCP) in the monitoring context:
    what changes to a deployed AI trigger re-review vs. fit within the PCCP.
- **Governance integration**: how monitoring findings feed back into the AISC;
  thresholds for pause, remediation, and retirement of a deployed tool;
  the escalation path when a monitoring alert fires.
- **Case examples**: find published accounts of post-deployment monitoring
  revealing problems with clinical AI (Epic sepsis model literature, dermatology
  model performance on dark skin, specific LLM failure cases). Use them
  as concrete illustrations, not as horror stories.

## Figure and table targets

- A Mermaid lifecycle diagram: pre-deployment evaluation → deployment decision
  → shadow deployment → live deployment → ongoing monitoring → alert →
  escalation → remediation or retirement.
- A performance metrics table: metric, definition, why it matters clinically,
  who should interpret it, fairness-stratified version.
- A red-teaming checklist table for healthcare LLMs: test category, what it
  probes, example test cases, pass/fail criteria.

## Voice constraints

The audience is clinical informaticists, quality improvement officers, AI
program directors, and CMIOs. Should be technically honest — acknowledge what
is hard to measure, what the literature does not yet know — while still being
actionable. The chapter should not give the reader an excuse to delay
deployment indefinitely, but it should make clear what the minimum responsible
evaluation bar is.

## Open questions to flag

- The CHAI model card framework: flag the most current version and whether it
  has been formally adopted by any major accreditor or regulator.
- FDA post-market surveillance requirements for AI/ML medical devices: flag
  whether a final rule exists as of your research date, or only guidance.
- The empirical literature on post-deployment AI performance degradation in
  healthcare: flag the strongest studies with their populations and findings.
