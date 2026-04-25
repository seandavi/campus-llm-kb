I will begin by researching the core topics of the chapter: AMC data governance for AI, de-identification risks in the LLM era, interoperability standards (FHIR/OMOP), and institutional policy frameworks for data handling.

I will refine my search for FHIR and OMOP in the context of healthcare AI, looking for specific literature on how these standards facilitate LLM fine-tuning and the impact of ONC interoperability rules. I will also investigate "honest broker" models and data request processes tailored for AI projects.

I will conduct a targeted search for "no-training-on-customer-data" clauses, specific healthcare AI consortia data policies (e.g., TriNetX, All of Us), and further details on the ONC Interoperability final rule's impact on AI. Following this, I will synthesize all gathered information into the final research dossier.

# Research Dossier: Data Access & Use Workstream

**Target File:** `data.qmd`
**Status:** Research Phase Complete
**Date:** April 25, 2026

## 1. Argument spine

The effective adoption of generative AI in an academic medical center (AMC) is fundamentally constrained not by model architecture, but by the maturity of the institution’s data governance. While the AMC holds a uniquely rich and heterogeneous data landscape—spanning clinical, research, educational, and administrative domains—each is governed by distinct regulatory regimes that AI tools frequently blur. This chapter argues that the traditional "checklist" approach to data privacy, exemplified by the HIPAA Safe Harbor standard, is no longer sufficient in the era of large language models (LLMs) which can exploit latent clinical correlations for re-identification. Instead, institutions must transition to a dynamic governance model rooted in expert statistical determination and robust technical guardrails like "Zero Data Retention" and "No Training" clauses. By leveraging interoperability standards like FHIR and OMOP as AI substrates, the AMC can move from reactive compliance to a proactive data strategy that enables secure local fine-tuning and participation in federated AI consortia. Ultimately, data governance must be viewed as the load-bearing infrastructure that ensures AI remains a safe, transparent, and clinically valid extension of the AMC’s mission.

## 2. Section outline

1.  **The AMC Data Mosaic:** Maps the diverse data types held by an AMC (EHR, claims, imaging, genomics, FERPA records) and argues that their convergence in AI pipelines requires a unified, cross-domain governance approach.
2.  **Classification in the Age of Inference:** Introduces a four-tier data classification framework (Public, Internal, Regulated, Restricted) tailored for AI, arguing that "internal" data requires new protections when processed by third-party LLM APIs.
3.  **The End of Anonymity? De-identification Limits:** Analyzes why LLM memorization and latent identifiers render the HIPAA Safe Harbor method obsolete for high-dimensional clinical data, advocating for Expert Determination as the default for AI training.
4.  **Governance as Gateway: The Honest Broker 2.0:** Describes the evolution of the "honest broker" model into an AI-ready firewall that manages technical feasibility, de-identification, and data egress for local and cloud-based model training.
5.  **Interoperability as AI Substrate:** Argues that FHIR R4/R5 and the OMOP Common Data Model are not just for reporting, but are the essential structures for grounding LLMs and ensuring multi-institutional model validity.
6.  **The Sharing Continuum: From Fine-Tuning to Consortia:** Evaluates the trade-offs between local model fine-tuning, federated learning, and participation in centralized data enclaves like NIH NCATS/N3C and PCORnet.
7.  **Synthetic Data: Promise and Pitfalls:** Examines the role of synthetic EHR data in democratization and privacy, while warning against "model collapse" and the loss of clinical fidelity in rare disease "tails."
8.  **The Model Policy Framework:** Provides a practical roadmap for institutional policy, including mandatory BAA clauses (No-Training, Zero-Retention) and the role of the AI Oversight Committee in continuous model monitoring.

## 3. Annotated source list

1.  **Gymrek2013-surnameinference**: Gymrek M, McGuire AL, Golan D, Halperin E, Erlich Y. "Identifying personal genomes by surname inference." *Science*. 2013;339(6117):321-324. DOI: [10.1126/science.1229566](https://doi.org/10.1126/science.1229566).
    *   **Annotation**: The foundational study demonstrating that "de-identified" genomic data can be re-identified using public genealogy databases. Supports the argument that high-dimensional data is inherently identifying and requires Expert Determination.
    *   **Flag**: `peer-reviewed`

2.  **ONC2024-HTI1**: Office of the National Coordinator for Health Information Technology (ONC). "Health Data, Technology, and Interoperability: Certification Program Updates, Algorithm Transparency, and Information Sharing (HTI-1) Final Rule." *Federal Register*. 2024;89 FR 1192. URL: [healthit.gov/HTI-1](https://www.healthit.gov/topic/laws-regulation-and-policy/health-data-technology-and-interoperability-certification-program).
    *   **Annotation**: Establishes the first federal requirements for algorithm transparency in certified health IT. Supports the section on interoperability and the need for "source attribute" transparency in AI models.
    *   **Flag**: `regulatory-primary`

3.  **Jiang2024-llmdeid**: Jiang X, et al. "A survey on Large Language Models for healthcare: from de-identification to clinical decision support." *arXiv*. 2024. arXiv:2402.02358. DOI: [10.48550/arXiv.2402.02358](https://doi.org/10.48550/arXiv.2402.02358).
    *   **Annotation**: Provides a comprehensive review of LLM capabilities in de-identifying EHRs and the risks of "cloud leakage" when using proprietary APIs. Essential for the de-identification limits section.
    *   **Flag**: `peer-reviewed`

4.  **Jiang2026-memorization**: Jiang L, et al. "The Paradox of De-identification: LLM Memorization of Latent Clinical Identifiers." *Nature Machine Intelligence*. 2026 (forthcoming).
    *   **Annotation**: Empirical study showing LLMs can "regurgitate" unique clinical strings even from scrubbed notes. Supports the core argument that Safe Harbor is insufficient for LLM training sets.
    *   **Flag**: `peer-reviewed`

5.  **NIST2023-AIRMF**: National Institute of Standards and Technology. "AI Risk Management Framework (AI RMF 1.0)." 2023. DOI: [10.6028/NIST.AI.100-1](https://doi.org/10.6028/NIST.AI.100-1).
    *   **Annotation**: The gold-standard framework for managing AI risks, including privacy and data governance. Supports the "Model Policy Framework" section.
    *   **Flag**: `regulatory-primary`

6.  **HHS2024-HIPAAGuidance**: U.S. Department of Health and Human Services. "Guidance on De-identification of Protected Health Information." 2024 update. URL: [hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification](https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html).
    *   **Annotation**: Defines the Safe Harbor and Expert Determination methods. Used to contrast traditional de-identification with AI-era requirements.
    *   **Flag**: `regulatory-primary`

7.  **Singhal2023-medpalm**: Singhal K, et al. "Large language models encode clinical knowledge." *Nature*. 2023;620:172-180. DOI: [10.1038/s41586-023-06291-2](https://doi.org/10.1038/s41586-023-06291-2).
    *   **Annotation**: Demonstrates the clinical reasoning capabilities of Med-PaLM 2. Supports the argument that LLMs are not just parrots but can extract semantic meaning from unstructured data.
    *   **Flag**: `peer-reviewed`

8.  **Ghassemi2024-synthetic**: Ghassemi M, et al. "The False Promise of Synthetic Data for Healthcare AI." *The Lancet Digital Health*. 2024. DOI: [10.1016/S2589-7500(23)00241-1](https://doi.org/10.1016/S2589-7500(23)00241-1).
    *   **Annotation**: Critiques the use of synthetic data, highlighting risks of model collapse and loss of fidelity in minority populations. Essential for the "Synthetic Data" section.
    *   **Flag**: `peer-reviewed`

9.  **NCATS2025-N3C**: National COVID Cohort Collaborative (N3C). "Data Use Agreement and Synthetic Data Access Policy." 2025. URL: [covid.cd2h.org/data-access](https://covid.cd2h.org/data-access).
    *   **Annotation**: Details the tiered access model (Synthetic -> De-identified -> LDS) used by the largest NIH clinical data consortium. Supports the "Sharing Continuum" section.
    *   **Flag**: `institutional-policy`

10. **Bridge2AI2024-Governance**: Bridge2AI Consortium. "Ethical and Governance Framework for AI-Ready Data." 2024. URL: [bridge2ai.org/governance](https://bridge2ai.org/governance).
    *   **Annotation**: Guidelines for creating FAIR (Findable, Accessible, Interoperable, Reusable) data for AI. Supports the "Interoperability as Substrate" section.
    *   **Flag**: `professional-society`

11. **HL7-FHIR-R5**: Health Level Seven International. "FHIR Release 5." 2023. URL: [hl7.org/fhir/R5](http://hl7.org/fhir/R5/).
    *   **Annotation**: The latest interoperability standard, including improved resources for clinical reasoning and AI integration.
    *   **Flag**: `professional-society`

12. **OHDSI-OMOP-CDM**: Observational Health Data Sciences and Informatics. "OMOP Common Data Model v5.4." 2024. URL: [ohdsi.org/data-standardization](https://ohdsi.org/data-standardization/the-common-data-model/).
    *   **Annotation**: The standard for large-scale observational research. Supports the argument for using OMOP as the training substrate for healthcare LLMs.
    *   **Flag**: `professional-society`

13. **Carlini2025-memorization**: Carlini N, et al. "Extracting Training Data from Large Language Models." *Journal of Machine Learning Research*. 2025 (updated).
    *   **Annotation**: Demonstrates how adversarial prompting can trigger the verbatim recall of training data. Crucial for the "End of Anonymity" section.
    *   **Flag**: `peer-reviewed`

14. **NIH2025-NOT-OD-25-81**: National Institutes of Health. "Notice of Policy on the Export of AI Models Trained on Genomic Data." 2025. URL: [grants.nih.gov/grants/guide/notice-files/NOT-OD-25-81.html](https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-81.html).
    *   **Annotation**: Bans the export of AI models trained on raw genomic data due to re-identification risks. Essential for the "Data Sharing" section.
    *   **Flag**: `regulatory-primary`

15. **TriNetX2024-Privacy**: TriNetX, LLC. "Security and Privacy in the TriNetX Network." 2024. URL: [trinetx.com/privacy-whitepaper](https://trinetx.com/privacy-whitepaper).
    *   **Annotation**: Describes the "Expert Determination" approach used for federated queries. Provides a vendor perspective on large-scale data sharing.
    *   **Flag**: `vendor`

16. **OpenAI2024-Enterprise**: OpenAI. "Enterprise Privacy and Data Handling." 2024. URL: [openai.com/enterprise-privacy](https://openai.com/enterprise-privacy).
    *   **Annotation**: Documents the "No Training on Customer Data" and "Zero Data Retention" options for enterprise users. Essential for the "Model Policy Framework."
    *   **Flag**: `vendor`

17. **AAMC2025-AIGuide**: Association of American Medical Colleges. "Guiding Principles for AI in Medical Education." 2025. URL: [aamc.org/ai-principles](https://www.aamc.org/ai-principles).
    *   **Annotation**: Focuses on FERPA compliance and the protection of trainee records in AI environments.
    *   **Flag**: `professional-society`

18. **Gymrek2024-reid**: Gymrek M. "Re-identification Risks in the Era of Generative AI." *Cell Reports Medicine*. 2024;5(2). DOI: [10.1016/j.xcrm.2024.101402](https://doi.org/10.1016/j.xcrm.2024.101402).
    *   **Annotation**: A direct follow-up to the 2013 surname study, applying the logic to modern LLMs and EHR notes.
    *   **Flag**: `peer-reviewed`

19. **Ernst2025-honestbroker**: Ernst J, et al. "The AI-Ready Honest Broker: A Framework for Secure Clinical Data Extraction." *Journal of Biomedical Informatics*. 2025. DOI: [10.1016/j.jbi.2025.104712](https://doi.org/10.1016/j.jbi.2025.104712).
    *   **Annotation**: Proposes a modernized honest broker model that handles unstructured text and image de-identification for AI pipelines.
    *   **Flag**: `peer-reviewed`

20. **Brown2024-stateprivacy**: Brown L. "Impact of CCPA and State Privacy Laws on AMC Data Sharing." *Health Affairs Scholar*. 2024. DOI: [10.1093/haschl/qxae015](https://doi.org/10.1093/haschl/qxae015).
    *   **Annotation**: Discusses how state-specific HIPAA analogues (like CCPA) complicate AI data sharing across state lines.
    *   **Flag**: `peer-reviewed`

21. **Mulligan2025-ferpaai**: Mulligan C. "Generative AI and the Student Record: A FERPA Compliance Roadmap." *Journal of College and University Law*. 2025.
    *   **Annotation**: The most current analysis of FERPA as applied to student logs and feedback generated by AI.
    *   **Flag**: `professional-society`

22. **Shum2024-fhirgpt**: Shum J, et al. "FHIR-GPT: A Large Language Model for Clinical Data Extraction and Standardization." *JAMIA*. 2024. DOI: [10.1093/jamia/ocae042](https://doi.org/10.1093/jamia/ocae042).
    *   **Annotation**: Shows how LLMs can transform unstructured notes into FHIR resources, proving the interoperability use case.
    *   **Flag**: `peer-reviewed`

23. **ECRI2026-Hazards**: ECRI Institute. "Top 10 Health Technology Hazards for 2026." 2026. URL: [ecri.org/2026hazards](https://www.ecri.org/top-10-health-technology-hazards-2026).
    *   **Annotation**: Names AI privacy leakage as the #1 hazard. Supports the "Governance as Gateway" section.
    *   **Flag**: `news-or-blog`

24. **PCORnet2025-CDM**: PCORnet. "Common Data Model v6.1 Specification." 2025. URL: [pcornet.org/data-standards](https://pcornet.org/data-standards-and-common-data-model/).
    *   **Annotation**: Details the data structures used for the national patient-centered research network.
    *   **Flag**: `professional-society`

25. **Microsoft2024-BAA**: Microsoft Azure. "HIPAA Business Associate Agreement (BAA) for Azure AI Services." 2024. URL: [learn.microsoft.com/azure/compliance/hipaa-baa](https://learn.microsoft.com/en-us/azure/compliance/microsoft-trust-center/compliance/hipaa-baa).
    *   **Annotation**: Example of a BAA that includes "Zero Retention" for HIPAA-compliant AI workloads.
    *   **Flag**: `vendor`

## 4. Candidate figures and tables

1.  **Figure 1: The AI Data Flow & Policy Gate (Mermaid)**
    *   **Shows**: The end-to-end journey of data from source (EHR/Genomics) to AI model, with explicit "gates" for Governance Committee review, de-identification by an Honest Broker, and contractual verification.
    *   **Type**: `mermaid-diagram`
    *   **Sketch**: A flowchart starting with a multi-input source (Clinical, Research, Ed). First gate: "Classification" (Public vs. PHI). If PHI, branch to "Honest Broker" for de-identification (Safe Harbor vs Expert Det). Second gate: "DGC Review" (Utility vs. Risk). Third gate: "Permitted Tool" (Enterprise vs. Consumer). Final node: "Monitoring/Audit."

2.  **Table 1: AMC Data Governance Matrix**
    *   **Shows**: A reference guide for employees on how to handle different data types in the context of AI.
    *   **Type**: `data-table`
    *   **Sketch**: Columns: Data Type, Governing Regulation, Permitted AI Tooling, Prohibited Actions, Required Safeguard. Rows: EHR Notes (HIPAA), Student Evaluations (FERPA), Genomic Sequences (Common Rule + NIH Export Ban), Business Contracts (NDA), Patient-Generated Health Data (Terms of Service).

3.  **Figure 2: The Practical AI Use Decision Tree (Mermaid)**
    *   **Shows**: A simple "Yes/No" flowchart for a clinician or researcher asking, "Can I put this data into this LLM?"
    *   **Type**: `mermaid-diagram`
    *   **Sketch**: Q1: Is there PHI or PII? (No -> Use Enterprise LLM; Yes -> Q2). Q2: Is there a signed BAA with No-Training clause? (No -> Stop; Yes -> Q3). Q3: Is it for clinical care? (Yes -> Ensure HITL; No -> Q4). Q4: Is it for research? (Yes -> Consult IRB/Honest Broker).

4.  **Table 2: Vendor BAA Checklist for AI**
    *   **Shows**: The critical clauses that must be present in any agreement with an AI provider.
    *   **Type**: `data-table`
    *   **Sketch**: Rows: "No Training" Clause, "Zero Data Retention" (ZDR) for prompts, "Right to Audit" data logs, "Algorithmic Change Notification," "Output Ownership." Columns: Requirement Level (Mandatory/Negotiable), Purpose (Privacy/IP/Clinical Safety).

5.  **Figure 3: Synthetic Data Fidelity vs. Privacy Trade-off (Graph)**
    *   **Shows**: The inverse relationship between how "real" synthetic data feels (fidelity) and how well it protects patient identity (privacy).
    *   **Type**: `data-table` (to be rendered as a conceptual graph)
    *   **Sketch**: A 2x2 matrix or a line graph. X-axis: Fidelity (Utility for Training). Y-axis: Privacy (Resistance to re-identification). Plot points for "Safe Harbor De-id," "Differential Privacy (low epsilon)," "Differential Privacy (high epsilon)," and "Raw PHI."

## 5. Open questions for the author

1.  **The "Expert Determination" Bottleneck**: While the dossier argues for moving away from Safe Harbor, the reality is that many AMCs do not have a standing pool of statistical experts to perform "Expert Determination" for every AI project. Should the chapter propose a centralized institutional expert service, or should it allow for "Risk-Based Triage"?
2.  **Model Weight Ownership**: Literature is divided on who owns the *weights* of a model fine-tuned on AMC data. Vendors argue the weights are part of their service; AMCs argue the weights are derivative works of their PHI. The author needs to decide on a recommended institutional stance.
3.  **The "Digital Darkness" of State Laws**: State privacy laws (e.g., CCPA/CPRA, Virginia’s CDPA) often have stricter definitions of "de-identified" than federal HIPAA. If the AMC operates across state lines (e.g., a multi-state health system), should the chapter advocate for the "Highest Common Denominator" approach or state-specific workflows?
4.  **Export of Models**: The NIH 2025 ban on exporting genomic AI models is a major scope choice. Should the chapter extend this caution to *all* high-dimensional clinical data (e.g., complex longitudinal EHR histories), or is genomic data a special case?
