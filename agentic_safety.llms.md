# 11  Agentic Safety and Guardrails

Published

August 5, 2026

There is a meaningful safety boundary between an AI system that suggests a course of action and one that executes it. On one side of that boundary, a clinician reads the output and decides what to do next; the human is the actor, and the AI is a source of input. On the other side, the AI plans and executes a sequence of steps — placing a message in a patient’s portal, submitting a prior authorization request, updating a medication list — while a human nominally supervises but does not approve each individual action. Most AMC governance frameworks were designed for advisory AI. They ask how to validate a model’s output and how to surface it appropriately in the clinical workflow. They were not designed to govern systems that initiate actions in the world.

That gap matters now because the agentic threshold is being crossed in production deployments rather than in research settings. EHR vendors describe assistants that query clinical data and prepopulate order sets on their own initiative. Prior authorization agents submit benefit determinations to payers without manual triggering. Inbox management tools route, draft, and in some configurations send patient responses. Claims at this level of capability come from product documentation and conference demonstrations rather than from peer-reviewed evaluation, and that asymmetry is itself part of the governance problem: the institution is being asked to supervise behavior for which it has no independent characterization. Ask a vendor what their tool does without a human in the path, get the answer in writing, and treat the written answer as the thing you are governing. The safety failures that arise in these systems are qualitatively different from those that arise when a clinician misreads an AI recommendation. They are faster, harder to trace, and more likely to cascade into downstream harm before anyone notices. This chapter gives AMC clinical and operational leaders the framework for governing these systems before the first incident, not after.

## 11.1 From Advisory to Agentic: The Autonomy Spectrum

It is more useful to think of AI autonomy as a spectrum than as a binary distinction. At the advisory end, the AI generates text and stops — it drafts a clinical note, and the clinician reviews every word before attesting. The human is the sole actor in any consequential sense. Moving along the spectrum, systems begin to initiate actions without per-step human approval: routing a message to a triage queue, flagging a result for follow-up, prefilling a prior authorization form. At the far end, systems take actions that write to authoritative records — the medication list, the order queue, the problem list — based on autonomous reasoning about what the clinical situation requires.

``` mermaid
flowchart LR
    A["**Advisory**\nAmbient scribe\nDrafts only\nHITL: attestation"] --> B["**Semi-Agentic**\nInbox triage\nDrafts + routes\nHITL: periodic review"]
    B --> C["**Autonomous Admin**\nPrior auth agent\nSubmits via API\nHOTL: exception alerts"]
    C --> D["**Fully Agentic**\nMedication reconciliation\nWrites to EHR\nHITL: per-action approval"]

    style A fill:#d4f1d4,stroke:#2d6a2d
    style B fill:#fff3cd,stroke:#856404
    style C fill:#ffe0b2,stroke:#7d4e00
    style D fill:#ffcccc,stroke:#721c24
```

Figure 11.1: The advisory-to-agentic spectrum with current deployed examples and required oversight tier at each level. HITL = human-in-the-loop (approves each action). HOTL = human-on-the-loop (reviews logs after the fact).

The critical observation in [Figure fig-agentic-spectrum](#fig-agentic-spectrum) is that risk is not monotonically increasing along the spectrum. A fully agentic system that writes to the medication list is obviously high-risk. But an autonomous prior authorization agent operating at the “autonomous administrative” level also carries substantial risk: it interprets clinical data, matches it to insurance criteria, and submits a determination on behalf of the institution — all without a clinician reviewing the specific case. When the agent makes an error, the error is already in an external system before anyone looks at it. The delay between the action and its discovery is the relevant safety variable, and it scales with autonomy.

## 11.2 Agentic Failure Modes

Advisory AI fails in familiar ways: a model produces an incorrect output, the clinician reads it, and ideally the clinician catches the error. The human is the circuit breaker. Agentic AI introduces failure modes where the circuit breaker either is not in position to act, or has been trained by experience to defer.

**Cascading errors.** In a multi-agent architecture — a diagnostic agent feeds a recommendation to a scheduling agent, which triggers a prior authorization agent — an error in the first agent propagates through the chain. Each downstream agent treats its input as authoritative, because that is how the system was designed. By the time a human reviews the output, the consequences of the initial error may have ramified across multiple systems and cannot be easily undone.

**Scope creep.** An agent authorized to perform task A may, when the instructions are ambiguous, take action on task B because it appears adjacent or necessary. An inbox triage agent authorized to route messages may, in the course of routing, infer that a result requires follow-up and draft an outreach message the clinician never requested. The agent is not malfunctioning; it is being helpful in a way the governance design did not anticipate.

**Action on stale data.** An agent’s knowledge of the patient context — diagnosis, current medications, recent labs — is as fresh as its last synchronization with the EHR. If that synchronization is minutes or hours old, and the clinical situation has changed in the interval, the agent may take actions that were appropriate for a patient who no longer exists. This is a timing problem rather than a model quality problem, which is what makes it easy to miss in evaluation: it arises whenever an agent operates asynchronously against a live clinical record, and no amount of model improvement addresses it.

**Automation surprise.** The clinician discovers that something happened — a message was sent, a form was submitted, a list was updated — without their explicit direction. The surprise itself is a safety event, independent of whether the action was correct. A clinician who does not understand what actions an agent may take cannot be a reliable overseer of those actions. Automation surprise is the signal that the human oversight model was not designed correctly for the system’s actual autonomy level.

**Sycophancy.** Language models tend to accommodate the user rather than contradict them, converging on the framing of the most recent authoritative input instead of reasoning from the evidence independently. In clinical terms, an agent asked to verify a clinician’s tentative diagnosis may confirm that diagnosis because the clinician proposed it. I am not aware of published work establishing how often this happens in deployed clinical agents, at what magnitude, or whether it survives the guardrails vendors put around it, and an institution should not assume the answer in either direction. The design implication holds either way, and it costs nothing: an agent whose role is explicitly supervisory, as in medication reconciliation or prior authorization review, should not be handed the clinician’s working hypothesis before it forms its own. Ordering matters more than instruction here. Telling a model to be objective is weaker than not showing it the answer.

## 11.3 Human-in-the-Loop Architecture

“Human-in-the-loop” has become a compliance phrase in healthcare AI governance. It appears in policies, vendor contracts, and regulatory guidance as a shorthand for adequate oversight. The problem is that it describes an architectural design choice without specifying what that choice requires. A human who clicks “approve” on an AI-generated order in under five seconds is technically in the loop; they are not, in any meaningful sense, exercising oversight.

The automation bias literature has been describing this failure for two decades, and it has been studied inside clinical decision support rather than only in aviation and process control. A systematic review of 74 studies found that over-reliance on decision support is common, that trust and confidence in the system are among its strongest attitudinal drivers, and that workload, task complexity, and time constraint all make it worse ([Goddard et al. 2012](#ref-Goddard2012-autobias)). The general human-factors account agrees on the mechanism and supplies the two error types worth naming separately: operators miss the errors an automated system fails to flag, and they accept the incorrect recommendations it does present ([Parasuraman and Manzey 2010](#ref-Parasuraman2010-automation)). Both are easy to produce. In a controlled study of 120 medical students prescribing against a simulated system, correct decision support cut missed prescribing errors by roughly 39 percent, but incorrect support increased them by about 33 percent, and just over 65 percent of participants accepted at least one false positive alert ([Lyell et al. 2017](#ref-Lyell2017-eprescribing)). The same tool that helps when it is right hurts by a comparable margin when it is wrong.

A later review complicates the convenient assumption that this is a busyness problem. Automation bias showed up in single-task conditions as well as multitasking ones, and it tracked how hard the recommendation was to verify rather than how loaded the clinician was ([Lyell and Coiera 2017](#ref-Lyell2017-verification)). That is the uncomfortable finding for governance, because it means a quiet clinic and a well-staffed shift do not protect a checkpoint whose underlying judgment is expensive to check. The agentic case is the expensive case almost by construction: verifying a proposed medication change against the whole record is exactly the work the agent was deployed to avoid.

The reliability paradox follows from the same literature. A checkpoint that almost never fires stops being read, and the better the system performs, the faster that happens. I have seen the point illustrated with invented numbers, some approver waving through their two hundredth consecutive recommendation, and the illustration is intuitive but I can find no study that establishes the threshold. Nor should you need one. The effect is a property of attention operating on probabilistic feedback rather than a failure of character, and it is enough to know that it strengthens as the system improves.

The governance implication is that the question is not “is there a human in the loop?” but “is the HITL checkpoint likely to catch errors, given the cognitive conditions under which it operates?” A high-stakes checkpoint, a human reviewing an autonomous medication order, should be designed for scrutiny rather than for speed. The mitigations the review literature identifies are unglamorous and mostly organizational: present the reasoning as information rather than as a bare recommendation, and make the reviewer’s accountability explicit rather than implied ([Goddard et al. 2012](#ref-Goddard2012-autobias)). In practice that means surfacing the specific clinical reasoning the agent used, setting an expected review time long enough to be meaningful, and tracking override rates as a quality metric. A near-zero override rate is not a sign that the AI is performing well. It may be a sign that the checkpoint has become a rubber stamp.

For lower-stakes actions, a human-on-the-loop (HOTL) architecture may be appropriate: the agent acts, and the human reviews a log of actions after the fact. The distinction is consequential. HOTL is only acceptable when the actions are readily reversible, the volume is too high for per-action review, and the exception-detection mechanism is robust enough to surface anomalous actions before they cause harm.

## 11.4 Kill Switches and Circuit Breakers

Every agentic AI system deployed in a clinical environment requires a mechanism to pause or terminate its operation in response to anomalous behavior, and that mechanism must be tested before deployment, not designed after an incident.

The aviation analogy is instructive. Aircraft autopilot systems do not operate without limits; they operate within a flight envelope, and they disengage automatically when the aircraft departs that envelope. The pilot has a manual disconnect that takes effect immediately. Neither feature requires the pilot to monitor every output of the autopilot to remain safe; the system enforces its own limits and returns control explicitly when those limits are exceeded.

Clinical AI governance needs the same architectural discipline. For each deployed agentic system, the governance design should specify: (1) the conditions under which the system will automatically pause, (2) who has authority to manually pause and resume, (3) what the fallback workflow is while the system is paused, and (4) how often the kill switch is tested. An untested circuit breaker is not a safety feature.

The specific trigger conditions depend on the system. An inbox management agent might pause automatically if more than a certain percentage of messages in a defined time window are routed to an unusual destination — an indicator that something in the routing logic has drifted or been compromised. A prior authorization agent might pause if the approval rate for a specific payer departs significantly from the institutional baseline. A medication reconciliation agent might pause if it encounters a clinical context it has not seen in training. The triggers should be specified by the clinical team and the informatics team together, not left to the vendor.

``` mermaid
flowchart TD
    A([Trigger]) --> B[Input Guardrail\nScope + PHI check]
    B --> C[Agent Plans\nMulti-step reasoning]
    C --> D[Retrieve Context\nEHR read access only]
    D --> E[Reasoning Guardrail\nPlausibility · Bounds check]
    E --> F[Propose Action]
    F --> G{HITL Required?\nRisk tier check}
    G -->|High-risk action| H[Human Review\nFull reasoning surfaced]
    G -->|Low-risk action| I[Execute]
    H -->|Approved| I
    H -->|Rejected| J[Log + Discard]
    I --> K[Granular Audit Log]
    K --> L{Anomaly\nDetected?}
    L -->|No| M([Continue])
    L -->|Yes| N[Circuit Breaker\nPause + Alert Supervisor]
```

Figure 11.2: Agentic AI loop architecture with layered safety controls. Each guardrail operates independently; the circuit breaker is the final catch for unanticipated failures.

## 11.5 Least Privilege and Scope Limitation

The principle of least privilege — a system should have access only to the resources it needs to perform its specified function, and no more — is a foundational concept in information security that applies with particular force to clinical AI agents. An agent that needs to read a patient’s problem list and draft a prior authorization request does not need write access to the medication list. An agent that needs to route inbox messages does not need access to the full longitudinal record.

The technical mechanism for enforcing least-privilege access in the EHR context is the [SMART on FHIR](https://smarthealthit.org) authorization framework, whose [scopes and launch context specification](https://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html) defines the granular, parameterized access scopes this requires. Rather than granting an agent broad access to a patient record, the institution can specify that the agent may read specific resource types (e.g., Observation, Condition) for specific patients, during specific session windows. The agent cannot read or write outside that scope, because the authorization framework physically prevents it.

Operationally, this requires a change in how clinical AI tools are procured and configured. Many commercial tools request broad EHR access during initial setup because it simplifies integration. AMC informatics teams should treat this as a negotiating point in the procurement process: what is the minimum access scope required for this tool to function as advertised? Any access beyond that minimum is a risk surface that the institution is accepting without commensurate benefit.

Audit logging for agent actions should be as granular as audit logging for human actions. If a clinician querying the EHR generates a log entry, an agent querying the EHR should generate an equivalent log entry. The log should capture: which agent, on behalf of which patient, accessed which resource, at what time, and what action resulted. This is not primarily a compliance requirement; it is the mechanism by which automation surprises are investigated and understood.

## 11.6 The Regulatory Picture for Agentic AI

The regulatory landscape for agentic clinical AI is unsettled, and AMC leaders should approach it with the same expectation of ambiguity that currently governs AI medical devices generally. Several regulatory frameworks bear directly on agentic systems, even where they do not address agenticity explicitly.

The FDA’s Predetermined Change Control Plan guidance, discussed in [sec-clinical](#sec-clinical), applies with special force to agentic systems that learn and adapt as they operate. A prior authorization agent that updates its matching criteria based on approval outcomes is an adaptive system, and if it falls within FDA’s device jurisdiction, each adaptation requires either a PCCP or a new regulatory filing ([U.S. Food and Drug Administration 2024](#ref-FDA2024-pccp)). Note the scope term. The final guidance governs AI-enabled device software functions, a category that overlaps with Software as a Medical Device without being identical to it, so whether a given agent is in scope is a question for regulatory counsel rather than one to settle by analogy. The PCCP pathway is available but requires pre-specifying the bounds of the adaptation, which is precisely the kind of disciplined governance that agentic systems require in any case.

The CMS Interoperability and Prior Authorization Final Rule (CMS-0057-F) requires affected payers to decide expedited prior authorization requests within 72 hours and standard requests within seven calendar days, with compliance beginning January 1, 2026 and drugs excluded from scope ([Centers for Medicare and Medicaid Services 2024](#ref-CMS2024-interop)). Note where the obligation sits. It runs to payers, and nothing in the rule tells a health system how fast to submit. What the rule does is compress the authorization cycle and make its throughput visible on both sides, and institutions have read that as a reason to automate their end of it. The reading may well be correct, but it is an institutional inference about operational advantage rather than a regulatory requirement, and it should be defended on its own terms rather than presented to a governance committee as something CMS mandated. The rule does not change the safety obligations attaching to an agent that submits on your behalf. It increases the pressure to skip them.

California AB 3030 draws its line in a place that agentic deployment tends to cross ([AB 3030 2024](#ref-CalAB3030-2024)). The statute requires that a patient communication generated by generative AI carry a disclaimer saying so, together with instructions for reaching a human provider, and it specifies where that disclaimer goes: prominently at the beginning of a written communication, verbally at the start and the end of an audio interaction, displayed throughout a chat or video encounter. It then exempts, entirely, any communication that a licensed or certified health care provider has read and reviewed.

Read the exemption carefully, because the direction matters. Clinician review does not make compliance easier. It removes the obligation. Everything the statute asks for applies only to communications that reach the patient without a human having read them, which is the precise configuration an autonomous inbox agent creates. An institution that has been treating AB 3030 as a labeling exercise has the problem backwards: the compliance boundary is the review step itself, and the governance question is not how to word a disclaimer but which communications are allowed to leave the building unread. Where the statute is silent is on what counts as having read and reviewed a message. A clinician who clears a queue of forty drafts in four minutes has arguably attested to none of them, and that is the same rubber-stamp problem the human-in-the-loop section describes, arriving this time with a statutory consequence attached.

The NIST AI Risk Management Framework organizes governance work into four functions, Govern, Map, Measure, and Manage ([National Institute of Standards and Technology 2023](#ref-NIST2023-airm)); its generative AI profile is a companion document that applies those functions to the model class most agentic systems are built on ([National Institute of Standards and Technology 2024](#ref-NIST2024-gen600)). The structure is the most practical scaffold available for AMC agentic AI governance, mainly because it keeps the question of who is accountable separate from the question of what is being measured. Measurement is where I would expect an institution to find its own gap. Neither document surveys institutional readiness, so treat that as a prediction to test locally rather than a published finding: ask what your metrics for agentic error rates and override patterns actually are, and when anyone last looked at them. You cannot govern what you are not measuring.

## 11.7 The Action Risk Authorization Matrix

The table below provides a working framework for assigning governance controls to categories of agent action. The tiers are illustrative; specific institutions will need to calibrate thresholds based on their risk tolerance, patient population, and clinical context.

| Action Type | Authorization Model | Audit Logging | HITL Tier | Kill-Switch |
|----|----|----|----|----|
| Read EHR data | Agent identity + scoped token | Summary level | Not required | Not required |
| Route message to clinical queue | Per-session scope | Granular | Optional | Recommended |
| Draft patient communication | Per-session scope | Granular | Required: clinician attestation | Recommended |
| Submit prior authorization | Periodic institutional review | Granular | Optional for low-risk PA | Required |
| Update problem list or medication | Per-action explicit approval | Granular | Required: per-action | Required |
| Place clinical order | Per-action explicit approval | Granular | Required: per-action | Required |

Table 11.1: Risk-level and authorization matrix for agentic AI actions in the clinical environment. Rows with “Required” HITL tiers should have override rate monitoring built into the governance framework.

## 11.8 Where to Start

The governance gap for agentic AI is real, but it does not require a complete rebuild of existing frameworks. The two projects below are tractable starting points for institutions that have already begun deploying semi-agentic tools and need to formalize oversight before the autonomy level increases.

### 11.8.1 Starter Project 1: Agentic AI Audit and Tiering

**What it is:** An inventory and autonomy-tiering of every deployed AI tool that takes any action — routes, submits, updates, or schedules — without per-action human approval. For each tool, assign an autonomy tier using the spectrum in [Figure fig-agentic-spectrum](#fig-agentic-spectrum), assess whether the current governance controls match the tier requirements in [Table tbl-agentic-action-matrix](#tbl-agentic-action-matrix), and document the gaps.

**Why now:** Many institutions have deployed ambient scribes, inbox triage tools, and PA assistants without formally categorizing them as agentic systems. The governance gap is often not a deliberate decision; it is an artifact of tools being piloted and scaled before the governance framework caught up.

**How to execute:** This is an extension of the clinical AI inventory recommended in [sec-clinical-start](#sec-clinical-start). The additional work is adding an autonomy tier column, auditing the access scopes currently granted to each tool (via the EHR’s OAuth/SMART application registry), and reviewing audit log coverage. The output is a tiered register with documented gaps and a prioritized remediation plan.

**Buy vs. build:** Governance exercise. The tiering framework and audit process are institutional work; the only technology question is whether the EHR’s application registry surfaces the information needed for an access scope audit.

### 11.8.2 Starter Project 2: Kill-Switch Design and Testing

**What it is:** For each agentic tool at the “autonomous administrative” tier or above, define the circuit-breaker trigger conditions, pause mechanism, fallback workflow, and test schedule. Run at least one tabletop exercise in which the kill switch is activated and the fallback workflow is executed.

**Why now:** Kill switches that have never been tested do not work reliably under pressure. The tabletop exercise surfaces both technical gaps (the pause mechanism does not propagate to all system components) and operational gaps (the fallback workflow requires a staff role that is not adequately covered on nights and weekends).

**How to execute:** Work with the vendor, the EHR team, and the clinical operations team to document the pause mechanism for each tool. Define trigger conditions with the clinical team — what anomaly pattern, at what threshold, triggers a pause? Schedule a tabletop exercise with the on-call clinical informatics lead and relevant clinical leadership. Use the exercise findings to update the governance documentation before the next deployment expansion.

**Buy vs. build:** Design and process work, not a technology purchase. Most commercial vendors have a pause mechanism; the gap is typically in the institutional design of when and how to use it.

AB 3030: Health Care: Artificial Intelligence (2024). <https://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=202320240AB3030>.

Centers for Medicare and Medicaid Services. 2024. “Medicare and Medicaid Programs; Patient Protection and Affordable Care Act; Advancing Interoperability and Improving Prior Authorization Processes for Medicare Advantage Organizations, Medicaid Managed Care Plans, State Medicaid Agencies, Children’s Health Insurance Program (CHIP) Agencies and CHIP Managed Care Entities, Issuers of Qualified Health Plans on the Federally-Facilitated Exchanges, Merit-Based Incentive Payment System (MIPS) Eligible Clinicians, and Eligible Hospitals and Critical Access Hospitals in the Medicare Promoting Interoperability Program (Final Rule, CMS-0057-F).” In *Federal Register*, vol. 89. <https://www.federalregister.gov/documents/2024/02/08/2024-00895/medicare-and-medicaid-programs-patient-protection-and-affordable-care-act-advancing-interoperability>.

Goddard, Kate, Abdul Roudsari, and Jeremy C Wyatt. 2012. “Automation Bias: A Systematic Review of Frequency, Effect Mediators, and Mitigators.” *Journal of the American Medical Informatics Association* 19 (1): 121–27. <https://doi.org/10.1136/amiajnl-2011-000089>.

Lyell, David, and Enrico Coiera. 2017. “Automation Bias and Verification Complexity: A Systematic Review.” *Journal of the American Medical Informatics Association* 24 (2): 423–31. <https://doi.org/10.1093/jamia/ocw105>.

Lyell, David, Farah Magrabi, Magdalena Z Raban, et al. 2017. “Automation Bias in Electronic Prescribing.” *BMC Medical Informatics and Decision Making* 17 (1): 28. <https://doi.org/10.1186/s12911-017-0425-5>.

National Institute of Standards and Technology. 2023. *Artificial Intelligence Risk Management Framework (AI RMF 1.0)*. NIST AI 100-1. U.S. Department of Commerce. <https://doi.org/10.6028/NIST.AI.100-1>.

National Institute of Standards and Technology. 2024. *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*. NIST AI 600-1. U.S. Department of Commerce. <https://doi.org/10.6028/NIST.AI.600-1>.

Parasuraman, Raja, and Dietrich H Manzey. 2010. “Complacency and Bias in Human Use of Automation: An Attentional Integration.” *Human Factors* 52 (3): 381–410. <https://doi.org/10.1177/0018720810376055>.

U.S. Food and Drug Administration. 2024. *Marketing Submission Recommendations for a Predetermined Change Control Plan for Artificial Intelligence-Enabled Device Software Functions*. <https://www.fda.gov/regulatory-information/search-fda-guidance-documents/marketing-submission-recommendations-predetermined-change-control-plan-artificial-intelligence>.
