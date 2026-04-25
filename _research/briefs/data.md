# Chapter brief: Data Access & Use Workstream

**Target file:** `data.qmd`
**Status:** stub — one heading, not in active `_quarto.yml` (commented out).
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** first workstream chapter under "Workstream Resources" part.

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
