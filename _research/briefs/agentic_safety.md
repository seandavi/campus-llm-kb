# Chapter brief: Agentic Safety & Guardrails

**Target file:** `agentic_safety.qmd` (new file)
**Length target:** ≥6 rendered pages (~3,000–4,500 words).
**Position in book:** propose as first chapter of a new "Agentic AI in Practice"
part, following Domain Resources and before Workstream Resources.

## Scope

The safety architecture for autonomous AI agents operating inside an AMC —
systems that don't just answer questions but take multi-step actions: placing
orders, routing messages, submitting prior authorizations, updating records,
scheduling follow-ups. This chapter is distinct from general AI ethics
(that is `ethics.qmd`) and general infrastructure (that is `infrastructure.qmd`).
It is specifically about what changes when AI moves from advisory to operational.

## Argument the chapter should make

When AI is advisory — a clinician reads the output and decides what to do — the
human is the action taker and the AI is a source of input. When AI is agentic —
it takes actions directly, with a human nominally in the loop but not reviewing
every step — the safety architecture needs to change. Most AMC AI governance
frameworks were designed for advisory AI. This chapter gives the CMIO, CISO,
and patient safety officer the framework for governing agentic systems, with
attention to the specific failure modes that do not appear in advisory contexts.

## Areas the dossier must cover

- **The advisory-to-agentic spectrum**: define clearly where on the spectrum
  current deployed systems fall — ambient scribes (advisory, clinician edits
  and signs), inbox triage (borderline: auto-routing is agentic, drafting is
  advisory), autonomous prior authorization (fully agentic), medication
  reconciliation agents. Cite real deployed examples from 2024–2026.
- **Agentic failure modes that differ from advisory ones**: action on stale
  data (the agent's knowledge base is updated infrequently but actions are
  immediate); cascading errors (one agent's output becomes another agent's
  input without human review); scope creep (an agent authorized for task X
  takes action on task Y because the instructions were ambiguous); and the
  "automation surprise" — a clinician discovers that something happened without
  their explicit approval. Cite the safety and human-factors literature.
- **Human-in-the-loop (HITL) architecture**: the spectrum from "human approves
  every action" to "human receives a log of actions taken"; where on the
  spectrum different clinical tasks should sit based on risk; how to design
  HITL checkpoints that are genuinely reviewed (not rubber-stamped). Cite the
  automation bias literature — the evidence that humans over-trust automated
  systems, especially under cognitive load.
- **Kill-switch and circuit-breaker architecture**: what it means operationally
  to "pause" an agentic system when anomalous behavior is detected; who has
  authority to pause; what the fallback workflow is; how to ensure the kill
  switch is tested and functional before deployment. Analogies to aviation and
  industrial safety systems.
- **Scope limitation and least-privilege principles**: how to constrain an
  agent's action space to the minimum required for its task; the difference
  between an agent that can read EHR data and one that can write to it;
  credentialing and authorization of agent actions in the EHR; audit logging
  of agent actions at the same granularity as human actions.
- **The consent and transparency question**: what patients and clinicians are
  told about autonomous agents acting in care workflows; whether existing
  consent frameworks cover agentic AI or require update; what "meaningful
  disclosure" looks like when the agent acts in real time.
- **Regulatory status of agentic systems**: FDA's current posture on autonomous
  clinical AI — does the advisory/agentic distinction map onto the
  device/non-device CDS distinction? What the PCCP framework means for systems
  that learn and adapt as they act.
- **Real-world incidents and near-misses**: cite any documented cases of
  agentic AI systems taking incorrect clinical actions in deployed environments.
  The literature is thin but growing; be explicit about what has and has not
  been published.

## Figure and table targets

- A spectrum diagram (Mermaid): advisory → semi-agentic → agentic, with
  example clinical AI systems placed on the spectrum and HITL requirements
  annotated at each level.
- A risk-level/authorization matrix table: rows = action type (read, route,
  draft, submit, update record, place order); columns = authorization required,
  audit logging, HITL checkpoint, kill-switch required.
- A Mermaid diagram of agentic loop architecture: trigger → agent plans →
  agent retrieves context → agent proposes action → HITL checkpoint (if
  required) → action taken → audit log → exception handling.

## Open questions to flag

- The boundary between FDA-regulated agentic systems and non-device agentic
  systems is genuinely unsettled; flag the most current FDA guidance.
- "Meaningful" HITL versus rubber-stamp HITL: are there empirical studies of
  how often clinicians actually override agentic AI suggestions vs. accept
  them? Flag what exists.
