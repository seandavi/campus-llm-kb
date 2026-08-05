# Dossier — Responsible AI in Academic Research (Zyphur / Instats, 2026)

**Prepared:** 2026-08-05
**Source of request:** GitHub issue #2 — add https://mzyphur.github.io/responsible-ai-in-research-training/ "with some findings and discussion"
**Scope:** research and analysis only; no chapter edits made.

---

## 1. What the resource actually is

The URL in the issue is not a training course. It is the HTML edition of a **policy report**:

> Zyphur, M. J. (2026). *Responsible AI in Academic Research: A Competency Framework for
> Research Training.* Instats Policy Series, INSTATS-PS-2026-04. DOI: 10.61700/t31oy23grr.

- **Author:** Michael J. Zyphur, PhD. ORCID 0000-0003-3237-7892.
- **Publisher:** Instats (instats.org), a commercial research-methods training organisation
  Zyphur directs.
- **Published:** May 2026 (CITATION.cff `date-released: 2026-05-20`). Roughly three months
  old as of this dossier.
- **Length:** ~21,000 words. Five parts, a conclusion, and seven appendices.
- **Audience:** senior university research leadership — DVCs/Deputy Provosts of Research,
  PVCs/DVPs of Research, faculty deans and associate deans of research, deans of graduate
  schools, higher-degrees and research-integrity committees, and peak bodies representing
  graduate students. Explicitly *not* written for individual researchers.
- **License:** CC BY-NC-ND 4.0. Share in full with attribution, non-commercial, **no
  derivatives**. Commercial reuse by written permission from Instats.
- **Formats:** HTML (the issue's URL), PDF, DOCX, and Markdown source, all in the GitHub
  repo `github.com/mzyphur/responsible-ai-in-research-training`.

### Versioning caution

The report is a living document and its version numbering has already drifted:
`CITATION.cff` declares `version: 1.2.5` / released 2026-05-20, while the repo's `VERSION`
file reads `1.2.9`. If the book cites it, cite **version and access date**, not just the
DOI. The DOI (10.61700/t31oy23grr) resolves — but it resolves to the *GitHub repository*,
not to a versioned archival landing page, so the DOI does not pin a version either.

### URL verification (all checked live 2026-08-05)

| URL | Status |
|---|---|
| https://mzyphur.github.io/responsible-ai-in-research-training/ | 200 |
| https://doi.org/10.61700/t31oy23grr | 200 (redirects to the GitHub repo) |
| https://github.com/mzyphur/responsible-ai-in-research-training | 200 |
| https://instats.org/publications/responsible-ai-in-academic-research | 200 |
| https://orcid.org/0000-0003-3237-7892 | 200 |

---

## 2. Author credibility

**Self-described (Appendix D of the report):** "Michael J. Zyphur is the Director of Instats
and a Professor of Quantitative Methods at the University of Queensland." Google Scholar
profile linked; ORCID 0000-0003-3237-7892; contact routed through support@instats.org.

**Independently verified (2026-08-05, UQ Business School profile at
https://business.uq.edu.au/profile/14074/michael-zyphur and corroborating sources):**

- **Professor of Quantitative Methods, UQ Business School, University of Queensland** —
  the report's self-description checks out.
- **PhD 2006, Tulane University**, in industrial and organizational psychology.
- Prior academic appointments at the **University of Melbourne, University of Washington,
  and the National University of Singapore**.
- **Former ARC Future Fellow** — a competitive Australian Research Council fellowship, and
  a meaningful independent signal of standing in his field.
- **Semantic Scholar** (author 3751068): 98 papers, **11,739 citations, h-index 39**.
  **Google Scholar** (his own profile, linked from the report): **18,327 citations, h-index
  46**, i10-index 69; 10,738 of those citations since 2021.
- **2012 Academy of Management Research Methods Division Early Career Award**, for
  contributions to quantitative research methods.
- Also **Director of the Society for Quantitative Methods (SQM)** in addition to Instats.
- Still listed as an affiliate of the University of Melbourne Faculty of Education, where he
  was Associate Professor of Management.

His methodological specialism is latent-variable modelling: structural equation modelling,
multilevel modelling, and multilevel SEM, applied across the social and health sciences.
Most-cited work, which establishes the specialism clearly:

| Paper | Venue | Year | Cites (GS) |
|---|---|---|---|
| Preacher, Zyphur & Zhang, "A general multilevel SEM framework for assessing multilevel mediation" | *Psychological Methods* | 2010 | 4,939 |
| Geldhof, Preacher & Zyphur, "Reliability estimation in a multilevel CFA framework" | *Psychological Methods* | 2014 | 1,986 |
| Zhang, Zyphur & Preacher, "Testing multilevel mediation using hierarchical linear models" | *Organizational Research Methods* | 2009 | 1,573 |
| Preacher, Zhang & Zyphur, "Alternative methods for assessing mediation in multilevel data" | *Structural Equation Modeling* | 2011 | 1,234 |
| Preacher, Zhang & Zyphur, "Multilevel SEM for assessing moderation within and across levels" | *Psychological Methods* | 2016 | 669 |
| Zyphur & Oswald, "Bayesian estimation and inference: a user's guide" | *Journal of Management* | 2015 | 566 |
| Zyphur & Pierides, "Is quantitative research ethical?" | *Journal of Business Ethics* | 2017 | 446 |
| Zyphur et al., "From Data to Causes I: Building a General Cross-Lagged Panel Model" | *Organizational Research Methods* | 2019 | 444 |

Note the last three rows in particular: he has a sustained line of work on **research ethics,
methodological critique, and reproducibility** — including "Null Findings, Replications and
Preregistered Studies in Business Ethics Research" (*J Bus Ethics* 2019), "Statistics and
Probability Have Always Been Value-Laden" (*J Bus Ethics* 2020), and "Beyond Experiments"
(*Perspectives on Psychological Science* 2022). He also maintains the `edm` Stata/R packages
for empirical dynamic modeling. The report's preregistration-of-prompts recommendation is not
a bandwagon position for him; it is continuous with fifteen years of his own published work.

This matters for how the book should frame him. He is a **genuine, well-cited quantitative
methodologist** — not a self-published commentator — but he is **not** an AI researcher, a
bioethicist, or a higher-education policy scholar. He is a research-methods person writing
about what AI does to research methods. That is an unusual and defensible vantage point, and
it shows in the report's strongest material: the prompt-as-researcher-degree-of-freedom
argument in §2.4 is a methodologist's argument, not a technologist's, and it is the part of
the report most likely to survive contact with a skeptical biomedical readership.

Two caveats on scope of expertise. First, his field is organisational and management
research, not biomedicine — the report contains no clinical or human-subjects material and
he should not be cited for anything in that territory. Second, **nothing in his 98-paper
record touches AI, machine learning, or LLMs. He has zero peer-reviewed AI publications**,
and this report is his first work on the subject. The credibility he brings is methodological
authority transferred onto a new subject, not an established track record in AI research.
That is not disqualifying — the transfer is exactly what makes the p-hacking analogy work,
and it is arguably why that argument is the best thing in the report — but it is the honest
characterisation and the book should not imply otherwise.

### Conflict of interest — the report discloses it, and the disclosure is adequate but not complete

The report includes an explicit COI statement (Appendix D):

> "The author has no paid relationships with any of the institutions in the report's
> institutional sample (Appendix B), except his employment by the University of Queensland
> (UQ). UQ is one of the thirty-eight universities in the sample... The author's commercial
> role at Instats is research-training-adjacent; the report's framing was developed
> independently of any commercial activity and is offered as a contribution to the public
> discussion... not as a product placement."

Two observations the book should weigh:

1. **The structural conflict is real, specific, and understated by the disclosure.**

   *What Instats is:* **Instats Inc.** — a for-profit company (Crossref member 47853, with
   its own DOI prefix 10.61700, which is how the report got its self-assigned DOI). No
   nonprofit or charitable registration was found; the site self-describes as
   "mission-driven," which is not a legal status. It operates a marketplace of expert-led
   statistics and methods training aimed at PhD and post-PhD researchers: 350+ on-demand
   programs plus live seminars, sold through **individual and institutional memberships
   from about $61/month** plus per-seminar fees, with 400+ partners (including the American
   Statistical Association, the Statistical Society of Canada, and the Ecological Society of
   America) and institutional customers whose logos include NYU, UCLA, UWA, and UCLouvain.
   Its Academic Board carries genuinely serious names — Stephen Raudenbush (Chicago),
   Jeffrey Wooldridge (Michigan State), Betsy McCoach (UConn). Zyphur personally teaches a
   paid course on the platform. This is a real training business with real academic
   standing, not a shell.

   *Why that matters here:* **Instats already sells AI training.** Its on-demand catalogue
   includes "Beyond ChatGPT: Agentic AI as 24/7 Research Assistants," "AI-Assisted
   Qualitative Analysis," "Using AI for Text Analysis: Advanced Applications," "Building
   Autonomous AI Agents for Scientific Research," and "Critical Thinking Tools for the Age
   of AI," plus free lead-generation seminars titled "AI Tools for Researchers" and "AI
   Tools for Researchers 2.0."

   So the structure is: a report **addressed to** DVCs and Provosts of Research, Deans of
   Graduate Schools, and Associate Deans of Research Training — precisely the people who
   authorise institutional memberships — **finding** that universities fail on Dimension 4
   ("AI-literate humans"), and **recommending** curriculum integration plus supervisor and
   examiner training, explicitly framed as "recurring annual costs," with §2.4 stating the
   evidence points to "the need for AI-centric upskilling in the form of rigorous
   AI-related research training." That is the seller's product line, delivered to the
   seller's buyer list, written by the seller's director.

   *The disclosure:* Appendix D says the author's "commercial role at Instats is
   research-training-adjacent" and that the framing "was developed independently of any
   commercial activity... not as a product placement." Disclosing at all puts Zyphur well
   ahead of most vendor-adjacent white papers, and I take the independence claim as offered
   in good faith. But **"research-training-adjacent" materially understates it**: Instats is
   not adjacent to research training, it *is* a commercial research-training provider with
   AI courses already on the shelf. Note also that the report's byline carries **only
   Instats** — the UQ affiliation appears nowhere except the Appendix D bio line — and the
   document is Instats-branded throughout (logo, document ID, copyright, and a license
   requiring Instats' written permission for commercial reuse).

   **Practical consequence for the book:** if the report is cited, name the affiliation in
   the sentence — something in the shape of "writing for the research-training provider
   Instats" — and treat it as self-published rather than peer-reviewed. Lean on the
   diagnosis and the framework; do not use it as evidence that institutions underinvest in
   AI training, because that is the specific claim its author's company is paid to remedy.

2. **UQ's own placement is a mild self-interest surface.** UQ sits at Class C in the
   report's taxonomy — the modal, middle-of-the-pack posture, neither flattering nor
   damning. The report handles this the right way (public documents only, same basis as
   every other institution) and the placement is not obviously self-serving.

**Bottom line on credibility:** cite it as a well-constructed, well-disclosed **argument and
instrument** from a credible, well-cited methodologist who has a commercial stake in the
conclusion and discloses it. Do not cite it as neutral survey evidence. See §7 below for the
separate and more serious reason the empirical claims should not be leaned on.

**Independent reception: essentially none.** Checked and confirmed:

- **Crossref:** 0 citations received, and 0 references registered by the report itself.
  Registered 2026-06-30.
- **GitHub repo:** 3 stars, 0 forks. Created 2026-05-18, last push 2026-08-03.
- **No coverage** in Times Higher Education, *Nature*, Inside Higher Ed, Retraction Watch, or
  any news outlet. No critiques, reviews, or substantive third-party discussion located
  anywhere.
- Visible promotion is **self-channel only**: Instats' own blog and publications pages, a
  LinkedIn post, and a cross-post to an Academy of Management HR Division discussion board
  (whether that drew replies or pushback could not be verified — the board returned 403).
- Third-party endorsement of **Instats as a platform** does exist (a Statistical Society of
  Canada interview in *SSC Liaison*, Dec 2024; an ASA partnership and podcast episode; a
  Weizenbaum Institute Methods Lab recommendation, July 2026). That endorses the company,
  not this report.

At roughly three months old and self-published through a commercial institute rather than a
journal or sector body, the silence is unsurprising and is not by itself a mark against the
work. But it means **the report has been vetted by no one outside Instats**, and the book
would be among its first substantive citers — with the reputational exposure that implies if
the withheld coding frame is ever challenged.

**Unverified, and flagged as such:** exact Melbourne→UQ transition date; his current time
split between UQ and Instats (his publication output thins sharply after 2022, which suggests
Instats is now the primary activity, but that is inference rather than documentation);
Instats' incorporation jurisdiction and formal legal status; and the contents of the withheld
dossiers.

### AI assistance disclosure

The report discloses (Appendix D) that it "used assistance from Anthropic Claude Code
(Opus 4.7), OpenAI Codex (GPT-5.5), and Google Gemini (3 Flash Preview) for research review,
drafting, code/release checks, and copy-editing," with the author accepting responsibility
for every factual claim. This is worth noting in the book's prose if the resource is
discussed at any length: a report arguing for disclosure discipline that models the
disclosure discipline it argues for is a small but genuinely useful example, and it pairs
naturally with the book's own `appendix_workflow.qmd`.

---

## 3. Content summary by part

### Part 1 — The factual baseline

**§1.1 The shift in research practice, 2022–2026.** The report's organising empirical
observation is a three-layer response-speed comparison:

- **Publishers moved in ten weeks.** ChatGPT-3.5 launched 30 Nov 2022. *Nature* 24 Jan
  2023, *Science* 26 Jan, arXiv 31 Jan, JAMA Feb, Cambridge UP 14 Mar, Elsevier Mar, ACM
  Apr. Substantively identical rule at all of them: AI cannot be an author because it
  cannot bear responsibility. The report notes that comparable cross-publisher
  convergences (predatory-publishing rules, ICMJE authorship alignment, COPE
  post-publication protocols) historically took *years*.
- **Funders moved over roughly three years, unevenly.** DFG 21 Sep 2023 (earliest);
  NIH peer-review prohibition NOT-OD-23-149 23 Jun 2023; NSF notice 14 Dec 2023; UKRI
  formal policy 23 Sep 2024; NWO 20 Jan 2025; NIH applicant-side originality bar
  NOT-OD-25-132 mid-2025; ERC evaluation-side Mar 2026; ARC/NHMRC 28 Apr 2026 (latest).
- **Universities have not caught up.**

Two disclosure-gap statistics anchor the section:
- BMJ introduced a structured submission-form AI disclosure field on 8 Apr 2024 and
  registered a **5.7% disclosure rate across 25,114 submissions to 49 BMJ journals** in the
  following seven months.
- arXiv's moderation team reported a **72% increase** in submissions that may be partly
  AI-written between ChatGPT's release and a 2025 internal study. *(See §7 — this figure
  has no primary-source citation and should not be repeated.)*

**§1.2 "Responsible AI use" lacks an operational definition.** The phrase appears in every
funder, publisher, institutional, and competency-framework policy surveyed; its operational
meaning does not converge. Funders point outward to host-institution codes (DFG: researchers
"must ensure that the use of generative models does not infringe anyone else's intellectual
property and does not result in scientific misconduct"; ARC/NHMRC: "AI-generated content must
be verified and should not replace expert opinion or judgement"). Publishers converge on
*where to disclose* (Elsevier's mandated "Declaration of Generative AI" section immediately
above the references; Cell Press after the declaration of interests; JAMA's three-location
rule plus an affirmation that AI "had no involvement in shaping the intellectual content";
PLOS uniquely mandating reviewer-to-author disclosure "in the review form"). Competency
frameworks converge on principle (UNESCO ethics dimension; CGS-INRS seven principles; the
Blau et al. PNAS five principles).

The report's own definition, which is the most portable single sentence in the document:

> "By 'responsible,' this report means AI use that is *ethical, valid, reproducible, and
> transparent*. These four are not arbitrary; they are the conditions under which
> AI-augmented research remains research."

Each is then given an operational gloss: *ethical* = no harm to participants, communities,
or third parties whose data is processed; *valid* = AI-assisted inferences meet the same
methodological standards as human-produced ones, including assumption-checking, sensitivity
analysis, replication; *reproducible* = another researcher with the same inputs, prompts,
parameters, and tool version can reproduce the output to a stated tolerance; *transparent* =
AI's role disclosed with enough specificity for supervisors, examiners, reviewers, and
readers to assess it. "These four properties are necessary together; no three substitute for
the fourth."

**§1.3 The institutional baseline — the Class A–D taxonomy.** 38 top-tier doctoral
universities across 15 countries/jurisdictions, classified by the *scope* of their AI policy:

| Class | Scope | n | % | Named institutions |
|---|---|---|---|---|
| A | Generic student-conduct policy with an AI clause appended | 4 | ~11% | Stanford, Yale, UC Berkeley, Wisconsin-Madison |
| B | AI-specific policy, plagiarism only (± co-authorship rule) | 11 | ~29% | Cambridge, Harvard, MIT, Princeton, Michigan, UWA, Karolinska, Aarhus, U Tokyo, NUS, HKUST |
| C | Extends into research integrity and reproducibility | 17 | ~45% | Oxford, Imperial, Edinburgh, Melbourne, Sydney, ANU, Queensland, Monash, LMU, Humboldt, RWTH Aachen, ETH Zürich, EPFL, TU Delft, Toronto, McGill, UBC |
| D | Extends into AI literacy, competency, and examiner discipline | 6 | ~16% | UCL Doctoral School, KCL Centre for Education Studies, Heidelberg Graduate Academy, KU Leuven, Helsinki, Tsinghua |

The operational difference between C and D: C binds researchers' own conduct through
disclosure-and-verification rules; D adds codified competency expectations for candidates
*and supervisors*, plus examiner-side rules for the viva and the thesis declaration.

The report is careful that country predicts class better than any within-country institutional
feature (research intensity, AI-research depth, institutional age). Germany clusters high
because the *eidesstattliche Versicherung* — the sworn independence affidavit every German
doctoral candidate already signs — gave AI disclosure a pre-existing legal instrument to bolt
onto. Australia clusters at C because the 2018 Australian Code for the Responsible Conduct of
Research supplies a shared anchor. The UK is bimodal (Cambridge B, UCL and KCL D).

### Part 2 — The five-dimension competency framework

The dimensions are sequenced as preconditions: each is empty without the one before it.

**Dimension 1 — Human-in-the-loop discipline.** Publish a *task-level* demarcation between
**labour** (AI augmentation fine, mistakes recoverable: typesetting, language polishing on
researcher-generated text, transcription against verified audio, code-style cleanup,
bibliography formatting) and **judgement** (AI substitution silently degrades the product:
framing the research question, interpreting an unexpected result, deciding what counts as an
outlier, weighing competing evidence, deciding whether a finding survives adversarial test,
agreeing or disagreeing with a reviewer). Teach the demarcation in methods training; enforce
it in supervision and examination. The failure mode where this is absent is "AI did the
analysis for me" and its institutional cousin, "we used AI to validate our findings."

**Dimension 2 — Responsible use across four AI-use modes.** The operational core. Task-level
rules for:
- *Search* — scope with it; verify every surviving citation against the primary source;
  treat the tool's measured failure rate as the procurement baseline.
- *Co-author* — permit assistance on text the researcher generated (polishing, register
  conversion, compression); prohibit substitution for text the researcher cannot
  independently produce; disclose per the destination's publisher convention.
- *Validator* — treat AI critique as a brainstorm prompt, not as discharge of the
  adversarial-review obligation. Run the critique through a model from a *different frontier
  model family*. Treat agreement with your framing as a sycophancy signal, not a validation
  signal.
- *Tutor* — prefer corpus-grounded tutoring (RAG over the supervisor's reading list) to
  free-form chat; require the student to demonstrate independent recall of core concepts
  before AI-assisted progress counts as learning.

**Dimension 3 — Tooling that promotes responsible use.** Six observable properties belong in
the procurement test, because vendor claims are insufficient:
1. *Verifiable citation and resolvability* — sampled and manually checked at procurement.
2. *Data residency and training-on-input governance* — enterprise-tenanted with training
   disabled clears the confidentiality bar for unpublished data; consumer tiers do not.
3. *First-class uncertainty reporting* — AlphaFold's pLDDT / PAE / ipTM as the existence
   proof that uncertainty can be a first-class output rather than a hidden default.
4. *Reproducibility at a known model version* — date-stamped weights or API endpoint, fixed
   temperature, fixed seed where exposed; and the institution should know when the tool is
   non-deterministic across reruns even at temperature zero.
5. *Auditability via session logs* — with an articulated retention window.
6. *Open-source and local options where the workload supports them* — ASReview and
   local Whisper as existence proofs.

Regulatory overlay: EU AI Act Annex III §3(a)–(d) puts admissions, learning-outcome
evaluation, education-level assignment, and proctoring in the high-risk class, with the
Article 27 Fundamental Rights Impact Assessment obligation applying from **2 Aug 2026** (i.e.
three days before this dossier's date). Australian Privacy Act automated-decision-making
transparency obligations commence **10 Dec 2026**.

**Dimension 4 — AI-literate humans.** The report's best material for a biomedical audience.
Six load-bearing competencies, framed as *additive to* — not replacing — the pre-AI
reproducibility canon (Ioannidis 2005; Open Science Collaboration 2015; Begley & Ellis 2012;
Errington et al. 2021; Camerer et al. 2018):

1. **Citation verification** — every LLM-produced citation resolved to the primary source
   before publication.
2. **Model and parameter specification** — model version, temperature, seed where exposed,
   prompt, and a re-run stability test reported for every AI-mediated analysis.
3. **Prompt-as-fork-in-the-garden discipline** — prompt selection is a researcher degree of
   freedom directly analogous to analytic choice in the p-hacking literature (Simmons,
   Nelson & Simonsohn 2011). Contained by pre-registering prompts and analysis plans and
   running prompt-sensitivity tests.
4. **Model-heterogeneity in adversarial review** — red-team/devil's-advocate/multi-agent
   patterns work only when the agent pool spans model *families*; the same parameters that
   produced the answer also produce the critique.
5. **Sycophancy detection and human-as-verifier discipline** — "LLM agreement is not
   evidence. Flat agreement with the user's framing is a failure signal, not a validation
   signal."
6. **Structured failure-mode reporting** — protocol, threat model, instrumentation, and
   failure-discovery rate reported together; OWASP LLM Top 10, MITRE ATLAS, and NIST
   AI 600-1 as the reference taxonomies.

The unifying claim: the core judgement competency is **validity reasoning** — treating AI as
a tool with specific, characterisable failure modes (fabrication, prompt-sensitivity,
non-determinism, model-version drift, sycophancy, agreement amplification) and applying to
them the same adversarial-validation discipline the field built to handle p-hacking,
publication bias, and HARKing.

**Dimension 5 — Institutional benchmarking grid.** Four axes across which the other four
dimensions are enacted: **policy** (the document and its scope and review cadence), **people**
(named owners — research integrity office, graduate school, doctoral supervision lead,
librarian/information specialist, IT security, DPO, academic-integrity adjudicator),
**systems** (procurement gate, records governance for AI session logs, RDM platform,
integrations), **process** (how AI use enters supervision, examination, and the progression
milestones: confirmation, mid-candidature review, completion seminar, submission, viva,
examiner-report adjudication, post-thesis publication).

The line the report keeps returning to: **"A policy document is a row in the competency grid,
not the grid itself."**

### Part 3 — The international evidence

Four evidence bodies, sequenced by regulatory weight. The recurring pattern is the
publishers-fast / funders-slow / universities-slowest gradient.

**§3.1 Funders (14 national funders + ERC).** Four patterns:
- *Assessment side is regulated aggressively*: 13 of 14 prohibit reviewers uploading
  proposals to external genAI, framed as **confidentiality/IP** rather than research
  integrity — which the report notes makes the prohibition portable across jurisdictions.
- *Applicant side varies most.* NIH is strictest: "Applications that are either substantially
  developed by AI or containing sections substantially developed by AI are not considered
  the original ideas of applicants and will not be considered by NIH" (NOT-OD-25-132,
  effective 25 Sep 2025 receipt date). The Swedish Research Council is most permissive:
  "you do not need to state whether you have used AI." The report calls this gap — same
  question, opposite answers, issued about a year apart — the widest variance signal in the
  funder data.
- *Almost no funder regulates AI use inside the funded research itself.* They regulate the
  front (application) and back (assessment) of the grant lifecycle and delegate the middle
  — the actual research — to the host institution, which is the actor the report finds
  least developed.
- *Only UKRI substantively addresses AI literacy in funded training environments*: the
  19 Feb 2026 Strategic Framework commits to CPD "to equip researchers and adopters in
  other disciplines to use AI responsibly" plus twelve AI Centres for Doctoral Training,
  **£117 million across sixteen universities**.

**§3.2 Universities.** Detailed above. The finding most relevant to this book: **the US
Ivy-Plus/AAU sample is the weakest cluster in the world sample** — all eight (Stanford, Yale,
Berkeley, Wisconsin at Class A; Harvard, MIT, Princeton, Michigan at Class B) — "despite
hosting much of the AI research itself." The report is fair about why: US central doctoral
policy is thin because it is devolved to schools and faculties, and it explicitly credits
strong school-level documents (Harvard Graduate School of Education, Michigan Rackham, MIT
departments) while arguing they don't constitute institutional policy in the sense the
German/UK/Australian comparators do.

**§3.3 Publishers (18 publishers + 3 preprint servers).** Three near-universal convergences:
no AI authorship (18/18); disclosure on submission (17/18, SAGE the partial exception via an
assistive-vs-generative distinction); reviewer upload prohibited as a confidentiality breach
(16/18, Cambridge UP and SAGE silent). Two genuinely contested areas: **AI-generated images**
(nine publishers now have category prohibitions outside a narrow "AI is the research"
exception; seven fold images into general disclosure) and **reviewer-side AI use** (Elsevier
and Lancet say no at all; IEEE, ACM, Wiley, PLOS, BMJ permit limited use with disclosure;
JAMA and Springer Nature frame it as confidentiality rather than category prohibition).

**§3.4 Competency frameworks (13 surveyed).** The literature converges on a four-part shape:
human-centred orientation, ethics/responsible use operationalised through disclosure, AI
technical knowledge, and AI literacy/skills. The report's charge against all of it: it
specifies responsible use **in principle** and never **in practice** — no framework says what
the validity test of an AI-augmented inference looks like, what reproducibility means when
the tool is non-deterministic, or what an adversarial-review pattern looks like at methods-
training level.

The single sharpest finding in this section, and probably in the report: **Vitae's UK
Researcher Development Framework — the canonical Anglophone researcher-development standard,
widely adopted internationally — was refreshed in 2025 and did not treat AI as a competency
at all.** It updated "digital and innovation skills" and "research integrity" descriptors
without surfacing AI as a domain or sub-domain.

### Part 4 — The maturity grid

A 5×4 self-diagnostic: five dimensions × four levels (*absent*, *nascent*, *established*,
*leading*), each cell describing observable behaviour evaluated across the policy/people/
systems/process axes. Explicitly **not a ranking** and explicitly non-prescriptive about which
level an institution should occupy — "the grid surfaces the choice; it does not impose one."
Designed to be applied in a single workshop session (four to six questions per dimension, an
hour) or over a six-month external review.

Level definitions: *absent* = no articulated position; *nascent* = position articulated but
not operationalised (the document exists but doesn't name the people, systems, or processes
that enact it); *established* = policy, people, system, and process all in place at a
reviewable cadence — the institution can answer "who does what, with which tools, by what
workflow, when" without hesitation; *leading* = established plus measurable evidence of
effect (published metrics, external audit or peer benchmarking, a documented improvement
cycle).

**Honest self-assessment worth noting:** the report concedes that on Dimension 2 and
Dimension 4, *no institution in the 38-university sample has reached "leading"* as of 2026,
and that Dimension 5 "leading" is definitionally unreachable at publication because nobody
has yet scored themselves against a framework that had just been published. This is unusual
candour for a document of this genre and is a point in its favour.

Worked examples: UCL (leading on D1, *nascent* on D3 — no published procurement standard),
Heidelberg Graduate Academy (the most consistently mature single institution in the sample),
and an unnamed composite US Ivy-Plus institution (nascent-to-absent across the board
centrally, with substantial school-level activity). The structural point the examples carry:
maturity is rarely uniform, and **the weakest dimension constrains the whole** — an institution
leading on human-in-the-loop discipline but absent on tooling cannot realise that discipline
at scale, because the tools its researchers actually use don't support it.

### Part 5 — Recommendations, by audience tier

Five tiers, each with three to five concrete actions naming the dimension targeted and the
maturity move represented. The ones most transferable to an AMC:

- **Executive research leadership:** appoint a named owner for the benchmarking cycle with a
  published cadence; publish preparation status for applicable regulatory deadlines;
  commission and publish a dimensional profile; **fund the constrained dimensions** (D3 needs
  the largest *upfront* investment because procurement gates and FRIA infrastructure are
  organisationally consequential; D4 needs the largest *sustained* investment because
  curriculum, supervisor training, and examiner training are recurring annual costs).
- **Faculty deans:** publish faculty-level task rules anchored to the institutional
  framework (faculty rules may be more specific, must not be inconsistent); map the tools
  researchers *actually* use against the six-property test, because researchers will surface
  tools the procurement gate hasn't considered.
- **Graduate school deans:** publish a graduate-school policy *with examiner-side rules*;
  codify the six competencies as curriculum outcomes; **train supervisors** ("a candidate
  cannot acquire competencies that the supervisor does not model" — the report names
  supervisor training as the binding constraint on Dimension 4 at scale); train examiners.
- **Research-integrity committees:** build an adjudication framework distinguishing four case
  types — *undisclosed* AI use, *disclosed-but-unverified* AI use, *AI-fabricated content*
  (citations, data, images), and *AI-assisted misconduct* — each requiring a different
  evidentiary standard and remedy. The committee that hasn't made this distinction either
  over-applies plagiarism rules to what is really a research-integrity case, or under-applies
  them to what is really a fabrication case.

### Appendices worth knowing about

- **Appendix A** — the full maturity grid, every cell expanded.
- **Appendix C** — an **eleven-class taxonomy of AI tool classes**, each with what it is good
  for, what it fails at, and what a responsible-by-construction implementation looks like:
  LLM-as-search, LLM-as-co-author, LLM-as-validator, LLM-as-tutor, LLM-as-coder,
  RAG-anchored research assistants, automated literature-synthesis tools, AlphaFold-class
  specialised assistants, image/figure generation, voice/transcription, and AI-detection.
  This is the appendix with the most reusable specifics for the book (see §5 below).
- **Appendix G** — a **labour-vs-judgement task taxonomy**: ~21 named research tasks each
  classed as labour or judgement with a policy note. Includes four "judgement (humans only)"
  entries — examiner judgement at viva, supervisor approval of an analysis chapter,
  co-authorship determination, peer-review decision — and one "judgement (prohibited)":
  image/figure generation for data presentation.

Two operational notes attached to Appendix G that are easy to miss and worth preserving in
any prose about it: *"the labour class is not a permission slip"* (labour-class AI use still
requires the institutional disclosure standard), and *"the judgement class is not a
prohibition on AI tools touching the task; it is a prohibition on AI substituting for the
human judgement."* The distinction is AI-as-scaffold-for-human-decision versus
AI-as-decision-maker.

---

## 4. Where this fits in the book

### The gap it fills is real and it is a hole in the book right now

`grep -inE "PhD|doctoral|graduate student|postdoc|thesis|dissertation" *.qmd` returns **no
substantive hits in any chapter**. The only matches are incidental words in
`appendix_workflow.qmd`. For a book titled *Implementing AI in Academic Medicine*, addressed
to academic medical centers, the research-training pipeline — PhD students, MD-PhD students,
postdocs, and the faculty who supervise them — is currently absent.

`resources_research.qmd` addresses "investigators" throughout, and its two starter projects
(an institutional literature-review toolkit, a secure AI gateway) are both aimed at
independent faculty researchers. The chapter has nothing on trainees, supervision, or
qualifying/thesis examination. This is the single strongest argument for taking issue #2
seriously: the resource does not just add a citation, it names a constituency the book has
not yet addressed.

Note also that `resources_education.qmd` covers *health professions education* (medical
students, residents) and `workforce.qmd` covers *clinical and administrative staff literacy*.
Neither covers research trainees. The graduate/postdoctoral research pipeline falls in the
seam between the education chapter and the research chapter, and nothing currently occupies it.

### Recommended placement: `resources_research.qmd`, as a new section

**Primary recommendation:** a new section in `resources_research.qmd` placed **after
"Research Integrity Risks" (§sec-research-risks) and before "Human Subjects, Privacy, and
Secure Infrastructure" (§sec-research-privacy)**, provisionally titled something like
"Training the Next Generation of Investigators" or "The Research Trainee Gap."

Rationale for that specific slot:
- The integrity-risks section already establishes citation hallucination and AI-assisted data
  fabrication as institutional problems. The natural next question is *who teaches people not
  to do this, and when* — which is exactly Zyphur's Dimension 4.
- Placing it before the privacy/infrastructure section keeps the chapter's existing movement
  from *practice* → *risk* → *infrastructure* intact, with training slotted as the second
  half of the risk response rather than as an afterthought.
- The chapter's existing policy table (`@tbl-research-policies`) covers journals and US
  funders. The Zyphur material extends the same table's logic internationally and to the
  institutional layer, which the table currently omits entirely.

**Secondary placement (smaller, one paragraph):** `workforce.qmd`, in "The Four-Tier
Competency Model" or immediately after it. The book's four tiers (consumer / translator /
developer / governor, after Ng et al.) are a taxonomy of **who**; Zyphur's six competencies
are a taxonomy of **what**. They are orthogonal and compose cleanly. The book's tier model
currently has no home for a bench or clinical investigator using AI in the conduct of
research — such a person is a "consumer" by the book's definition, but consumer-tier literacy
as the chapter defines it (know what the tool does, know its limits, document your use) is
plainly insufficient for someone whose AI use enters the published record. That is a genuine
gap in the book's own model, and Zyphur's Dimension 4 is the thing that fills it.

**Do not put it in `ethics.qmd`.** That chapter is structurally about *clinical* AI —
algorithmic bias in patient care, Section 1557, consent, liability, standard of care. Its one
research-adjacent passage (the IP/authorship section) already covers ICMJE and AI authorship
and would only duplicate. Research-training competency is not an ethics-chapter topic in this
book's architecture.

### Points of connection with what the book already argues

- **The book already makes the "verification is the researcher's job" argument.**
  `resources_research.qmd` §sec-research-risks: "any AI tool used for literature-related
  tasks must have its output verified before it enters a manuscript or grant application...
  investigators are expected to have read the papers they cite regardless of how they found
  them." Zyphur's Competency 1 is the same claim, promoted from a norm to a named,
  teachable, examinable curriculum outcome. That is an escalation the book can endorse.
- **The book already treats AI-assisted fabrication as misconduct.** Same section: "an
  investigator who asks an AI model to 'fill in' missing data points... is committing data
  fabrication in exactly the same way as manual fabrication." Zyphur's four-case adjudication
  taxonomy (§5.4) gives the research-integrity office the operational differentiation the
  book asserts but does not build out.
- **The book already argues for enterprise-tenanted infrastructure.** The Secure AI Gateway
  starter project maps almost exactly onto Zyphur's Dimension 3 properties 2, 4, and 5 (data
  residency / training-on-input, reproducibility at a known model version, auditability via
  session logs). The book argues this from HIPAA and BAA obligations; Zyphur argues it from
  research-confidentiality and reproducibility obligations. **Two independent lines of
  argument reaching the same infrastructure conclusion is a stronger case than either
  alone**, and that convergence is worth stating explicitly in prose.
- **The book already invokes the reproducibility crisis.** Baker 2016 is cited in both
  `resources_research.qmd` and `evaluation_monitoring.qmd`. Zyphur's framing — that
  prompt selection is a researcher degree of freedom of the same kind as analytic choice, and
  that the discipline developed against p-hacking is the right discipline to apply — is the
  most valuable single idea in the report for this book's audience, because it connects AI
  governance to a literature biomedical researchers already accept.
- **The book's "human-in-the-loop theater" argument has a research analogue.** `ethics.qmd`
  describes physicians reviewing AI denial recommendations at 1.2 seconds per claim: "That is
  not human-in-the-loop review. It is human-in-the-loop theater." Zyphur's Dimension 1
  failure mode — "we used AI to validate our findings," offered without the disciplines
  Dimensions 2 and 4 require — is the identical structure in the research setting. The
  cross-reference is available and would strengthen both chapters.

### Points of tension — and one place the book should push back

- **The US finding needs careful handling.** "All eight US institutions are the weakest in the
  world sample" is a genuinely arresting hook for a US AMC readership, and the book should use
  it. But it should be reported with the report's own caveat attached: the classification is of
  **central university policy**, and US doctoral governance is genuinely devolved. AMCs are the
  extreme case of this — in most US universities the medical school's graduate programs, the
  graduate school, and the health-system research enterprise are separately governed, so a
  "thin central policy" finding may be measuring US organisational structure as much as US
  institutional neglect. The honest version of the claim is that the US sample lacks a *central*
  articulation, not that US institutions are doing nothing. The book's voice — honest about what
  is hard, no excuses for delay — can hold both: the devolution is a real explanation *and* it
  is not a defence, because devolution is precisely what produces the uneven trainee experience
  the chapter should be worried about.
- **The report is about universities, not AMCs, and not about human subjects.** It contains
  nothing on HIPAA, IRB, PHI, BAAs, honest-broker processes, or clinical research. This is
  good news for the book — the material complements rather than duplicates
  `resources_research.qmd` §sec-research-privacy — but it means the report cannot be cited for
  anything on the regulated-data side, and the book will have to do the AMC translation itself.
- **The maturity grid should be cited, not imported.** The book's style is prose-only, no
  bullet lists, and it already has a structural framework chapter (`framework.qmd`) with its
  own matrix. Importing a second 5×4 grid would compete with the book's own scaffolding, and
  the CC BY-NC-ND license forbids derivative adaptations of the grid in any case (see §6).
  Reference it as an instrument an institution can pick up and run; do not reproduce or adapt it.
- **The commercial-interest discount applies to the recommendations, not the diagnosis.** The
  diagnosis (universities lag; policies stop at plagiarism; Vitae missed AI entirely) is
  checkable in principle and independently plausible. The recommendation (fund recurring
  training) is where the author's commercial interest points. Prose that leans on the diagnosis
  and treats the recommendations as one reasonable option among several is the defensible posture.

---

## 5. The findings most worth discussing in prose

Ranked by value to this book's argument.

1. **The category error.** "The institutional move to treat AI use as a plagiarism question is
   a category error driven by surface mimicry rather than underlying function." The supporting
   analogy is the report's best rhetorical move and lands well in a biomedical setting: "No one
   treats SPSS output as plagiarism when it appears in a manuscript. No one treats
   Whisper-transcribed interviews as fraudulent so long as the researcher verifies them against
   the audio." The right question about a research tool is not *who wrote the output* but
   *whether the use was ethical, valid, reproducible, and transparent*. This reframes AI
   governance in research from an academic-integrity problem (a dean-of-students problem) to a
   research-integrity problem (a research-integrity-officer problem) — a jurisdictional shift
   with real consequences for who at an AMC owns the issue.

2. **The response-speed gradient, and what it proves.** Publishers standardised in ten weeks;
   funders took three years and did not converge; universities mostly haven't moved past
   plagiarism. The report's use of this is sharper than a complaint: the ten-week publisher wave
   is an **existence proof** that sector-scale convergence is achievable when a sector decides to
   act, which removes "coordination is too hard" as an excuse. That framing is a close match for
   the book's stated voice — honest about difficulty, no excuses for delay.

3. **Prompt selection as a researcher degree of freedom.** The p-hacking analogy (Simmons,
   Nelson & Simonsohn 2011) is the report's most useful contribution for a biomedical audience,
   because it translates an unfamiliar AI risk into a familiar methodological one and points at
   a discipline the field already has: pre-registration of prompts and analysis plans, plus
   prompt-sensitivity testing. The supporting statistic ("LLM hacking occurs in 31–50% of cases
   even with highly capable models," from a systematic analysis of 13 million LLM-generated
   labels across 18 models) is striking but rests on an **unrefereed preprint** — see §7.

4. **The disclosure gap, quantified.** BMJ's structured disclosure field registered a **5.7%
   disclosure rate across 25,114 submissions to 49 journals** over seven months. Set against
   surveys showing AI assistance is now embedded in literature review, coding, and drafting at
   scale, this is the cleanest available measurement of the distance between how widely AI is
   used and how rarely it is declared. It is a better statistic for the book than the vaguer
   "AI use is widespread" claims, and it is BMJ — a source this book's readers trust.

5. **Vitae's 2025 refresh omitted AI entirely.** The canonical Anglophone researcher-development
   framework had an active refresh cycle in 2025 and still did not surface AI as a competency.
   The report is right that the absence is itself the finding: this is not a framework that
   hadn't got around to it, it is a framework that looked and didn't see it. For a US AMC reader
   the transferable question is whether AAMC's and AMIA's competency frameworks — which
   `workforce.qmd` already covers, and which are genuinely stronger here — extend to research
   trainees or stop at the clinical workforce. **That is an open question the book could pose and
   is well positioned to answer** (see §8).

6. **Supervisor training as the binding constraint.** "A candidate cannot acquire competencies
   that the supervisor does not model." This is the same structural claim `workforce.qmd`
   already makes in "The Faculty Development Gap" — that faculty cannot teach AI literacy they
   do not have — arriving from the research-training side. The convergence is worth naming.

7. **The four-case adjudication taxonomy** (undisclosed / disclosed-but-unverified /
   AI-fabricated content / AI-assisted misconduct). Immediately actionable for an AMC research
   integrity office, and nothing equivalent currently exists in the book.

---

## 6. Licensing and reuse constraints

**CC BY-NC-ND 4.0.** This is the most restrictive of the common CC licenses and it has direct
consequences for how the book can use the material:

- **Quotation is fine.** Short quotations with attribution are fair use / fair dealing
  independent of the license, and the book's citation practice already does this.
- **Reproducing the maturity grid or the Appendix G task taxonomy as tables would be a
  derivative** if adapted, and arguably a redistribution of a substantial portion if copied
  verbatim. **Recommendation: do not reproduce either table.** Describe them in prose, cite
  the report, and point the reader to it. This aligns with the book's no-bullet-lists,
  prose-only style anyway.
- **The book itself** is published under its own license (see `LICENSE` in the repo) — worth
  the author confirming there is no compatibility issue if any substantial excerpt were
  included. Discussing and citing creates no issue; excerpting a table might.
- **NC clause:** the book is freely published, so non-commercial use is not in question on
  current facts.

---

## 7. Caution — the report's empirical base is withheld, and the report says otherwise

This is the most important finding in this dossier and the author should know it before
writing prose.

**Appendix E of the report** states that the evidence rests on eight primary-source dossiers
in the project's `research/` directory, and that "readers seeking the underlying evidence base
will find the dossiers in the same git repository as the report itself, with each entry naming
the primary-source URL and its access status as of the snapshot date."

**They are not in the repository.** A full recursive listing of the repo tree
(`api.github.com/repos/mzyphur/responsible-ai-in-research-training/git/trees/main?recursive=1`,
retrieved 2026-08-05) contains no `research/` directory and no dossier files. The complete
tree is: `.gitignore`, `CHANGELOG.md`, `CITATION.cff`, `LICENSE`, `README.md`, `SECURITY.md`,
`VERSION`, `requirements.txt`, `responsible-ai.png`, plus `assets/`, `charts/`, `docs/`,
`drafts/report.md`, and `final/`.

**And the README says they never will be.** It states three times that the dossiers are
withheld by design:

> "The dossiers are working notes retained privately by Instats" (README line 49)
>
> "Working files are retained privately by Instats." (line 51)
>
> "Working notes (evidence dossiers, review files, and launch material) are retained
> privately by Instats and are not part of this public repository." (line 128)

So the report's own body text tells readers the evidence base is in the repo, while the repo's
README tells them it is deliberately withheld. **The two documents contradict each other**,
and a reader who follows Appendix E's instruction will find nothing and receive no explanation
unless they happen to read the README. Meanwhile the repo badges itself
`evidence: public audit package` and its footer reads "Published openly so any reader can
audit the evidence and the framework" — claims the withholding does not support.

This is a sharper problem than simple sloppiness, and it is worth the book's author knowing
precisely: the withholding is a deliberate business decision (working notes are an asset), the
README discloses it, and the report body does not.

Consequences:

- Every footnote of the form `[^university_dossier]`, `[^funder_dossier]`,
  `[^publisher_dossier]`, `[^framework_dossier]`, `[^tool_taxonomy_dossier]`, `[^dossier_7]`,
  and `[^class_d_dossier]` points to a file the reader cannot obtain. **This includes the
  footnote backing the report's headline claim** — the A=4 / B=11 / C=17 / D=6 classification
  of the 38 universities.
- The "only six of thirty-eight" statistic — the number in the abstract, the cover, the
  executive summary, the conclusion, and all of the report's own promotion — is therefore
  **not independently checkable**. The named institutions are given, which helps, but the
  classification criteria as applied to each institution are not, and **the coding rule
  itself ("extends past research integrity into AI literacy and valid research practices")
  is the author's own construction**, applied by the author, with no stated inter-rater
  procedure. A different coder could plausibly reach a different count.
- This sits awkwardly against the report's own thesis. Its definition of responsible research
  practice requires that work be *reproducible* — "another researcher with access to the same
  inputs... can reproduce the output to a stated tolerance" — and *transparent*. Its central
  empirical claim currently meets neither standard.

**Recommended handling in the book's prose:** cite the report for its **framework, its
taxonomy, and its argument**, which stand on their own merits and are the genuinely valuable
contribution. Where the "six of thirty-eight" figure is used, attribute it explicitly to the
report as the report's own count rather than stating it in the book's voice, and note that
the underlying classification has not been published. This is consistent with the book's Tier
1 discipline (verified live URL, which the report has) while being honest about what the
citation does and does not support.

Two smaller reliability notes:

- **A cited URL has already rotted.** The report's `[^reglab_2024]` footnote points to
  `https://reglab.stanford.edu/publications/hallucinating-law/`, which **404s as of
  2026-08-05** — less than three months after the report's 2026-05-18 snapshot date. The
  underlying work is fine and has since been peer-reviewed (see §8), so this is a citation
  hygiene note rather than a substantive problem, but it is a useful reminder for the book's
  own Tier 1 practice.
- **Two claims carry no primary source at all.** The arXiv "72 per cent increase" figure
  (§1.1) is footnoted only to the unpublished internal dossier. The "MIT January 2025:
  hallucinating models are around 34 per cent more likely to use confidence-cuing language"
  claim in Appendix C, Class 3, has **no footnote whatsoever**. Neither should be repeated in
  the book.

---

## 8. Candidate citations

### Tier 1 — the resource itself (verified live 2026-08-05)

Suggested BibTeX key: `Zyphur2026-raircompetency` (or `Zyphur2026-responsibleai`).

```
@techreport{Zyphur2026-raircompetency,
  author      = {Zyphur, Michael J.},
  title       = {Responsible {AI} in Academic Research: A Competency Framework for
                 Research Training},
  institution = {Instats},
  series      = {Instats Policy Series},
  number      = {INSTATS-PS-2026-04},
  year        = {2026},
  month       = {5},
  doi         = {10.61700/t31oy23grr},
  url         = {https://mzyphur.github.io/responsible-ai-in-research-training/},
  note        = {Version 1.2.5, released 2026-05-20; repository VERSION file reads 1.2.9.
                 Licensed CC BY-NC-ND 4.0. Accessed 2026-08-05}
}
```

Recommend including the version and access date in the `note` field, because the document is
actively versioned and the DOI does not pin a version.

### Tier 2 — peer-reviewed papers cited by the report, verified against PubMed this session

All four verified 2026-08-05 via PubMed. Per project discipline, DOIs below are confirmed, not
inferred.

| Candidate | Verified details | Why the book might want it |
|---|---|---|
| **Walters & Wilder 2023** | "Fabrication and errors in the bibliographic citations generated by ChatGPT." *Sci Rep* 13:14045. PMID 37679503. DOI [10.1038/s41598-023-41032-5](https://doi.org/10.1038/s41598-023-41032-5). **Confirmed figures:** 636 citations across 84 papers on 42 topics; **55% of GPT-3.5 citations fabricated, 18% of GPT-4**; among non-fabricated, 43% (GPT-3.5) and 24% (GPT-4) had substantive citation errors. | The book's §sec-research-risks currently cites a 30–90% range to a source that does not support it (see below). This is a clean, well-designed, general-purpose citation-fabrication baseline. Suggested key: `Walters2023-fabrication`. |
| **Blau et al. 2024** | "Protecting scientific integrity in an age of generative AI." *PNAS* 121(22):e2407886121. PMID 38771193. DOI [10.1073/pnas.2407886121](https://doi.org/10.1073/pnas.2407886121). Editorial. **Author list is the reason to care:** Marcia McNutt, Eric Horvitz, Barbara Grosz, Saul Perlmutter, Vinton Cerf, Kathleen Hall Jamieson, Tom Mitchell, William Press, Jeannette Wing, Alex John London, Robin Lovell-Badge, Martha Minow, and others. | **Strongest single Tier 2 candidate from this dossier.** A US National Academies-convened five-principle statement (transparent disclosure and attribution; verification of AI-generated content and analyses; documentation of AI-generated data; ethics and equity; continuous monitoring, oversight, and public engagement). Carries more weight with this book's audience than the Zyphur report itself, and the book does not currently cite it. Suggested key: `Blau2024-integrity`. |
| **Terwilliger et al. 2024** | "AlphaFold predictions are valuable hypotheses and accelerate but do not replace experimental structure determination." *Nat Methods* 21(1):110–116. PMID 38036854. DOI [10.1038/s41592-023-02087-4](https://doi.org/10.1038/s41592-023-02087-4). | Supports the "uncertainty reporting as a first-class output" argument (pLDDT/PAE/ipTM), and is a rare case of a widely-used biomedical AI tool that reports calibrated confidence. Useful in `resources_research.qmd` or `evaluation_monitoring.qmd`. Optional. Suggested key: `Terwilliger2024-alphafold`. |
| **Chelli et al. 2024** | *Already in `references.bib` as `Chelli2024-llm-sr`.* PMID 38776130. DOI [10.2196/53164](https://doi.org/10.2196/53164). **Confirmed figures:** precision GPT-3.5 9.4%, GPT-4 13.4%, Bard 0%; recall 11.9% / 13.7% / 0%; **hallucination 39.6% / 28.6% / 91.4%**. 11 systematic reviews, 33 prompts, 471 references. | See the correction note below — the book currently under-uses this paper and slightly misdescribes it. |

### Tier 2 — cited by the report, worth considering, verified outside PubMed

- **Magesh, Surani, Dahl, Suzgun, Manning & Ho (2025).** "Hallucination-Free? Assessing the
  Reliability of Leading AI Legal Research Tools." *Journal of Empirical Legal Studies*.
  DOI 10.1111/jels.12413 (arXiv preprint 2405.20362). The report cites the 2024 Stanford
  RegLab preprint page, **which now 404s**; the peer-reviewed version exists and should be
  cited instead. Preregistered evaluation finding **17–33% hallucination** in three
  RAG-anchored commercial legal research tools despite "hallucination-free" vendor marketing.
  **This is the single best available citation for the claim that retrieval augmentation
  reduces but does not eliminate hallucination** — directly relevant to any AMC evaluating a
  RAG-based clinical or literature tool, and to `evaluation_monitoring.qmd`'s vendor-claims
  discussion. *Verification status: journal, authors, and DOI confirmed via search against
  the Wiley listing; the DOI returned HTTP 403 to a command-line fetch, which is Wiley's
  bot-blocking rather than a bad DOI. Resolve it in a browser before adding.*
- **Koenecke et al. (2024).** "Careless Whisper: Speech-to-Text Hallucination Harms." *ACM
  FAccT '24*. DOI 10.1145/3630106.3658996; arXiv 2402.08021 (arXiv URL verified live
  2026-08-05). Roughly 1% of Whisper transcriptions contained entirely hallucinated phrases,
  with documented harms including invented medications and violent content, and elevated rates
  for aphasic speakers and speech with disfluencies. **Highly relevant to the book beyond the
  research chapter** — ambient documentation is a core topic in `professional_wellness.qmd`
  and `resources_clinical.qmd`, and this is peer-reviewed evidence of speech-to-text
  hallucination harms in exactly the population an AMC serves. *Verification status: arXiv
  URL live and paper confirmed as FAccT '24 via multiple independent sources; ACM DOI
  returned 403 to a command-line fetch (ACM bot-blocking, not a bad DOI).*
- **Huang et al. (2024).** "Large Language Models Cannot Self-Correct Reasoning Yet." *TACL*
  12. DOI 10.1162/tacl_a_00713. Underpins the "same-model self-critique doesn't work" claim.
  *Unverified this session beyond the report's own footnote; MIT Press DOI also 403s to
  command-line fetch. Verify in a browser.*

> **Note on the 403s:** Wiley, ACM, and MIT Press all reject command-line HTTP clients. A 403
> from `curl` on those DOIs is a bot block and is **not** evidence the DOI is wrong — unlike
> the Stanford RegLab 404 in §7, which is a genuinely dead URL. Do not treat these as
> equivalent when resolving citations.
- **Simmons, Nelson & Simonsohn (2011).** "False-Positive Psychology." *Psychological Science*.
  The p-hacking anchor for the prompt-as-degree-of-freedom argument. Well known, easily
  verified, and would let the book make the analogy in its own voice rather than borrowing
  Zyphur's. *Unverified this session — but this is a canonical paper.*

### Flagged — do NOT cite without independent verification

- **"LLM hacking occurs in 31–50% of cases"** — arXiv 2509.08825 (URL live). **Unrefereed
  preprint.** The finding is striking and the scale claimed (13 million LLM-generated labels,
  18 models) is large, but the book's Tier 2 discipline is peer review. If the author wants
  the claim, it should be attributed as a preprint finding, in-text, with that status stated.
- **arXiv "72% increase" in possibly-AI-written submissions** — no primary source anywhere in
  the report. Do not use.
- **"MIT January 2025: hallucinating models ~34% more likely to use confidence-cuing
  language"** — no footnote at all in the report. Do not use.
- **The Zyphur report's own institutional counts** — usable, but attribute to the report
  rather than asserting in the book's voice (see §7).

### Tier 1 primary sources the report surfaces that the book may want directly

These are the report's most useful pointers, all with live URLs in its footnotes:

- **NIH NOT-OD-25-132** (applicant-side originality bar, effective 25 Sep 2025 receipt date).
  The book currently cites only NOT-OD-23-149 (the peer-review prohibition) and describes NIH
  grant-application policy in general terms — "NIH has not prohibited the use of AI in
  preparing grant applications, but has issued guidance on disclosure"
  (`resources_research.qmd` §sec-research-integrity). **NOT-OD-25-132 is stronger than
  "guidance on disclosure": it is a substantive originality bar with a stated consequence
  (such applications "will not be considered by NIH").** This is arguably the single most
  actionable update the issue surfaces for a US AMC readership, and it may warrant a small
  revision to that paragraph and to `@tbl-research-policies` independent of anything else.
  URL: https://grants.nih.gov/news-events/nih-extramural-nexus-news/2025/07/apply-responsibly-policy-on-ai-use-in-nih-research-applications-and-limiting-submissions-per-pi
- **UKRI AI Research and Innovation Strategic Framework** (19 Feb 2026) — the £117m / twelve
  AI CDTs commitment; the only funder in the sample investing in AI literacy in funded
  training environments. Useful contrast case for a US audience.
- **CGS–INRS Global Action Agenda** (13 Nov 2025) — the Council of Graduate Schools is the
  US body whose remit actually covers this. If the book wants a US-native institutional
  anchor for research-training competency, this is it.
  URL: https://cgsnet.org/press-releases/new-action-agenda-for-using-ai-to-improve-graduate-education-and-workforce-preparation
- **UCL Doctoral School, "Transparency on Authorship and Generative AI in Doctoral
  Research"** (URL verified live 2026-08-05) — the most concrete Class D exemplar, and the
  easiest for a reader to actually go look at.
- **EU AI Act Art. 27 FRIA obligation, effective 2 Aug 2026** — Annex III §3 covers
  admissions, learning-outcome evaluation, education-level assignment, and proctoring. Note
  this deadline **passed three days before this dossier's date**. Relevant to
  `regulatory_landscape.qmd` if it does not already cover the education-sector high-risk
  classification.

---

## 9. Correction opportunities in `resources_research.qmd` found while cross-checking

These are independent of issue #2 but surfaced from verifying the same literature. Flagging
rather than fixing, per the research-only scope.

**1. `resources_research.qmd` line 86 appears to miscite Gao 2023.** The chapter states:
"Studies have found hallucination rates in AI-generated reference lists ranging from 30% to
over 90%... [@Gao2023-chatgpt-abstracts]." Gao et al. 2023 (*npj Digit Med* 6:75, PMID
37100871, DOI [10.1038/s41746-023-00819-6](https://doi.org/10.1038/s41746-023-00819-6)) is a
study of **AI-generated abstracts** — detection by the GPT-2 Output Detector (AUROC 0.94),
plagiarism-detector scores, and blinded human review. It reports nothing about
reference-list hallucination rates. The 30–90% range it is attached to matches **Chelli 2024**
almost exactly (28.6% GPT-4 to 91.4% Bard), and Chelli is already in `references.bib`.
Recommend re-pointing that sentence to `Chelli2024-llm-sr`, optionally adding
`Walters2023-fabrication`.

**2. Line 31's characterisation of Gao 2023 is half right.** "AI-generated medical abstracts
were indistinguishable from real abstracts by human reviewers more than 30% of the time" is
supported — blinded reviewers correctly identified 68% of generated abstracts, so ~32% were
missed. But "**and by automated detectors more than 60% of the time**" is **not** supported by
the paper: the AI output detector achieved AUROC 0.94 and scored generated abstracts at a
median 99.98% "fake" versus 0.02% for originals. The detector performed *well*. The 60% figure
may be a garbled recollection of the plagiarism-detector result (generated abstracts scored
*low* on plagiarism detection, i.e. they pass plagiarism checks — which is a different and
still interesting point). Recommend verifying against the full text and either correcting or
dropping the detector clause.

**3. Line 31's characterisation of Chelli 2024 conflates two metrics.** The chapter says the
study "found approximately 13% precision in literature recall." Precision and recall are
distinct measures and the paper reports both separately: GPT-4 precision 13.4%, recall 13.7%.
"Precision in literature recall" reads as a conflation. More substantively, the chapter leaves
the paper's **headline hallucination figures** (39.6% / 28.6% / 91.4%) unused, and those are
the numbers the book actually wants two sections later at line 86. Consolidating the Chelli
material would fix both problems at once.

---

## 10. Suggested angle for the "findings and discussion" prose

The framing that does the most work for this book, in one sentence: **the AMC has been
governing AI as a clinical-deployment problem and a faculty-productivity problem, and has
not yet governed it as a research-training problem — and the training pipeline is where the
next twenty years of research integrity is being set.**

A workable arc for a new section in `resources_research.qmd`:

1. **Open on the trainee.** The chapter to that point has addressed the independent
   investigator. But a first-year PhD student in a translational lab, or an MD-PhD student
   writing a first-author manuscript, is doing AI-assisted literature work, AI-assisted
   coding, and AI-assisted drafting under a supervisor who may have less AI experience than
   they do. Nobody has told either of them what the standard is. That is the actual state of
   most AMCs in 2026.

2. **Name the category error and make the jurisdictional point.** Treating this as plagiarism
   puts it in the dean of students' office. Treating it as research integrity puts it in the
   research integrity officer's office, alongside fabrication and falsification, where the
   book has already argued AI-assisted data fabrication belongs. The SPSS and Whisper
   analogies carry this cleanly and in a register biomedical readers will recognise. This is
   the highest-value paragraph in the section.

3. **Use the evidence gradient, with the US finding, honestly.** Publishers in ten weeks,
   funders over three years, universities mostly still at the plagiarism ceiling — and the US
   research universities, which host much of the AI research, are the weakest cluster in the
   world sample. Then immediately give the honest caveat: US doctoral governance is devolved,
   AMCs especially so, and a thin central policy is partly a measurement artifact of American
   organisational structure. Then refuse the excuse: devolution explains the finding and does
   not answer it, because a trainee's experience should not depend on which school their
   program happens to sit in.

4. **Give the reader the competencies, in prose.** Citation verification. Reporting model
   version and parameters the way one reports a reagent lot or an instrument setting.
   Prompt selection as a researcher degree of freedom — the p-hacking analogy is the sentence
   that will land hardest with this readership, and it is worth spending words on. Running
   adversarial critique through a *different* model family. Treating agreement as a
   sycophancy signal rather than a validation signal. This is where the book adds value over
   the report, because these translate into biomedical practice more naturally than into the
   organisational-research setting Zyphur writes from.

5. **Connect to the infrastructure the chapter already recommends.** The Secure AI Gateway
   starter project already logs usage by user and project. That log is the reproducibility
   record — the model version, the prompt, the parameters — that a methods section needs and
   that a research integrity investigation would need. The book argued for the gateway from
   HIPAA; the research-training case arrives at the same place from reproducibility. Saying
   so explicitly makes the existing recommendation stronger and costs a sentence.

6. **Land on the supervisor.** "A candidate cannot acquire competencies that the supervisor
   does not model" is the same structural claim `workforce.qmd` makes about faculty
   development, arriving from a different direction. The convergence is the argument: the
   faculty development gap is not only a clinical-education problem, it is a research-integrity
   problem, and an AMC that funds one and not the other has not understood the shape of the
   thing.

**On voice:** the report is written in British English, uses heavy em-dash construction, and
is fond of the "X is not Y; it is Z" antithesis. All three run against this book's style
constraints. Quote it sparingly and paraphrase into the book's register. The two phrases
genuinely worth quoting are the four-way standard ("ethical, valid, reproducible, and
transparent" — with the gloss that "no three substitute for the fourth") and "a policy
document is a row in the competency grid, not the grid itself."

---

## 11. Open questions

1. ~~Do the AAMC and AMIA competency frameworks reach research trainees?~~ **Checked this
   session — and the answer is a finding, not a question. See §12 below.**
2. **Does the CGS–INRS Global Action Agenda (Nov 2025) fill the gap for US institutions?**
   It is the US-native body with the right remit. If it is principle-level only — which the
   report asserts — then the US gap is real and the book can say so with a US-native source.
3. **What do AMC-affiliated graduate schools actually publish?** The report samples
   university-central policy at eight US institutions and none of them AMC-specific. A quick
   check of a handful of AMC graduate schools (Colorado Anschutz, Hopkins, UCSF, Mayo Clinic
   Graduate School, Penn, Vanderbilt) would let the book make an AMC-specific claim rather
   than inheriting a general-university one. This is a small research task with a
   disproportionate payoff — it would make the section's central empirical claim the book's
   own rather than borrowed, and would sidestep the unpublished-dossier problem in §7 entirely.
4. **Is there an ACGME or LCME hook for research training?** `workforce.qmd` documents the
   2025 accreditor mandate for clinical education. Is there an equivalent lever for PhD
   programs in the biomedical sciences — through, say, NIH T32 training grant requirements?
   A T32 hook would be the strongest possible "why now" for a US AMC audience, because it
   attaches the obligation to money the institution already receives.
5. **Should the book cite Blau et al. 2024 independently of the Zyphur report?** Recommendation:
   yes, regardless of what happens with issue #2. A PNAS statement on generative AI and
   scientific integrity carrying McNutt, Horvitz, Grosz, and Perlmutter is a natural fit for
   this book and its absence from `references.bib` is a gap.
6. **How should the book handle a resource that may be updated after publication?** The report
   is at version 1.2.9 and rising. If the six-of-thirty-eight number changes in a later
   version, prose that states it in the book's voice becomes wrong. This is an argument for
   the attribution-with-version approach recommended in §7 and §8.

---

## 12. The US parallel to the Vitae finding — verified, and it is the book's own

Zyphur's sharpest single finding is that Vitae's 2025 refresh of the UK's canonical
researcher-development framework did not treat AI as a competency at all. The obvious
question for a US AMC readership is whether the US equivalents do any better. I checked
(2026-08-05, https://www.aamc.org/about-us/medical-education/ai-competencies):

**The AAMC's *AI Competencies Across the Learning Continuum* is scoped to undergraduate,
graduate, and continuing *medical* education — UME, GME, and CME. Medical students,
residents, and practicing physicians. The page makes no mention of PhD students, biomedical
research training programs, or research trainees.**

The word "graduate" in the framework's scope means **graduate medical education, i.e.
residency** — not graduate research education. That distinction is easy to miss and it is
precisely where the gap hides: a reader scanning "undergraduate, graduate, and continuing"
would reasonably assume PhD training is covered. It is not.

This is the exact same shape as the Vitae finding, on the US side, in the framework this book
already cites and this book's readers already use. **It is original to this book and it is
stronger than anything borrowed from the Zyphur report**, because it is directly verifiable,
it concerns a body the readership belongs to, and it does not depend on the unpublished
evidence base described in §7. Recommend making this the empirical anchor of the new section
rather than the six-of-thirty-eight statistic.

### Related accuracy flag in `workforce.qmd`

The same check surfaced a probable factual issue. `workforce.qmd` currently states:

> "The AAMC's 2025 AI Competencies Across the Learning Continuum, developed through a formal
> Delphi process, provides the national standard for what those competencies should include
> across undergraduate, graduate, and continuing medical education [@AAMC2025-competencies]."

The AAMC page as of 2026-08-05 says the work is **still in development**, with "**target
release of the final report is fall 2026**." Describing it as a 2025 published national
standard appears to be premature. There may be an interim 2025 product (a working-group
report, a draft for comment, or a Macy Foundation announcement) that the citation refers to —
**this should be verified against whatever `AAMC2025-competencies` actually points to in
`references.bib` before the sentence is changed.** But if the final framework is not out, the
sentence overstates its status, and the surrounding paragraph's argument that AI literacy has
moved from voluntary to mandated rests partly on it.

Note that this cuts in the book's favour for the new research-training section: if the US
national competency framework for academic medicine is still unfinished in late 2026 *and*
excludes research trainees by design, the case that AMCs have not governed AI as a
research-training problem is considerably stronger than the Zyphur report alone can make it.

---

## Appendix — files and paths referenced

- Report source (downloaded for this dossier):
  `/private/tmp/claude-502/-Users-davsean-Documents-git-campus-llm-kb/64155ec7-ebf7-4fbb-8267-032d797f2933/scratchpad/report.md`
  (695 lines, ~21,000 words; ephemeral scratchpad — re-download from
  `https://raw.githubusercontent.com/mzyphur/responsible-ai-in-research-training/main/drafts/report.md`
  if needed)
- Book chapters read in full: `/Users/davsean/Documents/git/campus-llm-kb/resources_research.qmd`,
  `/Users/davsean/Documents/git/campus-llm-kb/ethics.qmd`,
  `/Users/davsean/Documents/git/campus-llm-kb/workforce.qmd`
- Bibliography checked: `/Users/davsean/Documents/git/campus-llm-kb/references.bib`
  (existing overlapping keys: `Chelli2024-llm-sr`, `Gao2023-chatgpt-abstracts`,
  `NIST2024-gen600`, `NIH2023-NOT-OD-23-149`, `ICMJE2023-recommendations`,
  `Baker2016-reproducibility`)
- This dossier: `/Users/davsean/Documents/git/campus-llm-kb/_research/dossiers/responsible-ai-research-training.md`
