# 2  Values and Principles

Published

April 27, 2026

Every AMC that has published an AI governance framework lists roughly the same values: patient safety, equity, transparency, accountability, privacy, and human oversight. The lists are not wrong. They are also not differentiating. The meaningful question is not which values an institution holds — that convergence is real and appropriate — but whether those values are encoded in governance structures that make them operational, or whether they remain aspirational statements that authorize AI deployments without constraining them.

This distinction matters because value statements are not self-enforcing. An institution can publish a principle of “transparency” and simultaneously deploy clinical AI tools with no documentation of training data provenance, no disclosure to clinicians of the model’s known limitations, and no audit trail connecting AI outputs to clinical decisions. The principle is present. The operational mechanism that would give it meaning is not. The chapters that follow this one are primarily about the mechanisms. This chapter is about why the principles matter and how peer institutions have translated them into governance practice.

## 2.1 Patient Safety and the Primacy of Clinical Judgment

Patient safety is the foundational principle in clinical AI governance, and it is the one most at risk of being treated as self-evident when it requires active structural support. The automation complacency literature documents consistently that clinicians who work with accurate AI tools gradually reduce their independent scrutiny of AI outputs — not through carelessness but through rational adaptation to an environment where the tool is usually right ([Parasuraman and Manzey 2010](#ref-Parasuraman2010-automation)). The risk is not that clinicians distrust AI. It is that they come to trust it in ways that bypass the critical evaluation the technology requires.

Patient safety as an operational governance principle means two specific things. First, every deployed clinical AI tool requires an explicit human oversight architecture: who reviews AI outputs, under what conditions, with what documentation requirements, and what happens when the tool is wrong. This is not a policy preference. It is the design constraint that determines whether a deployment is safe. Second, training programs for clinicians using AI tools should include explicit instruction on the specific failure modes of each tool they use, not just its aggregate accuracy. A physician who knows that ambient documentation tools are more likely to omit negative findings than to hallucinate positive ones is a better human-in-the-loop than one who knows only that the tool achieves high average accuracy.

## 2.2 Equity as Performance Requirement

Equity is the principle that most AMC AI governance programs acknowledge and fewest operationalize. The acknowledgment is easy: any institutional AI values statement will include language about not exacerbating health disparities. The operationalization requires something specific: demographic stratification of performance metrics as a standard component of AI validation, not an optional audit.

The Obermeyer 2019 demonstration that a widely deployed risk stratification algorithm systematically underestimated the health needs of Black patients was not a finding about a biased algorithm ([Obermeyer et al. 2019](#ref-Obermeyer2019-bias)). It was a finding about a technically correct algorithm that encoded an existing inequity by using healthcare utilization as a proxy for health need. The algorithm did exactly what it was designed to do. The design was the problem. Catching this kind of structural inequity before deployment requires stratified performance analysis across race, ethnicity, age, insurance status, and language as a baseline requirement — not a step that happens if someone raises a concern.

Badal and colleagues proposed a framework that frames alleviation of health disparities as the first principle of responsible clinical AI, not a supplementary consideration ([Badal et al. 2023](#ref-Badal2023-bt)). In practice, this means that a model achieving 85 percent accuracy overall but 70 percent accuracy for the subpopulation with the highest disease burden is not a high-performing model. It performs best for the patients who need it least. The equity audit process described in [sec-ethics-start](#sec-ethics-start) is the operational mechanism for this principle. Without that audit, equity is a value statement, not a program element.

## 2.3 Transparency: From Principle to Attribute List

Transparency is now a regulatory requirement, not just an ethical aspiration. The ONC Health Data, Technology, and Interoperability rule requires EHR vendors to surface 31 structured source attributes for every certified AI-enabled clinical decision support intervention ([Office of the National Coordinator for Health Information Technology 2024](#ref-ONC2024-hti1)). Those attributes include training data sources and date ranges, performance characteristics on the populations validated, known limitations and failure modes, instructions for appropriate use, and update history. This is what operationalized transparency looks like: a specific list of information that must be available at the point of clinical use.

For AMCs, this regulatory baseline is a floor, not a ceiling. Mitchell and colleagues’ model card framework — now widely adopted by major AI vendors and required by the [Coalition for Health AI](https://www.coalitionforhealthai.org) — defines a similar set of disclosure requirements that apply to any model, regardless of whether it falls under ONC certification ([Mitchell et al. 2019](#ref-Mitchell2019-modelcards)). An AMC that requires model cards from every vendor providing an AI tool, and publishes equivalent documentation for internally developed tools, has operationalized transparency in a way that the values statement alone never could.

The transparency principle extends to patients. The [WHO](https://www.who.int) ethics guidance on AI for health recommends meaningful disclosure to patients about which AI tools are used in their care and how those tools affect clinical decisions ([World Health Organization 2024](#ref-WHO2024-ai-ethics)). California AB 3030 now requires disclosure on AI-generated patient communications. The operational mechanism here is the consent architecture described in [sec-ethics](#sec-ethics): an institutional policy on when and how patients are informed about clinical AI use, not a case-by-case determination left to individual clinicians.

## 2.4 Human Oversight and the Agentic Threshold

Human oversight has become more complicated as AI has become more agentic. When the tool is advisory — an AI recommends, a clinician decides — the oversight model is relatively straightforward. As AI tools gain the ability to take autonomous actions — ordering tests, routing referrals, updating records, communicating with patients — the oversight architecture requires more specific design. Who reviews autonomous AI actions? How quickly must review occur to be meaningful? What actions require pre-authorization rather than post-hoc review? These questions are addressed specifically in [sec-agentic-safety](#sec-agentic-safety); the relevant principle here is that human oversight is not a passive condition but an active design requirement that must be specified for each tool’s risk profile and autonomy level.

## 2.5 Accountability: The Structural Turn

Accountability in AI governance is structural, not individual. An ambient documentation system that produces inaccurate notes fails not because the clinician was careless in attestation — though the attestation does carry professional accountability — but because the deployment decision did not include adequate validation of the tool in the clinical context, the training program did not adequately prepare clinicians to recognize the tool’s specific failure modes, and the monitoring system did not detect the pattern of errors before it became a patient safety event. Individual accountability is real. It is also insufficient as an accountability framework for tools that operate at scale across thousands of encounters.

The structural accountability mechanisms in this book are: the stage-gate governance process in [sec-pm-support](#sec-pm-support) that requires documented validation before tools influence clinical decisions; the equity audit requirement in [sec-ethics](#sec-ethics) that creates an institutional record of what was known about demographic performance before deployment; the total product lifecycle monitoring in [sec-pm-support](#sec-pm-support) that creates ongoing visibility into whether deployed tools are performing as validated; and the board-level reporting requirement in [sec-regulatory-start](#sec-regulatory-start) that makes AI governance visible at the level of institutional accountability where it ultimately resides.

## 2.6 How Peer Institutions Have Operationalized These Principles

The convergence of leading AMC AI governance programs on similar structures is itself informative. Duke Health’s Algorithm-Based Clinical Decision Support framework treats every deployed algorithm as a clinical asset with a named clinical owner, a named technical owner, a mandatory silent evaluation phase before any tool influences clinical decisions, and a registry that maintains continuous visibility into the deployed portfolio ([Bedoya et al. 2022](#ref-Bedoya2022-abcds)). The registry — a simple idea that turns out to be operationally significant — is what makes the 10 percent automated inventory figure so striking. Most institutions that have AI governance committees do not have the basic visibility into their own environment that accountability requires.

UCSF’s Trustworthy AI playbook grounds its six principles in mandatory checkpoints at three points in the deployment lifecycle: before a tool accesses data, before a tool enters a pilot, and before a tool reaches enterprise scale. The checkpoint structure converts principles into decision gates. A tool does not advance through the lifecycle by meeting soft criteria; it advances by clearing documented requirements that are enforced by the governance committee.

Vanderbilt’s AVAIL program requires every AI tool to pass through a REDCap-based intake process before it reaches the governance committee’s attention. The intake triage is itself a governance mechanism: it ensures that every tool is assessed against a consistent set of criteria before institutional resources are committed to evaluation, and it builds the documented record that the annual impact assessment requirements of Colorado SB 24-205 and the equity audit requirements of HHS Section 1557 ultimately require.

| Principle | Regulatory Mechanism | Operational Mechanism | Chapter |
|----|----|----|----|
| Safety | CMS MA rule: AI cannot substitute for human clinical review | Human oversight architecture, specific failure mode training | [sec-clinical](#sec-clinical), [sec-wellness](#sec-wellness) |
| Equity | HHS Section 1557: no discriminatory patient care tools | Stratified performance validation, demographic drift monitoring | [sec-ethics](#sec-ethics) |
| Transparency | ONC HTI-1: 31 source attributes for certified DSIs | Model card requirement at intake, institutional disclosure policy | [sec-data](#sec-data), [sec-pm-support](#sec-pm-support) |
| Human oversight | FDA PCCP: human oversight for adaptive AI devices | HITL checkpoints, override documentation | [sec-agentic-safety](#sec-agentic-safety) |
| Accountability | Colorado SB 24-205: annual impact assessments | Stage-gate governance, board reporting | [sec-pm-support](#sec-pm-support), [sec-regulatory](#sec-regulatory) |
| Privacy | HIPAA BAA + zero-data-retention provisions | Data classification framework, honest broker function | [sec-data](#sec-data) |

Table 2.1: Governance principles mapped to regulatory requirements and operational mechanisms. The mechanism column is the bridge between aspiration and program.

These examples share a common architecture: principles that are specific enough to be falsifiable, checkpoints that create documented records of compliance, and ownership structures that ensure someone is accountable for the principle being honored. That architecture is what this book is about. The values are the starting point. The mechanisms are the work.

Badal, Kimberly, Carmen M Lee, and Laura J Esserman. 2023. “Guiding Principles for the Responsible Development of Artificial Intelligence Tools for Healthcare.” *Communication & Medicine* 3 (1): 47. <https://doi.org/10.1038/s43856-023-00279-9>.

Bedoya, Armando D, Nicoleta J Economou-Zavlanos, Benjamin A Goldstein, et al. 2022. “A Framework for the Oversight and Local Deployment of Safe and High-Quality Prediction Models.” *Journal of the American Medical Informatics Association* 29 (9): 1631–36. <https://doi.org/10.1093/jamia/ocac078>.

Mitchell, Margaret, Simone Wu, Andrew Zaldivar, et al. 2019. “Model Cards for Model Reporting.” *Proceedings of the Conference on Fairness, Accountability, and Transparency*. <https://doi.org/10.1145/3287560.3287596>.

Obermeyer, Ziad, Brian Powers, Christine Vogeli, and Sendhil Mullainathan. 2019. “Dissecting Racial Bias in an Algorithm Used to Manage the Health of Populations.” *Science* 366 (6464): 447–53. <https://doi.org/10.1126/science.aax2342>.

Office of the National Coordinator for Health Information Technology. 2024. “Health Data, Technology, and Interoperability: Certification Program Updates, Algorithm Transparency, and Information Sharing (HTI-1).” In *Federal Register*, No. 8, vol. 89. <https://www.federalregister.gov/documents/2024/01/09/2023-28824/health-data-technology-and-interoperability-certification-program-updates-algorithm-transparency-and>.

Parasuraman, Raja, and Dietrich H Manzey. 2010. “Complacency and Bias in Human Use of Automation: An Updated Understanding.” *Human Factors* 52 (3): 381–410. <https://doi.org/10.1177/0018720810376055>.

World Health Organization. 2024. *Ethics and Governance of Artificial Intelligence for Health*. <https://www.who.int/publications/i/item/9789240029200>.
