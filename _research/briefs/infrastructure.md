# Chapter brief: IT Infrastructure and Security — EXPAND EXISTING CHAPTER

**Target file:** `infrastructure.qmd`
**Status:** EXISTING chapter (221 lines, ~2,800 words) — structurally sound, pre-2025 voice, missing several 2024–2026 developments.
**Goal:** Produce a research dossier for an expansion pass that adds ~1,000–1,500 words of new material and upgrades evidence in existing sections.
**Position in book:** Workstream Resources part, first workstream chapter.

## What the current chapter already covers — DO NOT duplicate

- Buy/build/connect trilemma for AMC AI infrastructure (use "connect" pattern)
- Institutional API gateway as central architectural element (LiteLLM, Kong, Azure APIM)
- Role-based access control, PHI scanning, audit logging via gateway
- Clinical RAG pipeline (embedding, vector store, augmented prompt builder)
- Security implications of RAG: PHI in retrieved docs, indirect prompt injection (Greshake et al.)
- NIST AI RMF four functions (Govern/Map/Measure/Manage) — mapped to concrete controls
- Shadow AI countermeasure: make institutional path easier than consumer path
- Two starter projects: API gateway deployment, internal AI assistant with RAG

## What is MISSING and must be researched

### Gap 1: Ambient AI embedded in EHR workflows
Nuance DAX Copilot (Microsoft/Epic integration), Abridge, Suki, and Nabla are now embedded directly in EHR clinical workflows rather than accessed via a separate gateway. DAX Copilot operates within the Epic clinical narrative module. Research question: What are the governance implications when the AI is inside the EHR rather than connected via an institutional gateway? How does the institution maintain audit logging and PHI control when the ambient AI is managed by the EHR vendor? What does the EHR vendor's AI integration contract look like vs. a standalone tool BAA?

### Gap 2: Agentic AI infrastructure requirements
AI systems that can take autonomous multi-step actions (query EHR, send patient messages, schedule appointments, order labs) require fundamentally different controls than advisory AI. What does "least-privilege API scope" look like for agentic clinical AI in a SMART on FHIR context? What infrastructure controls govern agentic AI: pre-authorization vs. post-hoc review, action rollback, rate limiting for autonomous workflows, action logging requirements (distinct from prompt logging)?

### Gap 3: On-premises and sovereign cloud deployment
For restricted data tiers (genomic, psychiatric, substance use treatment records under 42 CFR Part 2), cloud API transmission may not be acceptable even with a BAA. What open-weight models (Llama 3/3.1, Mistral, Phi-4) are viable for clinical use at AMC compute thresholds? What sovereign cloud options do the major cloud providers offer (Azure Government, AWS GovCloud, Google Assured Workloads)? What is the current state of Epic's on-premises AI integration capabilities?

### Gap 4: EHR-specific integration decision framework
Epic, Oracle Health, and MEDITECH have different API maturity levels. Epic's CDS Hooks, SMART on FHIR App Orchard, and Epic-native integrations (DAX, Cognitive Computing) each have different governance implications. What is an institutional governance checklist for evaluating whether to use an EHR vendor's native AI integration vs. a third-party gateway-connected tool?

## Source types needed

**Tier 1 (retrieve and verify directly):**
- NIST AI 600-1 (Generative AI Profile, July 2024) — nist.gov
- ONC SMART on FHIR specification — hl7.org/fhir/smart-app-launch
- Epic SMART on FHIR developer documentation — fhir.epic.com
- Cloud Security Alliance AI Safety Initiative guidance — cloudsecurityalliance.org
- Microsoft Azure Healthcare AI documentation — learn.microsoft.com
- AWS HealthLake / Bedrock Healthcare documentation — aws.amazon.com
- Nuance DAX Copilot product documentation — nuance.com

**Tier 2 (peer-reviewed — PUBMED-PENDING placeholders only, no DOIs):**
Papers on prompt injection in healthcare LLMs, ambient AI implementation studies, SMART on FHIR interoperability in clinical AI deployments.

## Scope

The technical infrastructure required to deploy and operate generative AI at
an academic medical center: cloud and on-premise compute, API gateway patterns,
security controls, identity and access management, audit logging, network
architecture, and model hosting choices. **Not scope:** data governance
(that is `data.qmd`); ethics and policy (that is `ethics.qmd`).

## Argument the chapter should make

Most academic medical centers will not build their own large language models.
The infrastructure question is not "how do we train a model" but "how do we
connect our institution to models that exist, in ways that protect our patients,
our researchers, and our accreditation — without making it so hard that people
route around us via consumer tools." The chapter should give a CIO, CISO, and
VP of Research Computing a shared vocabulary and a defensible reference
architecture.

## Areas the dossier must cover

- **The three deployment patterns** with concrete trade-offs for each:
  1. API calls to commercial hosted models (OpenAI, Anthropic, Google) via
     public API — fastest, cheapest, lowest data control.
  2. Private/enterprise cloud tenants (Azure OpenAI Service, AWS Bedrock,
     Google Vertex AI) — enterprise contracts, data residency, BAAs possible,
     no training on customer data. Describe what each major provider actually
     offers as of 2025–2026.
  3. Self-hosted open-weight models on institutional hardware (Llama 3,
     Mistral, Gemma) — maximum control, high operational cost, viable only
     for specific use cases.
- **GPU infrastructure**: what it actually takes to run inference on a 70B
  parameter model; the NVIDIA H100/A100 landscape; the difference between
  inference and fine-tuning compute requirements; cloud GPU vs. on-premise;
  the role of the institution's existing HPC cluster for research use vs.
  a separate clinical inference cluster.
- **API gateway and routing layer**: why a central API gateway matters (cost
  control, rate limiting, audit logging, prompt/response logging for
  compliance, model-switching without application changes); open-source options
  (LiteLLM proxy, OpenRouter); enterprise options. Architecture diagram.
- **Retrieval-Augmented Generation (RAG) architecture**: what RAG is and why
  it is the dominant pattern for institutional knowledge bases; vector stores
  (Pinecone, Weaviate, pgvector, Chroma); embedding models; chunking and
  indexing pipelines; latency and freshness trade-offs. When RAG is and is
  not the right pattern.
- **Security controls**: NIST AI RMF mapping to concrete controls; prompt
  injection risks and mitigations; data leakage risks in multi-tenant
  deployments; model inversion and membership inference attacks (conceptually
  for a non-researcher CISO audience); HITRUST and HIPAA security rule
  requirements for AI systems handling PHI.
- **Identity and access management**: integrating AI tools with institutional
  IdP (SSO, SAML, OIDC); role-based access to AI capabilities; attribute-based
  access control for sensitive tools; provisioning and de-provisioning.
- **Audit logging and compliance**: what to log (prompts, completions, user
  identity, timestamps, model version, cost); how long to retain; what
  constitutes a PHI breach if a prompt contains patient data; how to
  demonstrate compliance to auditors.
- **The shadow-IT countermeasure**: the infrastructure argument for why a
  well-designed institutional AI gateway is the answer to consumer ChatGPT
  use — easier to use, so people prefer it, rather than a policy prohibition
  they ignore.

## Figure and table targets

- A reference architecture diagram (Mermaid or Graphviz): shows the layers —
  user/application → API gateway → policy/logging layer → model router →
  commercial API / enterprise tenant / self-hosted model → audit store.
- A comparison table: three deployment patterns (public API, enterprise tenant,
  self-hosted) on dimensions: data residency, BAA availability, PHI permitted,
  cost model, operational overhead, customization ceiling.
- A security controls table: NIST AI RMF categories → concrete control
  examples for an AMC → who owns each control (CISO, IT, AI team, vendor).

## Open questions to flag

- The HIPAA BAA landscape for AI providers is changing; flag which providers
  offer BAAs as of your research date and note that this changes frequently.
- Prompt injection is an active attack research area; flag the most current
  empirical work on practical attacks against healthcare-adjacent LLM
  deployments.
