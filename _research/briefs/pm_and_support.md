# Chapter brief: Project Management & Support Workstream

**Target file:** `pm_and_support.qmd`
**Status:** stub — not in active `_quarto.yml`.
**Length target:** ≥6 rendered pages (~3,000–4,500 words of body prose).
**Position in book:** fifth workstream chapter.

## Scope

The operational machinery of AI adoption: how AI projects are proposed,
evaluated, prioritized, piloted, deployed, monitored, and retired. The roles
and structures that make this machinery work — the AI Steering Committee,
domain leads, support staff, solution architects, change managers. **Not
scope:** the technical infrastructure (that is `infrastructure.qmd`); workforce
training (that is `workforce.qmd`).

## Argument the chapter should make

The graveyard of enterprise AI initiatives is full of technically competent
projects that failed at the organizational layer — no one owned the problem,
no one had authority to say no to a bad vendor, no one was tracking whether
the thing was working after go-live. An AMC that gets the governance and
project-management infrastructure right before it scales AI adoption will
outperform an AMC that deploys ten times as many tools without it.

## Areas the dossier must cover

- **The AI Steering Committee (AISC) in practice**: what it actually does week
  to week (vs. what governance documents say it does); who should sit on it;
  decision rights — what requires AISC approval vs. what domain leads can
  decide independently; meeting cadence; reporting structure. Find examples
  from peer institutions that have published their governance documents.
- **The project intake and triage process**: how a proposed AI project reaches
  the AISC; the intake form and its required fields (use case, domain,
  data types involved, vendor or build, patient safety implications, cost
  estimate, success metrics); the initial triage — what gets reviewed vs.
  what is below the threshold. Provide a model intake checklist.
- **Stage gates from idea to deployment**: a five- or six-stage model
  (idea/intake → feasibility/business case → pilot design → pilot execution
  → validation and safety review → deployment → post-deployment monitoring)
  with defined go/no-go criteria at each gate. Reference analogues from
  clinical trial phases, software delivery, and hospital quality improvement.
- **Pilot design for AI projects**: what distinguishes a rigorous AI pilot from
  an impression-gathering exercise; pre-registration of evaluation criteria;
  the difference between shadow deployment and live deployment; sample size
  considerations for clinical AI pilots; who evaluates.
- **Post-deployment monitoring**: what to monitor (accuracy, utilization,
  clinician override rates, adverse events, fairness metrics); who monitors;
  alert thresholds; escalation paths; the incident reporting mechanism for
  AI-related near-misses and harms.
- **The support model for end users**: the help desk tier-1/tier-2 model for
  AI tool support; the "AI champion" embedded in each domain; the feedback
  loop from end users back to the AISC; the role of the clinical informatics
  team.
- **Solution architects and AI engineers**: the new roles the AMC actually
  needs; what these people do; the build-vs-buy-vs-integrate decision
  framework; managing vendor relationships and SLAs for AI tools.
- **Change management for AI deployment**: the evidence base for change
  management in healthcare technology adoption; stakeholder mapping for an
  AI project; communications planning; managing resistance; the clinician
  champion model.
- **Budget and resource allocation**: how AMCs are funding AI programs in
  2024–2026; the grant landscape (NIH, AHRQ, foundations); the ROI question
  and what it actually takes to measure it; cost transparency for AI tool
  usage.

## Figure and table targets

- A Mermaid stage-gate diagram: idea → intake/triage → feasibility → pilot →
  validation → deploy → monitor → retire. Show the go/no-go decision points
  and the bodies that make each decision.
- A model AI project intake form as a table: field name, description,
  required/optional, who fills it out.
- A RACI matrix table: rows = key decision types (approve new vendor contract,
  approve pilot go/no-go, approve deployment, declare AI incident, retire tool);
  columns = AISC, Domain Lead, CISO, Legal, CMO; cells = R/A/C/I.

## Voice constraints

Directed at the people who will actually run this machinery — the project
management office, the CMIO, the CIO, the AI program director if one exists.
Should be concrete enough to hand to someone building the program from scratch.
Avoid abstract governance theory; ground every recommendation in what has
worked at peer institutions.

## Open questions to flag

- Find examples of published AMC AI governance documents, intake processes,
  or stage-gate frameworks from peer institutions (Mayo, Cleveland Clinic,
  UCSF, Vanderbilt, Mass General Brigham, Duke, etc.). These are rare but
  increasingly published.
- The ROI measurement literature for healthcare AI is thin; flag the most
  credible frameworks and what they are able and unable to measure.
