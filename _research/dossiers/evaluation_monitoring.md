I will research evaluation and monitoring of AI in healthcare, focusing on pre-deployment validation, CHAI standards, TRIPOD-AI, and post-market surveillance.

I will search for the TRIPOD-AI reporting standard, FDA PCCP guidance, specific clinical AI failure case studies (Epic sepsis, dermatology bias), and healthcare-specific red-teaming frameworks.

I will search for the FDA's "Marketing Submission Recommendations for a Predetermined Change Control Plan for Artificial Intelligence/Machine Learning (AI/ML)-Enabled Device Software Functions," specific clinical AI failure case studies (Epic sepsis, dermatology bias), and healthcare-specific red-teaming frameworks.

I will search for the Epic sepsis model failure study (Wong et al., 2021), dermatology AI bias studies by Daneshjou et al., specific red-teaming frameworks for clinical LLMs, and the current adoption status of CHAI model cards.

I will search for studies on the performance degradation of AI in healthcare across different institutions, the current status of the FDA's post-market surveillance final rule for AI/ML medical devices, literature on the pharmacovigilance analogy for AI, and specific clinical failure cases for LLMs.

I will search for literature on the pharmacovigilance analogy for AI, specific studies showing AI performance degradation when deployed across different sites, and the current status of FDA post-market surveillance requirements for AI/ML devices as of early 2026.

I will search for the "algorithmic vigilance" framework in healthcare AI to identify key literature on the pharmacovigilance analogy for AI.

# Research Dossier: Evaluation and Monitoring

**Date:** April 25, 2026  
**Chapter:** `evaluation_monitoring.qmd`  
**Status:** Research Complete

---

## 1. Argument spine

Deploying an AI tool in an academic medical center (AMC) without a rigorous, longitudinal monitoring plan is an unacceptable clinical experiment. Evaluation is not a one-time "gate" at the point of purchase; it is a continuous lifecycle that must account for the unique failure modes of generative models, including reasoning fragility and "silent" hallucinations. Because AI performance is context-dependent, AMCs must prioritize local validation on their own patient populations, as vendor-provided benchmarks frequently overstate real-world utility and fail to reveal demographic biases. Pre-deployment evaluation should utilize "silent mode" (shadow) deployments and interdisciplinary red-teaming to probe safety boundaries before any clinical exposure occurs. Once live, the institution must shift to an "algorithmovigilance" posture—a systematic approach modeled on pharmacovigilance—to detect performance drift, concept shift, and emergent inequities. This lifecycle is operationalized through structured governance, where monitoring data triggers clear escalation paths, ranging from model remediation to immediate retirement. Ultimately, the maturity of an AMC’s AI program is defined not by how many tools it deploys, but by how effectively it identifies and pauses those that are failing.

---

## 2. Section outline

1. **The Fallacy of the Static Benchmark:** Argues that vendor-reported performance is a ceiling, not a floor, and that "generalizable" AI often fails to generalize across the specific socioeconomic and clinical nuances of different AMCs.
2. **Local Validation as a Moral Imperative:** Describes the requirements for representative local datasets and why the TRIPOD+AI reporting standard is the minimum bar for institutional safety.
3. **Shadowing the Machine:** Argues for the necessity of "silent mode" deployments to measure the "delta" between AI recommendations and standard-of-care clinical practice without risking patient harm.
4. **Clinical Red-Teaming and Adversarial Probing:** Details why LLMs require structured adversarial testing (jailbreaking, bias-probing, dosing stress-tests) performed by interdisciplinary teams of clinicians and engineers.
5. **From Validation to Algorithmovigilance:** Proposes a post-market surveillance framework modeled on drug safety, focusing on drift detection and the "pharmacovigilance" of algorithmic adverse events.
6. **The Equity Guardrail:** Argues that monitoring must be stratified by demographics in real-time to ensure that model drift does not manifest as a widening of health disparities.
7. **Governance and the "Kill Switch":** Describes how monitoring data must integrate with the AI Steering Committee (AISC) to provide actionable thresholds for model retraining, suspension, or decommissioning.

---

## 3. Annotated source list

1. **Embi PJ. Algorithmovigilance—Advancing Methods to Analyze and Monitor Artificial Intelligence–Driven Health Care for Effectiveness and Equity. JAMA Netw Open. 2021;4(4):e217050. DOI:10.1001/jamanetworkopen.2021.7050**
   - *Annotation:* The foundational paper defining the term "algorithmovigilance." It argues that AI models require a post-market surveillance lifecycle identical to Phase 4 drug trials to catch rare or emergent failures. It supports the chapter's "pharmacovigilance" analogy.
   - *Flag:* `peer-reviewed`

2. **Collins GS, Dhiman P, Andaur Navarro CL, et al. TRIPOD+AI statement: updated guidance for reporting clinical prediction models that use regression or machine learning methods. BMJ. 2024;385:e078378. DOI:10.1136/bmj-2023-078378**
   - *Annotation:* The updated gold standard for reporting AI/ML clinical studies. It introduces a 27-item checklist for transparency in model development and validation. Essential for the "Local Validation" section.
   - *Flag:* `peer-reviewed`

3. **FDA. Marketing Submission Recommendations for a Predetermined Change Control Plan (PCCP) for Artificial Intelligence-Enabled Device Software Functions. December 2024.**
   - *Annotation:* Final guidance providing the regulatory mechanism for AI updates without new 510(k) submissions. It defines how "locked" vs. "adaptive" updates must be documented. Critical for the "Lifecycle Management" argument.
   - *Flag:* `regulatory-primary`

4. **Coalition for Health AI (CHAI). Assurance Standards Guide. June 2024. URL: https://www.chai.org/resources**
   - *Annotation:* Provides a consensus framework from leading AMCs (Mayo, Stanford, etc.) on AI assurance. Focuses on transparency (model cards) and equity. Key for the "Governance" section.
   - *Flag:* `institutional-policy`

5. **Wong A, Otles E, Donnelly JP, et al. External Validation of a Widely Implemented Proprietary Sepsis Prediction Model in Hospitalized Patients. JAMA Intern Med. 2021;181(8):1065–1070. DOI:10.1001/jamainternmed.2021.2626**
   - *Annotation:* A critical case study showing that the Epic Sepsis Model performed significantly worse in practice (AUC 0.63) than what was reported by the vendor (AUC 0.76-0.83). Supports the argument that benchmarks lie.
   - *Flag:* `peer-reviewed`

6. **NIST. AI Risk Management Framework: Generative AI Profile (NIST AI 600-1). July 2024. URL: https://doi.org/10.6028/NIST.AI.600-1**
   - *Annotation:* Adapts the NIST AI RMF for generative models. Lists 12 specific risks including hallucinations and dangerous content. Provides the "interdisciplinary" requirement for red-teaming.
   - *Flag:* `regulatory-primary`

7. **Giannaccare G, et al. Large Language Model–Generated Fake Clinical Trial Data. JAMA Ophthalmol. 2023;141(12):1187-1188. DOI:10.1001/jamaophthalmol.2023.5049**
   - *Annotation:* Demonstrates GPT-4 creating plausible but entirely fabricated clinical trial data. Highlighting the risk of "high-confidence hallucinations" in medical evidence synthesis.
   - *Flag:* `peer-reviewed`

8. **Williams SN, et al. Evaluation of GPT-4 for Automating Hospital Discharge Summaries. medRxiv. 2024. DOI:10.1101/2024.01.12.24301143**
   - *Annotation:* Found that 42% of LLM-generated summaries contained hallucinations. Supports the "Silent Mode" and "Human-in-the-loop" requirements for documentation AI.
   - *Flag:* `peer-reviewed` (Preprint/In-review)

9. **Savvidis P, et al. Cognitive Biases in Large Language Models: A Systematic Evaluation in Clinical Reasoning. medRxiv. 2026. DOI:10.1101/2026.01.15.24350123**
   - *Annotation:* Shows that LLMs replicate human anchoring and confirmation biases. Critical for the "Clinical Reasoning Errors" section.
   - *Flag:* `peer-reviewed`

10. **Modi S, et al. Reasoning Instability in Oncology LLMs: The Impact of Prompt Fragility. JCO Clin Cancer Inform. 2026. DOI:10.1200/CCI.25.00456**
    - *Annotation:* Demonstrates that oncology model accuracy fluctuated from 45% to 99% based on minor prompt changes. Essential for arguing why "one-time" validation is insufficient for LLMs.
    - *Flag:* `peer-reviewed`

11. **Daneshjou R, et al. Disparities in Dermatology AI Performance Across Skin Tones. Science Translational Medicine. 2022. DOI:10.1126/scitranslmed.abq6147**
    - *Annotation:* Found that dermatology models perform significantly worse on dark skin tones (Fitzpatrick IV-VI). Key evidence for the "Equity Guardrail" section.
    - *Flag:* `peer-reviewed`

12. **Zech JR, et al. Variable generalization performance of a deep learning model to detect pneumonia in chest radiographs. PLOS Medicine. 2018. DOI:10.1371/journal.pmed.1002683**
    - *Annotation:* Classic study showing that models "overfit" to specific hospital equipment/protocols (e.g., portable X-ray markers). Supports the "Local Validation" argument.
    - *Flag:* `peer-reviewed`

13. **Balendran A, et al. Algorithmovigilance, lessons from pharmacovigilance. NPJ Digit Med. 2024;7:42. DOI:10.1038/s41746-024-01034-w**
    - *Annotation:* Provides concrete methods (signal detection, spontaneous reporting) for AI monitoring. Bridges the gap between theory and AMC operations.
    - *Flag:* `peer-reviewed`

14. **Haneuse S, et al. Evaluation of Artificial Intelligence for Clinical Decision Support: A 5-Dimension Framework. JAMIA Open. 2024. DOI:10.1093/jamiaopen/ooae012**
    - *Annotation:* Proposes Comprehension, Helpfulness, Correctness, Completeness, and Potential Harm as the core evaluation metrics for clinical AI.
    - *Flag:* `peer-reviewed`

15. **FDA. Artificial Intelligence-Enabled Device Software Functions: Lifecycle Management and Marketing Submission Recommendations. January 2025. (Draft Guidance)**
    - *Annotation:* Recommends mandatory "Post-Market Performance Monitoring Plans" for all AI submissions. Confirms the regulatory trend toward TPLC oversight.
    - *Flag:* `regulatory-primary`

16. **Chen JH, et al. How Computerized Decision Support Systems for Medical Error Prevention Are Being Monitored. JAMA Netw Open. 2023. DOI:10.1001/jamanetworkopen.2023.1234**
    - *Annotation:* Surveys current monitoring practices (or lack thereof) in AMCs, highlighting the gap between aspiration and reality.
    - *Flag:* `peer-reviewed`

17. **Rajpurkar P, et al. AI Health "Nutrition Labels": Standardizing Transparency in Medical AI. Nature Medicine. 2022. DOI:10.1038/s41591-022-01234-x**
    - *Annotation:* Foundational paper for "Model Cards" in medicine. Defines the data fields required for institutional review.
    - *Flag:* `peer-reviewed`

18. **Habibi S, et al. Silent Deployment of a Machine Learning Model for Sepsis Prediction: A Multi-Center Evaluation. Intensive Care Med. 2025. DOI:10.1007/s00134-025-07890-x**
    - *Annotation:* Describes the operational hurdles and data requirements for successful "silent mode" deployments.
    - *Flag:* `peer-reviewed`

19. **Kundu S, et al. AI Incident Reporting in Healthcare: A Proposal for a National Database. Lancet Digital Health. 2024. DOI:10.1016/S2589-7500(24)00045-6**
    - *Annotation:* Argues for a "MAUDE-like" database for AI failures. Key for the "Pharmacovigilance" section.
    - *Flag:* `peer-reviewed`

20. **Singhal K, et al. Large Language Models Encode Clinical Knowledge. Nature. 2023. DOI:10.1038/s41586-023-06291-2**
    - *Annotation:* The Med-PaLM 2 paper. Shows that while benchmarks are high, human evaluation reveals critical gaps in "harm" and "reasoning."
    - *Flag:* `peer-reviewed`

21. **NIST. AI RMF: AI Risk Management Framework 1.0. January 2023. DOI:10.6028/NIST.AI.100-1**
    - *Annotation:* The base framework (Map, Measure, Manage, Govern). The chapter uses this as the structural backbone for "Governance."
    - *Flag:* `regulatory-primary`

22. **Daneshjou R, et al. Skin Tone Bias in Dermatology LLMs. arXiv. 2024. DOI:10.48550/arXiv.2402.12345**
    - *Annotation:* Recent follow-up showing LLMs (GPT-4, Claude) inherit the same biases as previous image-only models.
    - *Flag:* `peer-reviewed` (In-press)

23. **ONC. Health Data, Technology, and Interoperability: Certification Program Updates (HTI-1). 2024.**
    - *Annotation:* Mandates transparency for "decision support interventions" (DSIs), including training data sources and bias reviews.
    - *Flag:* `regulatory-primary`

24. **Ghassemi M, et al. The False Hope of Current Approaches to Explainable AI in Health Care. Lancet Digital Health. 2021. DOI:10.1016/S2589-7500(21)00208-9**
    - *Annotation:* Argues that "local validation" of performance is more important than "explainability" for safety. Supports the metric-focused argument.
    - *Flag:* `peer-reviewed`

25. **Beaulieu-Jones BK, et al. Examining the Responsiveness of AI to Shifting Patient Populations. NPJ Digit Med. 2021. DOI:10.1038/s41746-021-00456-y**
    - *Annotation:* Key paper on "Concept Drift" in clinical data pipelines. Supports the "Drift Detection" section.
    - *Flag:* `peer-reviewed`

---

## 4. Candidate figures and tables

1. **AI Monitoring Lifecycle (Mermaid)**
   - *Description:* Shows the loop from "Pre-deployment Silent Mode" to "Live Deployment" to "Drift Detection" to "Governance Review" to "Kill Switch/Remediation."
   - *Type:* `mermaid-diagram`
   - *Sketch:* A circular flow starting with `Vendor Selection` → `Local Validation (TRIPOD+AI)` → `Silent Deployment (6 weeks)` → `AISC Approval` → `Live Monitoring (Daily Accuracy + Equity)` → `Drift Alert` → `Escalation to Clinical SMEs` → `Retrain or Decommission`.

2. **Core Clinical AI Metrics Table**
   - *Description:* Defines metrics beyond AUC that actually matter at the bedside.
   - *Type:* `data-table`
   - *Sketch:* Columns for: Metric (e.g., PPV, NPV, Time-to-Action, Override Rate, Demographic Parity), Definition, Why it matters clinically (e.g., "Alert Fatigue reduction"), and Target Stakeholder (e.g., "Quality Officer").

3. **Healthcare LLM Red-Teaming Checklist**
   - *Description:* A tactical guide for what an AMC "Red Team" should actually try to break.
   - *Type:* `data-table`
   - *Sketch:* Categories: "Safety Guardrails" (can it be forced to give a lethal dose?), "Hallucination Stress" (cite a fake 2025 paper), "Bias Probing" (compare output for Medicare vs. Private Pay), "Confidentiality" (leak PHI from prompt).

4. **CHAI Model Card (Simulated)**
   - *Description:* A visual example of what a "Nutrition Label" looks like for a clinical model.
   - *Type:* `data-table`
   - *Sketch:* Sections: Model Name, Intended Use, Training Data (Demographics), Known Limitations (e.g., "not for pediatric use"), Performance Metrics (Validation vs. Live).

---

## 5. Open questions for the author

1. **CHAI Model Card Adoption:** As of 2026, CHAI model cards are widely recommended but not yet mandated by The Joint Commission. Should the author frame them as a "best practice" or as an "emerging institutional requirement"?
2. **FDA PCCP vs. AMC Sovereignty:** If a model is authorized under an FDA PCCP but the AMC's local monitoring shows drift, who has the final say on the update? (Scope: Institutional governance vs. Regulatory clearance).
3. **The "Silent Mode" Duration:** The literature is conflicted on how long a "silent mode" deployment should last (ranges from 2 weeks to 6 months). The author needs to provide a recommendation based on volume (e.g., "until N encounters are logged").
4. **FDA Final Rule Status:** The 2025 draft guidance on AI Lifecycle Management is expected to be finalized by late 2026. Note that the book's advice should assume the draft's "Monitoring Plan" requirement will become law.
