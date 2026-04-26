# Chapter brief: Data Access and Governance — EXPAND EXISTING CHAPTER

**Target file:** `data.qmd`
**Status:** EXISTING chapter (217 lines, ~2,700 words) — excellent foundation, needs additions for TEFCA, synthetic data, federated learning, and 2023 NIH DMS policy.
**Goal:** Research dossier for targeted additions covering four specific gaps. Do not rewrite — add.
**Position in book:** Workstream Resources part, second chapter.

## What the current chapter already covers — DO NOT duplicate

- AMC data mosaic: four regulatory regimes (HIPAA/FERPA/Common Rule/institutional), cross-dataset re-identification risk
- Data classification framework: Public / Internal / Regulated / Restricted tiers
- HIPAA Safe Harbor limits: Gymrek genomic re-identification; model memorization risk for clinical notes
- Expert Determination as the appropriate standard for AI training datasets
- AI-ready honest broker: unstructured text assessment, vendor BAA evaluation, approved tool registry
- FHIR R5 and OMOP CDM as AI substrate; SMART on FHIR authorization for agentic systems
- BAA non-negotiables table (no-training clause, zero-data-retention, output ownership, algorithmic change notification)
- Data governance flow Mermaid diagram
- Two starter projects: BAA audit + AI data governance policy; institutional AI data enclave

## What is MISSING and must be researched

### Gap 1: TEFCA and Qualified Health Information Networks
The Trusted Exchange Framework and Common Agreement (TEFCA, implemented 2023) established a network of Qualified Health Information Networks (QHINs) for nationwide health information exchange. How does TEFCA affect AI data access at AMCs? Can QHIN-accessed data be used for AI inference? What are the permitted purposes under TEFCA for AI applications? Which major health systems have designated QHINs?

### Gap 2: NIH 2023 Data Management and Sharing Policy
NIH's Data Management and Sharing (DMS) Policy took effect January 2023, requiring data management plans and sharing of scientific data from NIH-funded research. How does this policy interact with AI research at AMCs? What are the obligations for sharing AI model outputs, training datasets, or fine-tuned models from NIH-funded work? How do AMCs reconcile DMS sharing requirements with zero-data-retention provisions in vendor BAAs?

### Gap 3: Synthetic data as a governance tool
The current chapter mentions synthetic data as an alternative but doesn't develop it. What is the current state of synthetic EHR generation methods (variational autoencoders, GANs, diffusion models)? What quality and fidelity metrics are used to evaluate synthetic clinical data? Has ONC or HHS issued guidance on when synthetic data is acceptable for AI validation? What are the known limitations (synthetic data can inherit biases from source data)?

### Gap 4: Federated learning for AMC data consortia
Federated learning allows model training across multiple institutions without centralizing data. What federated learning frameworks are in production use in healthcare (FeTS, NVIDIA FLARE, PySyft)? What are the governance requirements for participating in a federated learning consortium? What does an AMC's data governance process look like for federated participation vs. centralized data contribution? What real-world AMC federated learning consortia exist (NIH Bridge2AI, MIDRC)?

## Source types needed

**Tier 1 (retrieve and verify directly — most important for this chapter):**
- TEFCA final rule and Qualified Health Information Networks list — HealthIT.gov/tefca
- ONC information blocking final rule — healthit.gov
- NIH 2023 Data Management and Sharing Policy — grants.nih.gov
- NIH Bridge2AI program documentation — commonfund.nih.gov/bridge2ai
- ONC HTI-1 final rule on data interoperability — federalregister.gov
- HHS HIPAA Expert Determination guidance — hhs.gov

**Tier 2 (peer-reviewed — PUBMED-PENDING placeholders only, no DOIs):**
Synthetic EHR generation studies (GANs, diffusion models for clinical data), federated learning in healthcare consortia, model memorization and privacy attacks on LLMs trained on clinical data, OMOP CDM validation studies.

## Scope

Data governance, data access, data use, and data sharing as they pertain to
generative AI adoption at an academic medical center. This is a cross-domain
workstream chapter — it applies to clinical, research, education, and business
operations simultaneously. **Not scope:** IT infrastructure and security
(that is `infrastructure.qmd`); ethics and legal (that is `ethics.qmd`).

## Argument the chapter should make

Generative AI at an academic medical center is only as good — and only as safe
— as its data practices. The chapter should establish that data governance is
not a compliance function bolted onto AI after the fact; it is the load-bearing
structure beneath any responsible deployment. The practical message: the
institution already has most of what it needs in its existing data governance
apparatus, but AI forces that apparatus to confront new questions it was not
designed to answer.

## Areas the dossier must cover

- **The AMC data landscape**: what kinds of data an academic medical center
  actually holds — EHR data, claims data, imaging, genomics, administrative
  data, research datasets, educational records — and the regulatory regimes
  governing each (HIPAA, FERPA, the Common Rule, state privacy laws, 42 CFR
  Part 2 for substance use data).
- **Data classification for AI**: the difference between public, internal,
  confidential, and regulated data in the context of LLM inputs. What happens
  when an employee pastes a patient note or a student record into a public
  LLM API. A practical classification decision tree.
- **De-identification and its limits in the era of LLMs**: the HIPAA Safe
  Harbor and Expert Determination standards; the re-identification literature
  (cite Gymrek, Erlich, and more recent work on EHR re-identification); why
  "de-identified" data pasted into a large language model may not stay
  de-identified in the model's training or outputs.
- **Data access governance structures**: the honest broker model; IRB data
  access requirements; data use agreements; the role of a data governance
  committee; what a data request process for AI projects looks like.
- **FHIR and OMOP as AI substrates**: why interoperability standards matter
  for AI (you can't fine-tune on data you can't access consistently); what
  FHIR R4/R5 enables for LLM integration; the OMOP common data model and its
  research community. Cite the ONC interoperability final rule in context.
- **Data sharing for model training**: the continuum from fine-tuning on local
  data to federated learning to contributing to consortium training sets; the
  data sharing agreements and governance required; examples of healthcare AI
  consortia (NIH NCATS, PCORnet, TriNetX, All of Us).
- **Synthetic data as a governance tool**: the emerging literature on synthetic
  EHR generation for AI training; the quality and fidelity questions; when
  synthetic data is and is not a reasonable substitute.
- **Institutional data policies for AI tools**: what a data classification
  policy for AI looks like; vendor data handling requirements (BAAs, data
  residency, sub-processor disclosure, no-training-on-customer-data clauses);
  a model policy checklist.

## Figure and table targets

- A Mermaid diagram: data flow with policy gates — from data source through
  classification → access decision → permitted uses → approved AI tool →
  output handling. Show the governance touchpoints.
- A table: data types, governing regulation, permitted AI uses, restricted
  AI uses, required safeguards. Rows: EHR clinical data, research data under
  Common Rule, student/trainee records (FERPA), administrative/business data,
  imaging and genomics.
- A decision tree (Mermaid) for "Can I use this data with this AI tool?" —
  the practical version an employee could actually follow.

## Open questions to flag

- The re-identification risk of LLM outputs (model memorization) is an active
  research area — flag the most current empirical work.
- State privacy laws (CCPA, state HIPAA analogues) are evolving — note which
  states your institution operates in and whether the dossier found
  state-specific guidance.
