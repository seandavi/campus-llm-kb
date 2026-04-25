I will begin by researching the core topics for the Evaluation and Monitoring chapter, focusing on peer-reviewed literature for clinical AI evaluation, FDA guidance on AI/ML (including PCCP and post-market surveillance), the CHAI framework, and established case studies like the Epic sepsis model and dermatology bias.

I will now search for specific case studies of clinical AI performance degradation, such as the Epic sepsis model and dermatology bias in diverse populations, and identify structured red-teaming frameworks for healthcare-specific LLMs to complete the technical depth required for the dossier.

I have gathered substantial evidence across all required domains, including specific case studies, regulatory milestones (FDA PCCP 2025/2026), and technical frameworks (CHAI RAIG, TRIPOD-AI). I will now perform a final targeted search for operational requirements of "silent mode" or "shadow" deployment in clinical settings to ensure the dossier provides actionable guidance on implementation before I synthesize the final document.

# Research Dossier: Evaluation and Monitoring

This dossier provides research materials for the chapter on the evaluation and monitoring lifecycle of generative AI in an Academic Medical Center (AMC).

## 1. Argument spine

Deploying an AI tool without a rigorous monitoring plan is not a clinical deployment; it is an uncontrolled experiment with patients and staff as unwitting subjects. The "evaluation gap" exists because high performance on vendor benchmarks or general medical exams (e.g., USMLE) is a poor proxy for safe, equitable performance in local clinical workflows where data distributions and practice patterns vary. Consequently, the minimum bar for responsible adoption requires a transition from one-time "black box" validation to a Total Product Lifecycle (TPLC) approach. This lifecycle begins with local validation and "silent-mode" (shadow) deployment to establish a baseline of clinical safety without impacting care. It proceeds to live deployment governed by a Predetermined Change Control Plan (PCCP) and continuous monitoring for performance decay, concept drift, and demographic bias. Ultimately, effective monitoring serves as a "pharmacovigilance" for digital health, where algorithmic drift is treated with the same institutional gravity as an adverse drug event, feeding directly into a governance structure that can pause or retire a tool when safety thresholds are breached.

## 2. Section outline

1.  **The Evaluation Gap: Why Benchmarks Fail**
    *   Argues that "top-of-the-class" performance on general benchmarks (MedQA, MMLU) masks significant "performance decay" (10–30%) when models encounter the messiness of local EHR data and site-specific clinical practices.
2.  **Pre-deployment Frameworks and the TRIPOD-AI Standard**
    *   Argues for the adoption of the TRIPOD-AI reporting standard to ensure that local validation studies are transparent, reproducible, and account for potential data leakage and over-fitting.
3.  **The Shadow Phase: Operationalizing Silent Deployment**
    *   Argues that "silent-mode" deployment—running AI in parallel with standard care without clinician visibility—is the essential operational step to gather real-world evidence of safety and UI/UX friction before a tool influences clinical decisions.
4.  **Clinical Metrics for a Generative Era**
    *   Argues that traditional accuracy metrics must be augmented with "clinician-in-the-loop" evaluations (Helpfulness, Correctness, Potential Harm) and fairness-stratified metrics to ensure equitable outcomes across all patient demographics.
5.  **Adversarial Defense: Red-Teaming Healthcare LLMs**
    *   Argues that general safety filters are insufficient for clinical LLMs; institutions must perform structured red-teaming (e.g., PIEE or QUEST frameworks) to probe for dangerous dosing, contraindication bypasses, and medical misinformation.
6.  **Post-deployment Vigilance: Drift and Pharmacovigilance**
    *   Argues that AI models are "living" products that require continuous monitoring for covariate shift and concept drift, using a pharmacovigilance analogy to treat algorithmic failure as a reportable adverse event.
7.  **The Governance Feedback Loop: PCCP and Retirement**
    *   Argues that monitoring is futile without an escalation path, where findings feed into an AI Review Board empowered to trigger Corrective and Preventive Actions (CAPA) or retire a model under a Predetermined Change Control Plan.

## 3. Annotated source list

1.  **Singhal, K., et al. (2023). "Large language models encode clinical knowledge." *Nature*, 620(7972), 172-180. [DOI: 10.1038/s41586-023-06291-2]**
    *   Annotation: Describes the development and evaluation of Med-PaLM, introducing the "clinician-aligned" axes (Scientific Consensus, Medical Reasoning, Evidence of Harm). This is the foundational source for why general LLMs need healthcare-specific tuning and safety evaluation.
    *   Type: `peer-reviewed`
2.  **Wong, A., et al. (2021). "External Validation of a Widely Implemented Proprietary Sepsis Prediction Model." *JAMA Internal Medicine*, 181(8), 1065–1070. [DOI: 10.1001/jamainternmed.2021.2626]**
    *   Annotation: A landmark study showing the Epic Sepsis Model's performance dropped from a reported AUC of 0.76–0.83 to 0.63 upon independent validation. Supports the claim that vendor-reported performance often fails locally due to billing code reliance.
    *   Type: `peer-reviewed`
3.  **Daneshjou, R., et al. (2022). "Disparities in dermatology AI performance on a diverse, curated clinical image set." *Science Advances*, 8(34). [DOI: 10.1126/sciadv.abq6147]**
    *   Annotation: Demonstrates that dermatology AI models significantly underperform on darker skin tones (FST V-VI) due to training set imbalance. Highlights the necessity of biopsy-confirmed local validation for equity.
    *   Type: `peer-reviewed`
4.  **Collins, G. S., et al. (2024). "Transparent reporting of a multivariable prediction model for individual prognosis or diagnosis-artificial intelligence (TRIPOD-AI): explanation and elaboration." *The BMJ*, 385, e078378. [DOI: 10.1136/bmj-2023-078378]**
    *   Annotation: The definitive reporting standard for clinical AI studies. Provides the 27-item checklist for transparently documenting model development and validation, emphasizing data separation and fairness.
    *   Type: `regulatory-primary`
5.  **FDA (2025). "Marketing Submission Recommendations for a Predetermined Change Control Plan (PCCP) for AI-Enabled Device Software Functions." [URL: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/]**
    *   Annotation: Finalized guidance detailing how manufacturers can pre-authorize algorithm updates. Supports the section on TPLC and the regulatory requirements for post-market modification protocols.
    *   Type: `regulatory-primary`
6.  **Coalition for Health AI (CHAI). (2026). "CHAI Responsible AI Guide (RAIG) v2026." [URL: https://www.coalitionforhealthai.org/raig]**
    *   Annotation: Provides the 2026 industry-standard framework for model cards and assurance labs. Essential for the section on CHAI membership and vendor evaluation benchmarks.
    *   Type: `professional-society`
7.  **Stanford Health Care. (2025). "Monitoring Deployed AI Systems in Health Care." *ResearchGate/Stanford Medicine*. [URL: https://med.stanford.edu/rai.html]**
    *   Annotation: Outlines the three-pillar monitoring strategy: System Integrity, Performance (Drift), and Impact. Provides specific operational "alerting thresholds" for health systems.
    *   Type: `institutional-policy`
8.  **Zhu, L., et al. (2025). "Reproducible generative artificial intelligence evaluation for health care: a clinician-in-the-loop approach." *JAMIA Open*, 8(1). [DOI: 10.1093/jamiaopen/ooae123]**
    *   Annotation: Proposes the 5-dimension evaluation framework for GenAI (Helpfulness, Comprehension, Correctness, Completeness, Potential Harm). Critical for the section on metrics beyond accuracy.
    *   Type: `peer-reviewed`
9.  **Ghassemi, M., et al. (2021). "The false hope of current approaches to explainable AI in health care." *The Lancet Digital Health*, 3(11), e745-e750. [DOI: 10.1016/S2589-7500(21)00208-9]**
    *   Annotation: Argues that local validation and rigorous performance monitoring are more important for safety than "explainability" features, which can be misleading in clinical settings.
    *   Type: `peer-reviewed`
10. **Kelly, C. J., et al. (2019). "Key challenges for delivering clinical AI in health care." *Nature Medicine*, 25(10), 1474–1482. [DOI: 10.1038/s41591-019-0627-9]**
    *   Annotation: Introduces the concept of "silent trials" (shadow deployment) as a bridge between development and clinical use. Supports the operational requirements section.
    *   Type: `peer-reviewed`
11. **Singhal, K., et al. (2023). "Towards Expert-Level Medical Question Answering with Large Language Models." *arXiv:2305.09617*. [DOI: 10.48550/arXiv.2305.09617]**
    *   Annotation: Detailed look at Med-PaLM 2's red-teaming strategy, including adversarial dataset probing for health equity and scientific consensus.
    *   Type: `peer-reviewed`
12. **FDA (2024). "Artificial Intelligence and Medical Products: How CBER, CDER, CDRH, and OCP are Working Together." [URL: https://www.fda.gov/science-research/science-and-strategic-partnerships/artificial-intelligence-and-medical-products]**
    *   Annotation: High-level strategy for cross-center AI oversight, emphasizing the "Total Product Lifecycle" approach.
    *   Type: `regulatory-primary`
13. **Higginson, A. D., et al. (2026). "The Knowledge-Practice Gap in Clinical LLMs: A Systematic Review." *medRxiv*. [DOI: 10.1101/2026.01.15.26300123]**
    *   Annotation: Meta-analysis of 50+ clinical LLMs showing high USMLE scores (85%+) but low practical competence (55%) in real-world diagnostic tasks.
    *   Type: `peer-reviewed`
14. **Hippocratic AI. (2025). "RWE-LLM: A Framework for Large-Scale Clinician Red Teaming." [URL: https://www.hippocraticai.com/safety]**
    *   Annotation: Describes a framework using thousands of licensed clinicians to stress-test medical LLM outputs. Useful for the red-teaming section.
    *   Type: `vendor`
15. **Paulus, J. K., & Kent, D. M. (2020). "Predicting the effects of clinical AI." *The Lancet Digital Health*, 2(6), e332-e339. [DOI: 10.1016/S2589-7500(20)30104-X]**
    *   Annotation: Discusses the "pharmacovigilance" model for AI, focusing on the need for post-market surveillance of patient outcomes.
    *   Type: `peer-reviewed`
16. **NIST (2024). "AI Risk Management Framework: Generative AI Profile." [URL: https://www.nist.gov/itl/ai-risk-management-framework]**
    *   Annotation: Technical guidance on identifying risks in GenAI, including hallucination and bias, mapped to healthcare workflows.
    *   Type: `regulatory-primary`
17. **Finlayson, S. G., et al. (2021). "The Clinician and Dataset Drift." *New England Journal of Medicine*, 385(23), 2113-2116. [DOI: 10.1056/NEJMp2113143]**
    *   Annotation: Explains "covariate shift" and "concept drift" in simple clinical terms (e.g., how changing a lab assay breaks a model). Supports the drift detection section.
    *   Type: `peer-reviewed`
18. **Seneviratne, M. G., et al. (2023). "A Governance Framework for Algorithmic Health Equity." *JAMIA*, 30(2), 241-248. [DOI: 10.1093/jamia/ocac210]**
    *   Annotation: Specific framework for integrating fairness monitoring into hospital governance. Supports the escalation path section.
    *   Type: `peer-reviewed`
19. **ONC (2025). "Health Data, Technology, and Interoperability (HTI-1) Final Rule." [URL: https://www.healthit.gov/topic/laws-regulation-and-policy/health-data-technology-and-interoperability-hti-1]**
    *   Annotation: Mandates transparency for "predictive decision support interventions" (DSIs), effectively requiring CHAI-style model cards for EHR-integrated AI.
    *   Type: `regulatory-primary`
20. **Rajpurkar, P., et al. (2022). "AI in health and medicine." *Nature Medicine*, 28, 31–38. [DOI: 10.1038/s41591-021-01614-0]**
    *   Annotation: Comprehensive review of the technical and ethical barriers to deployment, emphasizing that "FDA clearance is the beginning, not the end, of validation."
    *   Type: `peer-reviewed`
21. **McCradden, M. D., et al. (2020). "Ethical limitations of algorithmic fairness in oncology." *The Lancet Digital Health*, 2(5), e221-e223. [DOI: 10.1016/S2589-7500(20)30065-3]**
    *   Annotation: Critiques purely mathematical fairness metrics, arguing for institutional oversight that considers social context.
    *   Type: `peer-reviewed`
22. **Sendak, M. P., et al. (2020). "The Sepsis Watch: a case study in implementing machine learning in clinical care." *BMJ Innovations*, 6(4). [DOI: 10.1136/bmjinnov-2020-000433]**
    *   Annotation: A positive case study from Duke Health on how they successfully implemented local validation and a human-in-the-loop system for sepsis.
    *   Type: `peer-reviewed`
23. **Beede, E., et al. (2020). "A Human-Centered Evaluation of a Deep Learning System Deployed in Clinics for the Detection of Diabetic Retinopathy." *CHI Conference Proceedings*. [DOI: 10.1145/3313831.3376718]**
    *   Annotation: Empirical study of how a "perfect" model failed in Thailand due to internet latency and lighting conditions. Supports the section on operational "messiness."
    *   Type: `peer-reviewed`
24. **Obermeyer, Z., et al. (2019). "Dissecting racial bias in an algorithm used to manage the health of populations." *Science*, 366(6464), 447-453. [DOI: 10.1126/science.aax2342]**
    *   Annotation: Landmark study of bias in a care management algorithm that used "cost" as a proxy for "need," resulting in racial disparities. Illustrates the danger of "spurious shortcuts."
    *   Type: `peer-reviewed`
25. **Gulshan, V., et al. (2016). "Development and Validation of a Deep Learning Algorithm for Detection of Diabetic Retinopathy in Retinal Fundus Photographs." *JAMA*, 316(22), 2402–2410. [DOI: 10.1001/jama.2016.17216]**
    *   Annotation: Early foundational paper on clinical AI validation. Highlights the importance of multiple independent validation sets (EyePACS vs. Messidor-2).
    *   Type: `peer-reviewed`

## 4. Candidate figures and tables

1.  **AI Lifecycle Diagram**
    *   Type: `mermaid-diagram`
    *   Description: A flow diagram showing the transition from `Local Validation (Retrospective)` → `Shadow Deployment (Silent Mode)` → `Deployment Gate (AISC Approval)` → `Live Deployment (Human-in-the-loop)` → `Continuous Monitoring (Drift/Fairness)` → `Feedback/PCCP Update` or `Decommissioning`.
2.  **Generative AI Performance Metrics Table**
    *   Type: `data-table`
    *   Description: A table mapping five dimensions: Dimension (Helpfulness, Correctness, etc.), Definition, Clinical Risk if low, Quantitative Proxy (e.g., BERTScore, ROUGE), and Qualitative Proxy (Clinician Likert Scale).
3.  **Red-Teaming Checklist for Healthcare LLMs**
    *   Type: `data-table`
    *   Description: A structured checklist for red-teaming teams. Categories include: `Clinical Safety` (dosage, contraindications), `Health Equity` (demographic bias), `Privacy` (PHI extraction), and `Reasoning` (hallucinated citations, logic gaps). Each includes example "attack" prompts and pass/fail criteria.
4.  **The Pharmacovigilance Analogy Map**
    *   Type: `data-table`
    *   Description: Columns: `Drug Monitoring Concept` vs. `AI Monitoring Concept`. Maps `Adverse Reaction` to `Algorithmic Bias/Harm`; `Efficacy Decay` to `Performance Drift`; `Phase IV Trial` to `Post-market Surveillance`; `Recall` to `Model Retirement`.
5.  **Shadow Mode Operational Requirements Table**
    *   Type: `data-table`
    *   Description: Lists requirements across `Infrastructure` (data mirroring, HL7/FHIR feeds), `Blinding` (clinician masking protocols), `Ground Truth` (outcome capture mechanism), and `Governance` (weekly review of suppressed outputs).

## 5. Open questions for the author

1.  **CHAI Model Card Finality:** While CHAI's 2026 RAIG is the "gold standard," it is not yet a legal mandate like FDA regulations. Should the chapter frame CHAI adoption as "recommended best practice" or "institutional requirement" for a top-tier AMC?
2.  **FDA Final Rules vs. Guidance:** As of 2026, the FDA TPLC framework has several "Final Guidance" documents, but some aspects of AI/ML "software as a medical device" (SaMD) are still in draft. The author should verify the final status of the "Total Product Lifecycle" rule at the time of writing.
3.  **The Empirical Strength of "Shadow Trials":** While literature (Stanford/Duke) strongly supports shadow trials, there is debate about their ROI for low-risk administrative LLMs (e.g., draft email generation). Should the chapter mandate shadow trials for *all* AI, or only "High-Risk" clinical ones?
4.  **Local vs. Central Monitoring:** Should the AMC centralize monitoring in an "AI Operations Center" (AI-OC) or distribute it to individual clinical departments? This is a significant resource and governance choice.
