# 19  Evaluation and Monitoring

Published

April 27, 2026

Deploying an AI tool without a monitoring plan is not a deployment. It is an experiment, one in which patients, students, researchers, and administrative staff are the unwitting subjects. The experiment ends when something goes wrong visibly enough that someone shuts it off. What the institution rarely knows at that point is how long the model had been quietly performing below the threshold it was validated against, or how many people were affected before the degradation became obvious.

Evaluation and monitoring are not bureaucratic overhead bolted onto AI deployment to satisfy governance committees. They are the mechanism by which an institution finds out whether a tool is actually doing what it claimed to do, in the specific population and context where it was deployed, after the vendor demonstration is a memory. Without them, the institution is flying on instruments it has not calibrated.

The principles underlying good evaluation and monitoring are largely domain-agnostic. Local validation before deployment, shadow-mode testing before live use, drift detection after go-live, structured feedback loops from the people using the tool: these apply whether you are deploying a sepsis prediction model in the ICU or an AI-assisted grant writing tool in the research office. What differs substantially by domain is what you measure, who you ask, what a bad result means, and what governance body you escalate to when you find one. A clinical AI tool that degrades in performance is a patient safety event. The same degradation in a business operations tool is a financial exposure. The same degradation in a student assessment tool is an equity problem. Same principle, completely different response.

## 19.1 Why Benchmark Performance Does Not Transfer

Vendor-reported performance numbers tell you very little about how a model will perform at your institution.

Every prediction model is a function of the data it was trained on. That data reflects a specific case mix, specific documentation practices, and specific clinical workflows. When any of those change, model performance changes too. Sometimes the change is modest. Sometimes it is not.

The Epic Sepsis Model is the most-cited illustration. The vendor-reported AUC was approximately 0.76 to 0.83. When researchers at Michigan Medicine conducted an independent external validation using actual patient outcomes rather than the training-population data, the AUC dropped to 0.63, indistinguishable from the performance of a much simpler severity score already in clinical use ([Wong et al. 2021](#ref-Wong2021-esm)). The model had been implemented at hundreds of health systems before that external validation was published. The question is not whether external validation should have been required. It obviously should have been. The question is what institutional infrastructure makes local validation the default rather than the exception.

Performance degradation does not only happen at implementation. It also happens over time, in production, to models that performed adequately at go-live. Finlayson and colleagues documented how the COVID-19 pandemic induced rapid dataset shift across a wide range of clinical models, not because the models were flawed, but because the patient population, treatment patterns, and documentation practices in 2020 were structurally different from the training data those models had learned from ([Finlayson et al. 2021](#ref-Finlayson2021-shift)). This form of drift, where the underlying relationship between inputs and outputs changes, is particularly insidious because the model continues to generate predictions with the same apparent confidence. The output does not flag that the world has changed.

This is why every AI deployment requires two distinct activities: pre-deployment evaluation to confirm adequate local performance before the tool influences any decision, and post-deployment monitoring to confirm that it continues to do so over time.

## 19.2 Pre-Deployment Evaluation

Pre-deployment evaluation has two components: local validation and shadow deployment.

Local validation asks whether the model performs adequately on a retrospective dataset drawn from your own institution’s population, documentation practices, and time period. This is not the same as accepting the vendor’s validation dataset, even if that dataset includes data from institutions that resemble yours. A model validated exclusively on academic medical center data from the northeast may not perform adequately at a safety-net hospital serving a different demographic mix. The validation data needs to be yours.

Shadow deployment, sometimes called silent mode, runs the model in parallel with real clinical or operational workflow, generating outputs that are not shown to the users making decisions. This phase answers questions that retrospective validation cannot. What is the alert burden this model generates in real operations? What is the false positive rate under live documentation patterns? Are there systematic differences in performance across demographic subgroups that did not appear in the retrospective dataset? The answers sometimes differ substantially from what the validation study suggested, and finding out during silent mode rather than during live rollout is the point.

For clinical AI tools, the [DECIDE-AI](https://www.decide-ai.org/) reporting standard provides a structured framework for this early evaluation phase, covering the evidence required before moving from silent mode to supervised deployment and from supervised deployment to unsupervised live use ([Vasey et al. 2022](#ref-Vasey2022-decideai)). [TRIPOD+AI](https://www.tripod-statement.org/) provides the reporting standard for the pre-deployment validation study itself: a 27-item checklist specifying what must be documented about model development, calibration, and performance before a prediction model goes live in any setting ([Collins et al. 2024](#ref-Collins2024-tripodai)).

For large language models, a third pre-deployment step applies that does not exist for traditional prediction models. LLMs can fail in ways prediction models do not: hallucinating plausible-sounding clinical information, exposing protected patient data in responses to queries that appear innocuous, producing outputs with demographic biases that standard performance metrics do not capture. A pre-deployment red-teaming exercise, structured adversarial testing by domain experts attempting to elicit harmful outputs, is the minimum bar for any LLM in a clinical or educational context.

Model cards, standardized by [CHAI](https://www.coalitionforhealthai.org/) as a “nutrition label” for AI tools, document the intended population, known performance limitations, demographic subgroup performance, and deployment constraints. Requiring vendors to provide a CHAI-compliant model card before evaluation begins shifts accountability appropriately. If the vendor cannot characterize subgroup performance, the institution has learned something important about what the vendor actually knows about its own model ([Coalition for Health AI 2024](#ref-CHAI2024-trust)).

## 19.3 Post-Deployment Monitoring: Catching Drift

Once a model is live, the monitoring question changes from “does this model perform well enough to deploy?” to “is it still performing well enough to remain deployed?”

Drift comes in three forms. Covariate drift occurs when the statistical distribution of the input data changes: the patient population ages, a new referral pattern alters the case mix, a workflow change affects how lab values are captured. The model was not trained on this new distribution and may perform worse on it without anyone noticing, because it is still generating outputs and users have adapted their interpretation of those outputs based on the tool’s historical behavior. Concept drift is more fundamental: the underlying relationship between inputs and the outcome the model predicts changes. The COVID pandemic induced concept drift across virtually every clinical model trained on pre-2020 data. Concept drift cannot be fixed by retraining on more data from the same period; it requires recognizing that the world has changed and deciding whether the model can be updated to reflect that change. Data pipeline failures, upstream changes to EHR configuration or coding practices, can cause models to receive inputs structurally different from their training data without any change in the patient population. This is the most operationally tractable form of drift because it has an identifiable technical cause, but it is also easily missed because it does not look like a model failure from the outside.

The pharmacovigilance analogy is useful here. A drug approved by the FDA carries a post-market surveillance obligation: the manufacturer must monitor for adverse events that did not appear in the clinical trials. AI/ML-based Software as a Medical Device is now subject to analogous requirements. As of early 2025, the FDA’s Total Product Lifecycle guidance for AI/ML-enabled device software functions remains a draft document and has not been finalized into a binding rule, but the agency’s direction is clear: ongoing performance monitoring and active surveillance for drift and bias are expected elements of any clinical AI program ([U.S. Food and Drug Administration 2024](#ref-FDA2024-pccp)). Flag this as an area to check; a final rule may be in effect by the time you read this.

## 19.4 KPI Architecture: Three Tiers

The KPIs that matter for AI monitoring fall into three tiers that are frequently conflated, with real consequences for what gets measured and what gets missed.

Technical KPIs measure model performance: calibration, discrimination (AUC-ROC, F1), sensitivity and specificity at the operating threshold, subgroup performance across demographic categories. These are what data scientists measure. They are necessary but not sufficient, because a model that performs adequately on technical metrics can still fail to improve the outcomes it was deployed to affect, or actively harm them.

Operational KPIs measure behavior in the workflow: utilization rate (what fraction of eligible cases are receiving the model’s output?), override rate (how often do clinicians or administrators reject the recommendation?), alert burden, and time effects. The override rate is particularly informative. A model with a high override rate either has poor accuracy that frontline users have recognized and are compensating for, or has accurate outputs that the workflow integration is presenting poorly. Both are problems requiring different responses, and neither is visible on a calibration curve.

Outcome KPIs measure whether the tool is actually improving what it was deployed to improve. Sepsis mortality rates, medication error rates, student board exam pass rates, revenue cycle denial rates: whatever the tool was meant to move. These are the hardest to measure because they require attributing outcomes to the tool in a context where many other things are changing simultaneously. They are also the only KPIs that answer the question the institution actually cares about.

| KPI Category | Example Metric | What It Detects | Who Interprets It | Monitoring Cadence |
|----|----|----|----|----|
| Technical | AUC-ROC by demographic subgroup | Performance degradation, bias | Data science / MLOps | Monthly |
| Technical | Calibration curve | Probability over/underprediction | Data science | Quarterly |
| Operational | Override / rejection rate | Workflow misfit, user distrust | Department head, AI champion | Weekly / monthly |
| Operational | Alert burden per user-hour | Automation bias risk | Clinical informatics | Weekly |
| Operational | Time-to-task delta | Efficiency impact | Operations / QI | Quarterly |
| Outcome | Downstream outcome rate | Whether the tool is working | QI officer, domain lead | Quarterly / annually |
| Outcome | Subgroup outcome equity | Disparity amplification | Equity officer, ethics | Quarterly |

Table 19.1: KPI taxonomy for AMC AI monitoring. Technical KPIs catch model degradation. Operational KPIs catch workflow and adoption problems. Outcome KPIs answer whether the tool is achieving its purpose. All three tiers are required; monitoring only technical KPIs is the most common failure mode in practice.

## 19.5 Stakeholder Feedback as a Monitoring Method

Quantitative dashboards miss failure modes that only show up in how people experience a tool.

A clinician who has learned to distrust a sepsis model’s outputs because the false positive rate is too high, and who now processes the alert as background noise, is a monitoring signal that no AUC metric captures. A student who submits AI-generated text not to cheat but because the assessment format rewards performance over learning is a monitoring signal about assessment design. An administrative staff member who has developed informal workarounds for an AI-assisted billing tool because it fails on certain claim types is a monitoring signal about the model’s coverage gaps.

Structured mechanisms for collecting this kind of signal are part of a monitoring program, not an optional supplement to it. For clinical AI, this means building feedback pathways for frontline clinicians and, where the tool directly affects patient care, for patients. Patient advisory boards and community advisory bodies have been used by some health systems as governance mechanisms for equity-sensitive tools, providing ongoing input from affected communities rather than one-time consent at enrollment. The literature on participatory design in health AI is still developing; replicable methods exist but most programs remain institutional pilots.

For educational AI, faculty are both users and evaluators. Their sense of whether students are developing genuine clinical reasoning or outsourcing it to AI tools is a monitoring input that no automated system can provide. For research AI, the IRB and the research integrity office can surface concerns from researchers and trainees about data provenance, analysis reproducibility, and authorship questions that would otherwise not reach institutional visibility. For business operations AI, frontline administrative staff are the first to notice when an AI-assisted authorization tool starts generating unusual denial patterns, or when an automated scheduling system creates downstream inefficiencies invisible to management dashboards.

## 19.6 Domain-Specific Dimensions

The general principles above apply across all four domains. What differs are the KPIs that matter most, who the primary stakeholders are, what the main ethical obligation is, and what governance body is responsible for escalation.

``` mermaid
flowchart TD
    A[Local Validation\n& Red-Teaming] --> B{Go / No-Go\nDecision}
    B -->|Pass| C[Shadow Deployment\n— Silent Mode]
    B -->|Fail| Z[Remediate\nor Reject]
    C --> D{Supervised\nRelease Gate}
    D -->|Pass| E[Live Deployment]
    D -->|Fail| Z
    E --> F[Ongoing Monitoring\nTechnical · Operational · Outcome]
    F --> G{Alert\nThreshold}
    G -->|Within tolerance| F
    G -->|Threshold exceeded| H[Governance\nEscalation]
    H --> I{Remediation\nFeasible?}
    I -->|Yes| J[Retrain / Reconfigure\n/ Update Workflow]
    I -->|No| K[Decommission]
    J --> E
    Z --> L[Archive\nand Document]
    K --> L
```

Figure 19.1: AI deployment lifecycle. All four AMC domains share this structure. The domain-specific differences are in what constitutes a failed gate (not the existence of gates), what drift detection looks like (not the need for it), and which governance body has escalation authority.

### 19.6.1 Clinical

Clinical AI monitoring operates under the most developed regulatory framework and carries the highest stakes for patient harm. Patient safety KPIs — near-miss events, adverse outcomes where the model’s output was in the clinical record — are the core of outcome monitoring. Clinician override rates serve as a leading indicator; high false positive rates tend to show up as alert fatigue well before they appear as measurable patient harm events, and that pattern is visible through operational monitoring.

Equity monitoring is a legal requirement under the HHS Section 1557 final rule, which creates an affirmative obligation for health systems to identify and mitigate discrimination in their use of clinical decision support ([U.S. Department of Health and Human Services, Office for Civil Rights 2024](#ref-HHS2024-1557)). Demographic subgroup performance is not an optional component of technical monitoring. It is a compliance obligation.

The FDA PCCP framework requires that any predetermined changes to an AI/ML-based Software as a Medical Device — retraining triggers, performance floor thresholds, the training data update protocol — be specified and approved before they are implemented ([U.S. Food and Drug Administration 2024](#ref-FDA2024-pccp)). This gives the monitoring program a regulatory anchor: the decommissioning criteria and retraining triggers are documented commitments made at deployment time, not decisions improvised when a problem has already become visible.

Patient engagement in clinical AI monitoring extends beyond consent forms. Community advisory bodies with ongoing governance roles provide a channel for affected communities to surface concerns before they reach the level of documented harm. The literature on what this looks like in practice is still thin; the most replicable models involve structured advisory processes with defined input pathways into the AI governance committee, rather than ad hoc consultation that happens when a problem is already public.

### 19.6.2 Research

Research AI monitoring focuses on a different set of failure modes. The primary risks are not immediate patient harm but the slower, harder-to-reverse harms of corrupted science: results that are not reproducible, published findings not attributable to real effects, and training data used in violation of its collection consent.

Data provenance monitoring — tracking whether the data used for AI-assisted analysis was collected, consented, and used under IRB protocols that cover that use — is the research equivalent of clinical safety monitoring. An AI tool used in ways that fall outside its approved IRB protocol should trigger the same reporting pathway as any other protocol deviation. The IRB is the governance body for escalation in this domain.

Reproducibility KPIs include whether the code and configuration needed to reproduce an analysis are archived alongside the data, whether model outputs are stable across re-runs, and whether AI-assisted analysis steps are disclosed in publications per ICMJE standards ([International Committee of Medical Journal Editors 2023](#ref-ICMJE2023-recommendations)). The reproducibility crisis in biomedical research predates AI: about 70% of researchers in one large survey reported being unable to reproduce another scientist’s results, and about 50% had failed to reproduce their own ([Baker 2016](#ref-Baker2016-reproducibility)). AI-assisted analysis adds new dimensions to this problem, particularly when models are used to identify patterns in data without explicit hypothesis specification. Faster analysis is not more rigorous analysis, and the monitoring program needs to include mechanisms that reflect that distinction.

### 19.6.3 Education

The monitoring challenge in education is distinct because the failure mode is often invisible from outside. A student who produces AI-generated work that satisfies the stated learning objectives on paper, while the cognitive development those objectives were meant to build does not occur, is not detectable by any automated system.

The most important education monitoring KPI is assessment validity: does the assessment format still distinguish students who have developed genuine clinical reasoning from students who have not? This is a question for faculty, not for a dashboard. ACGME has introduced requirements for programs to demonstrate that trainees can engage competently with AI tools and that faculty are equipped to evaluate that competency ([Accreditation Council for Graduate Medical Education 2025](#ref-ACGME2025-CPR)). Those external requirements create an institutional monitoring obligation that exists independent of what any individual program director chooses to prioritize.

The case against AI detection tools as a primary integrity monitoring mechanism rests on two documented problems. They produce false positives for non-native English speakers at rates high enough to constitute a discriminatory monitoring practice ([Liang et al. 2023](#ref-Liang2023-aidetect)). And they are a defensive posture that treats the symptom, AI-generated text submitted for assessment, rather than the cause, which is assessment design that does not require authentic engagement. Moving monitoring from policing toward assessment design, asking whether the assessments themselves require reasoning that AI cannot substitute for, is a more durable response. For health professions education specifically, peer-reviewed literature on AI monitoring in clinical training contexts remains limited as of 2025; most available evidence comes from general higher education contexts and should be applied with awareness that the competency stakes in clinical training are higher.

### 19.6.4 Business Operations

Business operations AI monitoring combines operational efficiency KPIs with equity obligations that are often underweighted in standard ROI analyses.

The efficiency KPIs are tractable: throughput rates, processing time, error rates, revenue cycle metrics. For ambient documentation tools, the relevant operational KPI is the actual reduction in documentation burden measured against the time required for AI output review and correction, not against the theoretical maximum ([Tierney et al. 2024](#ref-Tierney2024-scribe)). Tools that reduce total documentation time are different from tools that redistribute documentation burden from typing to reviewing.

Algorithmic hiring bias monitoring is a legal requirement in jurisdictions that have enacted AI employment law. New York City’s Local Law 144 requires employers using automated employment decision tools to conduct annual bias audits and disclose the results publicly ([Local Law 144 2021](#ref-NYCLL144)). AMC human resources teams using AI in any part of the hiring or promotion process should know whether they fall under this or analogous state-level requirements, and build the audit infrastructure to comply before an enforcement inquiry requires it.

Frontline administrative staff are both the primary operational monitors and the primary workforce equity stakeholders. When AI automation displaces tasks that staff were previously performing, monitoring should include tracking of role changes, retraining uptake, and whether the efficiency gains from automation are distributed equitably across staff levels. The AMC that deploys an AI billing tool to reduce administrative headcount without monitoring the workforce equity dimensions of that reduction is carrying risk — regulatory, reputational, and labor relations — that standard operational dashboards will not surface.

| Domain | Primary KPI Type | Key Stakeholders | Main Ethical Obligation | Governance Body | Illustrative Metric |
|----|----|----|----|----|----|
| Clinical | Safety and equity | Clinicians, patients, patient advisory board | Non-maleficence; HHS 1557 compliance | AISC, CMIO, patient safety | Override rate; subgroup AUC-ROC |
| Research | Reproducibility and provenance | Researchers, trainees, IRB | Research integrity; consent compliance | IRB, research integrity office | Protocol compliance rate; analysis reproducibility |
| Education | Assessment validity | Faculty, students, accreditors | Genuine competency development | Curriculum committee, ACGME | Assessment authenticity; faculty evaluation |
| Business Ops | Efficiency and equity | Admin staff, HR, finance | Fairness; workforce equity | CFO, CHRO, labor relations | Denial rate delta; hiring bias audit results |

Table 19.2: Domain comparison for AI monitoring. Each domain shares the general monitoring lifecycle but differs in what KPIs matter most, which stakeholders are primary, and what governance body has escalation authority.

## 19.7 Decommissioning

Every deployed AI tool needs pre-defined criteria for when it should be taken offline. Setting those criteria at deployment time, rather than when a problem has become large enough to be undeniable, is one of the clearest markers of a monitoring program that is designed to work.

Decommissioning criteria should specify performance floors below which the tool goes offline regardless of workflow integration costs, subgroup equity thresholds that trigger mandatory review, data pipeline failure modes that trigger automatic suspension, and a review cadence at which continued deployment requires affirmative re-authorization rather than passive continuance. The specifics will differ by domain and by the risk profile of the tool. What matters is that they exist in writing before go-live.

Wiens and colleagues argued that the harm from deploying a poorly performing AI tool in a high-stakes clinical setting is not a theoretical risk that might materialize. It is a predictable consequence of a decision made without adequate evaluation infrastructure ([Wiens et al. 2019](#ref-Wiens2019-harm)). Decommissioning criteria are the mechanism by which that infrastructure acknowledges its own limits.

## 19.8 Minimum Responsible Bar

It is worth being direct about what the minimum responsible bar actually is, because “comprehensive” monitoring programs are sometimes invoked as an argument for indefinite delay rather than a target for implementation.

For clinical AI, the minimum bar is: local validation on institutional data before go-live, shadow deployment with monitoring before clinician-facing rollout, pre-defined decommissioning criteria in writing, and at least quarterly review of technical and operational KPIs with a named reviewer. Below this bar, the institution is not governing its AI program. It is hoping the vendor got it right.

The minimum bar for research, education, and business operations AI is different in some dimensions and lower in others, but the structure is identical: every deployment should have a named monitoring owner, defined KPIs, a defined review cadence, and criteria that would result in the tool being taken offline. These are not aspirational targets for mature programs. They are the preconditions under which responsible deployment is possible at all.

Accreditation Council for Graduate Medical Education. 2025. *Common Program Requirements: July 2025 Updates*. [Https://www.acgme.org/what-we-do/accreditation/common-program-requirements/](https://www.acgme.org/what-we-do/accreditation/common-program-requirements/). <https://www.acgme.org/what-we-do/accreditation/common-program-requirements/>.

Baker, Monya. 2016. “1,500 Scientists Lift the Lid on Reproducibility.” *Nature* 533: 452–54. <https://doi.org/10.1038/533452a>.

Coalition for Health AI. 2024. *Patient Trust and AI Accountability Survey*. [Https://www.coalitionforhealthai.org/publications/](https://www.coalitionforhealthai.org/publications/). <https://www.coalitionforhealthai.org/publications/>.

Collins, Gary S, Karel G M Moons, Paula Dhiman, et al. 2024. “TRIPOD+AI Statement: Updated Guidance for Reporting Clinical Prediction Models That Use Regression or Machine Learning Methods.” *BMJ* 385: e078378. <https://doi.org/10.1136/bmj-2023-078378>.

Finlayson, Samuel G, Adarsh Subbaswamy, Karandeep Singh, et al. 2021. “The Clinician and Dataset Shift in Artificial Intelligence.” *New England Journal of Medicine* 385: 283–86. <https://doi.org/10.1056/NEJMc2104626>.

International Committee of Medical Journal Editors. 2023. *Recommendations for the Conduct, Reporting, Editing, and Publication of Scholarly Work in Medical Journals*. <https://www.icmje.org/recommendations/>.

Liang, Weixin, Mert Yuksekgonul, Yining Mao, Eric Wu, and James Zou. 2023. “GPT Detectors Are Biased Against Non-Native English Writers.” *Patterns* 4 (7): 100779. <https://doi.org/10.1016/j.patter.2023.100779>.

Local Law 144: Automated Employment Decision Tools (2021). <https://www.nyc.gov/site/dca/about/automated-employment-decision-tools.page>.

Tierney, Aaron A, Shreya Bhatt, Aakash Houndie, et al. 2024. “Ambient Artificial Intelligence Scribes to Alleviate the Burden of Clinical Documentation.” *NEJM Catalyst Innovations in Care Delivery* 5 (1): CAT.23.0404. <https://doi.org/10.1056/CAT.23.0404>.

U.S. Department of Health and Human Services, Office for Civil Rights. 2024. *Section 1557: Nondiscrimination in Health Programs and Activities (Final Rule)*. <https://www.hhs.gov/civil-rights/for-individuals/section-1557/index.html>.

U.S. Food and Drug Administration. 2024. *Marketing Submission Recommendations for a Predetermined Change Control Plan for Artificial Intelligence/Machine Learning-Enabled Device Software Functions*. <https://www.fda.gov/regulatory-information/search-fda-guidance-documents/marketing-submission-recommendations-predetermined-change-control-plan-aiml-enabled-device-software>.

Vasey, Baptiste, Myura Nagendran, Bruce Campbell, et al. 2022. “Reporting Guideline for the Early-Stage Clinical Evaluation of Decision Support Systems Driven by Artificial Intelligence: DECIDE-AI.” *Nature Medicine* 28: 924–33. <https://doi.org/10.1038/s41591-022-01772-9>.

Wiens, Jenna, Suchi Saria, Mark Sendak, et al. 2019. “Do No Harm: A Roadmap for Responsible Machine Learning for Health Care.” *Nature Medicine* 25: 1337–40. <https://doi.org/10.1038/s41591-019-0548-6>.

Wong, Andrew, Erkin Otles, John P Donnelly, et al. 2021. “External Validation of a Widely Implemented Proprietary Sepsis Prediction Model in Hospitalized Patients.” *JAMA Internal Medicine* 181 (8): 1065–70. <https://doi.org/10.1001/jamainternmed.2021.2626>.
