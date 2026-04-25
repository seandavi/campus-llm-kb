# Chapter brief: IT, Security & Infrastructure Workstream

**Target file:** `infrastructure.qmd`
**Status:** stub — not in active `_quarto.yml`.
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** second workstream chapter.

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
