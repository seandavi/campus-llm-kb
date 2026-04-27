YOLO mode is enabled. All tool calls will be automatically approved.
YOLO mode is enabled. All tool calls will be automatically approved.
I will research the "Evaluation and Monitoring" chapter for the Campus LLM Knowledge Base, focusing on the core principles of AI validation, drift detection, and domain-specific KPIs across clinical, research, education, and business operations.

First, I'll search for the specified primary sources and frameworks.

Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 1s.. Retrying after 5926ms...
Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 1s.. Retrying after 5712ms...
Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 1s.. Retrying after 5172ms...
I've gathered significant information on clinical AI evaluation standards (TRIPOD+AI, CHAI, FDA post-market surveillance). I will now conduct targeted research into the evaluation and monitoring of AI in Research, Education, and Business Operations within the Academic Medical Center context, as well as searching for specific examples of performance degradation and academic integrity monitoring.

Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 2s.. Retrying after 5206ms...
I have gathered substantial information for the Clinical, Education, and Business sectors, but I need to further investigate the specific roles of IRBs in AI monitoring, as well as data provenance and reproducibility KPIs in research AI, and the risks of publication bias associated with AI-assisted analysis. I will also look for specific clinical drift cases, such as the Epic Sepsis Model external validation by Wong (2021), to complete the dossier.

Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 0s.. Retrying after 5657ms...
Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 0s.. Retrying after 5759ms...
I have gathered a comprehensive set of information covering clinical AI evaluation (TRIPOD+AI, CHAI, FDA), clinical drift (Wong 2021, Finlayson 2021), participatory design, and AI monitoring in research, education, and business. This includes specific KPIs, regulatory updates, and emerging risks like "recursive drift." I am now prepared to develop the domain comparison and KPI taxonomy tables, draft the argument spine and section outline, and ensure proper citation formatting, including checking the `references.bib` file for existing keys.

# Research Dossier: Evaluation and Monitoring

This dossier provides the research foundation for the `evaluation_monitoring.qmd` chapter of the *Large Language Model Policy and Practice* book. It outlines the transition from static AI benchmarking to a total product lifecycle (TPLC) approach, emphasizing that evaluation and monitoring are the minimum bar for responsible AI adoption in an Academic Medical Center (AMC).

## 1. Argument spine

Deploying an AI tool without a rigorous monitoring plan is not a standard implementation; it is an unmonitored experiment with patients, students, and staff as subjects. The core of the chapter argues that vendor-provided benchmark performance is a poor predictor of local performance because models are sensitive to the specific data distributions, clinical workflows, and cultural contexts of individual institutions. Evaluation must therefore be a multi-stage process that begins with local validation and "shadow" deployments to confirm safety and utility before live use. Once deployed, models inevitably suffer from "drift"—technical decay, operational shifts, or conceptual changes—that can only be caught through active, ongoing monitoring. While the technical principles of drift detection remain constant, the chapter demonstrates that the key performance indicators (KPIs), relevant stakeholders, and ethical obligations vary significantly across the AMC’s four domains. Clinical monitoring prioritizes patient safety and equity; research monitoring focuses on reproducibility and provenance; education monitoring guards against the erosion of foundational skills; and business operations monitoring balances efficiency with employment equity. Ultimately, effective oversight requires a shift from technical "human-in-the-loop" checks to participatory systems of governance that involve patients, faculty, and frontline staff in the continuous evaluation of whether a tool remains fit for its intended purpose.

## 2. Section outline

1.  **The Mirage of Static Performance:** Arguments for why local validation is mandatory and why "benchmarking" is an insufficient indicator of real-world safety in a specific AMC environment.
2.  **Pre-deployment Evaluation: The Anatomy of a Decision:** A description of the "shadow mode" deployment phase, red-teaming for LLM-specific failures, and the application of TRIPOD+AI and DECIDE-AI reporting standards.
3.  **Post-deployment Monitoring: Detecting Silent Drift:** An analysis of the technical, operational, and concept drift that occurs over time, using the pharmacovigilance model as a framework for AI safety.
4.  **Clinical Dimensions: Safety, Equity, and Patient Engagement:** Focuses on patient safety KPIs, demographic bias tracking under HHS 1557, and the shift toward participatory governance involving patient advisory boards.
5.  **Research Integrity: Reproducibility in the Age of AI:** Examines how to monitor for publication bias, p-hacking, and the "recursive drift" that occurs when models are trained on AI-generated data.
6.  **Education: Protecting Foundational Learning:** Discusses the monitoring of student learning outcomes and the move from AI detection tools to authentic assessment as an integrity safeguard.
7.  **Business Operations: Efficiency without Exploitation:** KPIs for revenue cycle management and administrative throughput, balanced against monitoring for algorithmic hiring bias and labor relations impact.
8.  **Decommissioning and Governance Escalation:** Defines the "kill switch" criteria for retiring models that no longer meet safety or utility thresholds and the governance pathways for remediation.

## 3. Annotated source list

1.  **Collins GS, et al. (2024). TRIPOD+AI statement: updated guidance for reporting clinical prediction models that use regression or machine learning methods. BMJ.**
    - DOI: 10.1136/bmj-2023-078378
    - *Annotation:* The 2024 update to the gold-standard reporting guideline for prediction models. It expands the 2015 TRIPOD checklist to include AI-specific requirements like hyperparameter tuning and feature engineering. It supports the chapter's argument for transparent pre-deployment reporting.
    - *Flag:* `peer-reviewed`

2.  **Coalition for Health AI (CHAI). (2025). CHAI Applied Model Card Framework.**
    - URL: <https://github.com/coalitionforhealthai/model-card>
    - *Annotation:* Released in January 2025, this framework provides the "nutrition label" for health AI, focusing on HTI-1 compliance and transparency regarding training populations and known biases. It is the primary reference for the "KPI taxonomy" and "Technical KPI" sections.
    - *Flag:* `institutional-policy`

3.  **FDA. (2025). Artificial Intelligence-Enabled Device Software Functions: Lifecycle Management and Marketing Submission Recommendations (Draft Guidance).**
    - URL: <https://www.fda.gov/regulatory-information/search-fda-guidance-documents/>
    - *Annotation:* Issued January 7, 2025, this landmark draft guidance formalizes the Total Product Lifecycle (TPLC) approach, mandating real-world performance monitoring and active surveillance for performance drift and bias.
    - *Flag:* `regulatory-primary`

4.  **Wong A, et al. (2021). External Validation of a Widely Implemented Proprietary Sepsis Prediction Model in Hospitalized Patients. JAMA Internal Medicine.**
    - DOI: 10.1001/jamainternmed.2021.2626
    - *Annotation:* A critical study documenting the poor performance (AUC 0.63) of the Epic Sepsis Model when validated at a local site (Michigan Medicine), significantly lower than vendor-reported values. Supports the argument that benchmarking is a poor predictor of local performance.
    - *Flag:* `peer-reviewed`

5.  **Vasey B, et al. (2022). Reporting guideline for the early-stage clinical evaluation of decision support systems driven by artificial intelligence: DECIDE-AI. Nature Medicine.**
    - DOI: 10.1038/s41591-022-01772-9
    - *Annotation:* Already in bib; provides the standard for evaluating AI in its early, "shadow" or "pilot" phases. Essential for the "Pre-deployment" section of the outline.
    - *Flag:* `peer-reviewed`

6.  **Pillai et al. (2025). Principles and Practices of Community Engagement in AI for Population Health. NIH PubMed.**
    - [PUBMED-PENDING: Pillai 2025 — Community Engagement in AI for Population Health — JMIR Public Health and Surveillance]
    - *Annotation:* Highlights the "engagement gap" in AI governance and proposes the IAP2 spectrum for moving from "inform" to "empower" in patient participation. Supports the Participatory Governance section.
    - *Flag:* `peer-reviewed`

7.  **Finlayson SG, et al. (2021). The Clinician and Dataset Shift in Artificial Intelligence. New England Journal of Medicine.**
    - DOI: 10.1056/nejmc2104626
    - *Annotation:* Already in bib; documents how COVID-19 induced dataset shift rendered many clinical models inaccurate. Essential for explaining "concept drift."
    - *Flag:* `peer-reviewed`

8.  **HHS Office for Civil Rights. (2024). Nondiscrimination in Health Programs and Activities (Section 1557 Final Rule).**
    - URL: <https://www.hhs.gov/civil-rights/for-individuals/section-1557/index.html>
    - *Annotation:* Establishes an affirmative duty for health systems to identify and mitigate discrimination in their use of clinical decision support tools. This is the legal "stick" for equity monitoring.
    - *Flag:* `regulatory-primary`

9.  **ACGME. (2025). Common Program Requirements: July 2025 Updates.**
    - URL: <https://www.acgme.org/what-we-do/accreditation/common-program-requirements/>
    - *Annotation:* New 2025 requirements for human-AI teamwork and institutional AI use policies in residency programs. Supports the Education domain monitoring section.
    - *Flag:* `professional-society`

10. **Liang W, et al. (2023). GPT detectors are biased against non-native English writers. Patterns.**
    - DOI: 10.1016/j.patter.2023.100779
    - *Annotation:* Demonstrates that AI detection tools frequently produce false positives for non-native English speakers. Supports the argument against using "policing" tools for integrity monitoring in education.
    - *Flag:* `peer-reviewed`

11. **Salloch S & Eriksen A. (2024). From 'Human in the Loop' to a Participatory System of Governance for AI in Healthcare. Bioethics.**
    - [PUBMED-PENDING: Salloch 2024 — Participatory System of Governance for AI — Bioethics]
    - *Annotation:* Argues for structural community oversight over individual clinical oversight. Provides the philosophical framing for section 7 of the outline.
    - *Flag:* `peer-reviewed`

12. **U.S. Senate Committee on Homeland Security. (2024). AI in Medicare Advantage: A Review of Care Denials.**
    - URL: <https://www.hsgac.senate.gov/wp-content/uploads/2024-Senate-MA-AI-Report.pdf>
    - *Annotation:* Documents AI-driven care denial rates up to 16x higher than human-led reviews. Provides a concrete example of business/operational monitoring failures.
    - *Flag:* `regulatory-primary`

13. **[PUBMED-PENDING: Mitchell 2019 — Model Cards for Model Reporting — Proceedings of FAT*]**
    - *Annotation:* The foundational paper on Model Cards. Essential for the technical KPI section and "CHAI model card" implementation.
    - *Flag:* `peer-reviewed`

14. **[PUBMED-PENDING: Bedoya 2022 — ABCDS Framework for Local Deployment — JAMIA]**
    - *Annotation:* Already in bib; describes the "shadow deployment" and "silent pilot" process. Core to the strategy of pre-deployment evaluation.
    - *Flag:* `peer-reviewed`

15. **[PUBMED-PENDING: Wong 2025 — AI-Assisted Oncology Survival Prediction Degradation — Communications Medicine]**
    - *Annotation:* Documentation of performance decay in oncology AI due to laboratory utilization shifts. Provides a post-sepsis clinical drift example.
    - *Flag:* `peer-reviewed`

16. **[PUBMED-PENDING: Freeman 2025 — The Educate, Enable, Expect Model for AI Integrity — International Journal for Educational Integrity]**
    - *Annotation:* Proposes moving monitoring from detection to transparency and "AI Use Statements." Core for the Education domain section.
    - *Flag:* `peer-reviewed`

17. **New York City Council. (2021/2023). Local Law 144: Automated Employment Decision Tools.**
    - URL: <https://www.nyc.gov/site/dca/about/automated-employment-decision-tools.page>
    - *Annotation:* Mandates annual bias audits for AI tools used in hiring and promotion. Primary source for "Business Operations" equity monitoring.
    - *Flag:* `regulatory-primary`

18. **[PUBMED-PENDING: Banerjee 2025 — Patient Trust in Artificial Intelligence — Nature Digital Medicine]**
    - *Annotation:* Qualitative study identifying trust as the critical factor for adoption and the role of early involvement in building it.
    - *Flag:* `peer-reviewed`

19. **[PUBMED-PENDING: Gymrek 2013 — Identifying Personal Genomes by Surname Inference — Science]**
    - *Annotation:* Foundational paper for "reproducibility" and "provenance" risks in research AI, specifically regarding re-identification from "de-identified" data.
    - *Flag:* `peer-reviewed`

20. **[PUBMED-PENDING: Tierney 2024 — Ambient AI Scribes documentation burden — NEJM Catalyst]**
    - *Annotation:* Provides metrics for "Operational KPIs" in business/clinical crossovers (reduction in documentation time vs. error rates).
    - *Flag:* `peer-reviewed`

21. **[PUBMED-PENDING: Ghassemi 2021 — False Hope of Explainability in Health Care AI — Lancet Digital Health]**
    - *Annotation:* Already in bib; cautions that technical "explainability" is not a substitute for rigorous outcome monitoring. Supports section 3.
    - *Flag:* `peer-reviewed`

22. **Coalition for Health AI (CHAI). (2024). Assurance Standards Guide (Draft).**
    - URL: <https://www.coalitionforhealthai.org/publications/>
    - *Annotation:* Technical requirements for the AI lifecycle, aligning with NIST AI RMF. Essential for the "KPI Architecture" section.
    - *Flag:* `institutional-policy`

23. **AMA. (2024). AMA Principles for Augmented Intelligence Development, Deployment, and Use.**
    - URL: <https://www.ama-assn.org/practice-management/digital/ama-principles-augmented-intelligence-development-deployment-and-use>
    - *Annotation:* Provides professional-society standards for "meaningful human oversight" and "post-deployment monitoring."
    - *Flag:* `professional-society`

24. **[PUBMED-PENDING: McDonald 2025 — Bias in AI Detectors for L2 Writers — Higher Education]**
    - *Annotation:* 2025 update confirming that detection tools disproportionately flag non-native writers, reinforcing the case for authentic assessment.
    - *Flag:* `peer-reviewed`

25. **ICMJE. (2023). Recommendations for Scholarly Work in Medical Journals.**
    - URL: <https://www.icmje.org/recommendations/>
    - *Annotation:* Standardizes AI disclosure requirements for research. Primary source for monitoring research provenance.
    - *Flag:* `professional-society`

## 4. Candidate figures and tables

1.  **AI Lifecycle Monitoring Diagram**
    - *Description:* A Mermaid lifecycle diagram showing the path from pre-deployment evaluation (local validation, shadow deployment, red-teaming) to the go/no-go decision, followed by live deployment, ongoing monitoring (drift, bias, utility), and the escalation loop for remediation or retirement.
    - *Type:* `mermaid-diagram`
    - *Sketch:* Nodes representing stages: [Eval] -> [Shadow] -> [Decision] -> [Live] -> [Monitor]. Monitor has three sub-nodes: [Technical], [Operational], [Outcome]. Feedback loop from [Monitor] back to [Eval] or [Retire].

2.  **Domain Comparison Table**
    - *Description:* Compares how monitoring differs across the four domains. Rows: Clinical, Research, Education, Business Ops. Columns: Primary KPI Type, Key Stakeholders, Main Ethical Obligation, Governance Body, Example Metric.
    - *Type:* `data-table`
    - *Sketch:* 
        - Clinical: Safety/Equity, Patients, Non-maleficence, AMC AI Committee, AUC-ROC vs. Patient Harm.
        - Research: Reproducibility, Researchers/IRB, Integrity, IRB, Data Provenance Hash.
        - Education: Learning Outcomes, Faculty/Students, Competency, Curriculum Committee, Assessment Validity.
        - Business: Efficiency/Equity, Admin Staff, Fairness, CFO/HR, Denial Rate % vs. Hiring Bias Audit.

3.  **KPI Taxonomy for AMC AI**
    - *Description:* A table categorizing KPIs into Technical, Operational, and Outcome categories.
    - *Type:* `data-table`
    - *Sketch:* 
        - Technical: Calibration, covariate shift, hallucination rate (interprets: MLOps/Data Science).
        - Operational: Utilization rate, override rate, time-to-task (interprets: Department Heads).
        - Outcome: Mortality, denial rates, student competency scores (interprets: QM/Deans).

4.  **The "Nutritional Label" (CHAI Model Card Sample)**
    - *Description:* A Graphviz or simple data-table representation of a simplified CHAI Applied Model Card for a hypothetical sepsis model.
    - *Type:* `graphviz-diagram`
    - *Sketch:* Boxes showing "Intended Use," "Exclusion Criteria," "Demographic Performance," and "Re-training Trigger."

## 5. Open questions for the author

1.  **CHAI Assurance Lab Status:** The dossier notes CHAI intends to certify Independent Assurance Labs by April 2025. The author should check if the first labs are operational and if any major AMC has formally partnered with one for third-party monitoring.
2.  **FDA TPLC Draft vs. Final:** The January 2025 TPLC guidance is currently a *draft*. The author must verify if a final version or updated enforcement memo has been issued by the time of writing.
3.  **Participatory Design Maturity:** The literature (e.g., Pillai 2025) suggests methods like "Research Advisory Groups" are effective, but many remain pilots. The author should decide whether to frame these as "best practices" or "emerging experimental models."
4.  **Education vs. General Higher-Ed:** While health-professions-specific literature (ACGME 2025) is emerging, much of the integrity monitoring research is general higher-ed. The author should confirm the balance of domain-specific vs. general sources.
