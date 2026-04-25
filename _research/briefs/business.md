# Chapter brief: Business Operations Domain

**Target file:** `resources_business.qmd`
**Status:** currently empty (one heading, no body).
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** fourth domain chapter, after Education, Research, and
Clinical, under the "Domain Resources" part. Reader has already encountered
the framework chapter (`framework.qmd`) defining the four domains and five
workstreams, the values chapter (`values.qmd`), the implementation chapter
(`implementation.qmd`), and the barriers chapter (`barriers.qmd`).

## Scope

The "Business Operations" domain of an academic medical center: finance, HR,
supply chain, IT operations, marketing and communications, philanthropy and
development, facilities, and legal/compliance. Generative AI use cases in
each. **Not in scope:** clinical operations, research operations, or
educational operations — those have their own chapters.

## Argument the chapter should make

Business operations is the lowest-risk, highest-velocity domain for
generative-AI adoption inside an academic medical center, *and* it is where
the regulatory exposure is most often underestimated by leaders who assume
"it's just back office." The chapter should make that double argument: move
fast, but know where the regulatory and reputational landmines are.

## Areas the dossier must cover

- The 2024–2026 regulatory layer specific to AI in employment and consumer
  contexts: EEOC guidance, NYC Local Law 144, the Colorado AI Act, FTC
  posture on AI marketing claims, OCR/HIPAA implications for back-office
  tools that may incidentally touch PHI.
- Function-by-function survey of generative-AI use cases with named real
  deployments where they exist: finance (close, FP&A, vendor invoice
  processing), HR (recruiting, JD generation, employee Q&A), supply chain
  (contract review, PO drafting), IT operations (ticket triage, incident
  summarization, code review), marketing/communications (content drafting,
  translation), philanthropy (donor research, draft letters), facilities
  (work-order routing), legal/compliance (contract review, policy drafting).
- The shadow-IT problem: employees using consumer ChatGPT with internal data,
  and what the literature and security community say about the residual risk.
- Enterprise tenant choices in 2025–2026: Microsoft 365 Copilot, Google
  Workspace AI, ChatGPT Enterprise, Anthropic Claude for Enterprise. What
  each buys you in terms of data handling, BAAs, audit logging, identity
  integration.
- Procurement and vendor risk for AI-enabled SaaS: model card / system card
  review, data residency, sub-processor disclosure, BAA availability for any
  tool that may touch PHI, the NIST AI RMF as a procurement lens.
- Measurement: KPIs that an academic medical center can actually track for
  business-operations AI adoption, with examples of what good looks like.

## Connections to other chapters

- The framework chapter introduces "Business Operations" as the fourth
  domain; this chapter should explicitly thread the five workstreams (data,
  IT/security/infra, ELSI, training, PM/support) through the function survey.
- The values chapter (`values.qmd`) lays out stakeholder principles for
  administrators and support staff; this chapter should reference those
  rather than re-deriving them.
- The barriers chapter (`barriers.qmd`) covers shadow-IT and resistance
  generally; this chapter should go deeper on the business-operations-specific
  flavor.

## Figure and table targets

- A Mermaid diagram of an AI procurement decision flow (intake → security
  review → privacy review → BAA negotiation → pilot → go/no-go).
- A comparison table of three to five enterprise AI platforms (Microsoft
  Copilot, Google Workspace AI, ChatGPT Enterprise, Claude Enterprise,
  Anthropic via cloud) on dimensions that matter to an AMC: BAA, data
  residency, audit logging, identity, sub-processors, indemnification.
- A table mapping each business-operations function to two or three
  high-confidence generative-AI use cases, with named example deployments
  where public.

## Voice constraints

The author's voice is plain, declarative, mildly skeptical. No "rapidly
evolving landscape." No rule of three. No "robust," "comprehensive," or
"leverage." The chapter should read like a senior AMC operations leader
talking to peers — confident, specific, willing to call out vendor hype.

## Open questions you may flag

If you find the literature genuinely split on a point (for example, the
real-world ROI of Copilot deployments), surface that in section 5 of the
dossier rather than picking a side.
