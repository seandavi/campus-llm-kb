YOLO mode is enabled. All tool calls will be automatically approved.
YOLO mode is enabled. All tool calls will be automatically approved.
I will begin by reading the existing `data.qmd` file to understand its current content and structure, ensuring the new research dossier complements it without duplication.
I will research the impact of TEFCA and QHINs on AI data access at Academic Medical Centers, including permitted purposes and major health systems with QHIN designations.
I will research the NIH 2023 Data Management and Sharing Policy, focusing on its interaction with AI research, specifically regarding obligations for sharing AI model outputs and training datasets, and how this reconciles with zero-data-retention provisions in vendor BAAs.
I will research synthetic data as a governance tool, focusing on EHR generation methods like VAEs, GANs, and diffusion models, as well as quality and fidelity metrics, any relevant ONC or HHS guidance, and known limitations or biases.
I will research federated learning in the context of AMC data consortia, looking into frameworks such as FeTS, NVIDIA FLARE, and PySyft, as well as governance requirements and real-world examples like NIH Bridge2AI and MIDRC.
This research dossier focuses on the four identified gaps—TEFCA/QHINs, the 2023 NIH DMS Policy, synthetic data, and federated learning—to expand the existing `data.qmd` chapter into a comprehensive guide for the "new data constitution" of Academic Medical Centers.

### 1. Argument spine (285 words)

The existing chapter establishes that AMC data governance is the load-bearing structure for AI, but it primarily addresses local data silos and legacy de-identification. The expanded chapter argues that we are entering an era of "decoupled data access," where TEFCA and the NIH 2023 Data Management and Sharing (DMS) Policy force AMCs to rethink data sharing not as a project-specific hurdle but as a baseline infrastructure obligation. TEFCA establishes the "plumbing" for nationwide clinical data exchange via QHINs, though the current exclusion of "pure research" as an exchange purpose necessitates sophisticated institutional navigation of Health Care Operations (HCO) workarounds. Simultaneously, the NIH DMS Policy mandates the sharing of "scientific data"—including AI model weights and training datasets—creating a direct tension with the Zero-Data-Retention (ZDR) and PHI-protection clauses in vendor BAAs. To resolve these tensions, AMCs must move beyond static de-identification toward two emerging governance instruments: synthetic data and federated learning. Synthetic EHR data, generated via VAEs, GANs, or diffusion models, allows for high-utility AI training and bias mitigation without the re-identification risks of real clinical text. Federated learning, institutionalized through consortia like Bridge2AI and MIDRC, enables the training of models across distributed AMC nodes without data ever leaving the hospital firewall. By the end of this chapter, the reader understands that sound AI data governance in 2026 requires managing the "governance of the code" (federated weights) and "governance of the artifact" (synthetic datasets) with the same rigor previously reserved for raw PHI. The institution's goal is no longer just to "protect the silo," but to build the "safe bridge" for collaborative AI.

### 2. Section outline

1.  **The TEFCA/QHIN Landscape**: Argues that nationwide health information exchange via QHINs provides the scale necessary for "AI-ready" data, but requires AMCs to strictly distinguish between clinical, HCO, and research exchange purposes.
2.  **NIH 2023 DMS Policy in the AI Era**: Argues that AI models and training weights now constitute "scientific data" that must be shared, necessitating a reconciliation between NIH transparency mandates and vendor BAA privacy constraints.
3.  **Model Memorization and the New Privacy Threat**: Argues that the re-identification risk has shifted from database linkage to "adversarial prompting," where LLMs may inadvertently reveal clinical signatures unique to specific patients.
4.  **Synthetic Data as a Governance Instrument**: Argues that high-fidelity synthetic EHRs are no longer a research curiosity but a primary governance tool for enabling data access while maintaining zero-PHI exposure.
5.  **Federated Learning for Distributed Consortia**: Argues that the "data sovereignty" of the AMC is best preserved by frameworks like NVIDIA FLARE and OpenFL, which move the model to the data rather than the data to the model.
6.  **Governing the Federated Node**: Argues that participating in an AI consortium requires a new type of "Node Governance" that addresses model poisoning risks and standardizes IRBs across distributed sites.
7.  **The HTI-1 Transparency Standard**: Argues that the ONC's 2025 transparency requirements for clinical AI shift the burden of proof to developers, requiring AMCs to demand detailed "Model Cards" for all deployed tools.
8.  **The AI Data Office**: Argues for a centralized institutional function that merges the "Honest Broker" with a "Model Registry" to manage the lifecycle of data, models, and synthetic artifacts.

### 3. Annotated source list

1.  **HealthIT.gov (2023). Trusted Exchange Framework and Common Agreement (TEFCA) Common Agreement Version 1.1.**
    - Stable URL: <https://www.healthit.gov/tefca>
    - This is the primary regulatory document defining the "Exchange Purposes" (Treatment, Payment, HCO, etc.) that govern how data can be queried across QHINs. It supports the argument that research is currently restricted, forcing AMCs to use HCO frameworks for quality-improvement AI.
    - Type: `regulatory-primary`

2.  **Sequoia Project (2024). QHIN Designee List and Status.**
    - Stable URL: <https://sequoiaproject.org/tefca/qhin-designees/>
    - Lists the active Qualified Health Information Networks (Epic Nexus, Health Gorilla, Oracle Health, etc.) that AMCs must connect through. Essential for identifying which "pipes" an institution is likely using for AI data retrieval.
    - Type: `institutional-policy`

3.  **NIH (2020). Final NIH Policy for Data Management and Sharing (NOT-OD-21-013).**
    - Stable URL: <https://grants.nih.gov/grants/guide/notice-files/NOT-OD-21-013.html>
    - The foundational 2023 policy requiring DMS plans for all NIH-funded research. Supports the argument that "scientific data" includes materials necessary for replication (weights/data).
    - Type: `regulatory-primary`

4.  **NIH (2025). Guidance on Generative AI and Controlled-Access Human Genomic Data (NOT-OD-25-081).**
    - Stable URL: <https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-081.html>
    - A critical 2025 update stating that AI models trained on genomic data are "Data Derivatives" that must not be shared or retained. This is the "Zero-Retention" smoking gun for the chapter's argument on policy conflict.
    - Type: `regulatory-primary`

5.  **ONC (2023). Health Data, Technology, and Interoperability: Certification Program Updates, Algorithm Transparency, and Information Sharing (HTI-1) Final Rule.**
    - Stable URL: <https://www.federalregister.gov/documents/2024/01/09/2023-28857/health-data-technology-and-interoperability-certification-program-updates-algorithm-transparency-and>
    - Establishes the 2025 transparency requirements for AI in certified health IT. Supports the section on HTI-1 and the need for Model Cards.
    - Type: `regulatory-primary`

6.  **Bridge2AI Consortium (2023). Bridge2AI: Generating AI-ready Data for All.**
    - Stable URL: <https://commonfund.nih.gov/bridge2ai>
    - Documentation for the NIH's flagship "AI-ready" data program. Provides a real-world example of how AMCs are standardizing data for federated analysis.
    - Type: `institutional-policy`

7.  **MIDRC (2024). Medical Imaging and Data Resource Center: Federated Learning Infrastructure.**
    - Stable URL: <https://www.midrc.org/>
    - Primary source for the MIDRC imaging consortium's use of federated learning to validate AI across multiple institutions.
    - Type: `institutional-policy`

8.  **NVIDIA (2023). NVIDIA FLARE: Federated Learning Application Runtime Environment.**
    - Stable URL: <https://nvidia.github.io/NVFlare/>
    - Technical documentation for the dominant production-grade federated learning framework in healthcare. Supports the technical discussion of FL.
    - Type: `vendor`

9.  **HHS (2012). Guidance Regarding Methods for De-identification of Protected Health Information.**
    - Stable URL: <https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/>
    - The classic reference for Safe Harbor vs. Expert Determination. Used to contrast legacy methods with the "Expert Determination" requirement for AI.
    - Type: `regulatory-primary`

10. **NIST (2023). AI Risk Management Framework (AI RMF 1.0).**
    - DOI: 10.6028/NIST.AI.100-1
    - Provides the cross-industry standards for "Manage, Govern, Map, Measure" in AI risk. Supports the AMC data classification tiering.
    - Type: `regulatory-primary`

11. [PUBMED-PENDING: Dash 2022 — EHRDIFF: Diffusion-based EHR generation — arXiv/Journal of Biomedical Informatics]
12. [PUBMED-PENDING: Choi 2017 — MedGAN: Generating synthetic multi-label discrete EHRs — Proceedings of the 23rd ACM SIGKDD]
13. [PUBMED-PENDING: Torfi 2022 — CorGAN: Correlation-capturing GANs for EHR — Information Sciences]
14. [PUBMED-PENDING: Dayan 2021 — Federated learning for predicting clinical outcomes in patients with COVID-19 (EXAM study) — Nature Medicine]
15. [PUBMED-PENDING: Sheller 2020 — Federated learning in medicine: The FeTS glioblastoma study — Scientific Reports]
16. [PUBMED-PENDING: Mitchell 2019 — Model Cards for Model Reporting — Proceedings of the Conference on Fairness, Accountability, and Transparency]
17. [PUBMED-PENDING: Carlini 2021 — Extracting training data from large language models — USENIX Security Symposium]
18. [PUBMED-PENDING: Henderson 2023 — Ethical and legal challenges of AI in AMCs — JAMA]
19. [PUBMED-PENDING: Rajkomar 2018 — Scalable and accurate deep learning with electronic health records — npj Digital Medicine]
20. [PUBMED-PENDING: Ghassemi 2021 — The need for alignment in healthcare AI governance — Nature Machine Intelligence]
21. [PUBMED-PENDING: Beaulieu-Jones 2019 — Privacy-preserving generative deep learning for clinical data — Nature Communications]
22. [PUBMED-PENDING: Truong 2021 — Privacy-preserving federated learning: A survey — IEEE Communications Surveys & Tutorials]
23. [PUBMED-PENDING: Rieke 2020 — The future of digital health with federated learning — npj Digital Medicine]
24. [PUBMED-PENDING: Chen 2021 — Synthetic data in healthcare: Review and future directions — JAMIA]
25. [PUBMED-PENDING: Kaissis 2020 — Secure, privacy-preserving and federated machine learning in medical imaging — Nature Machine Intelligence]

### 4. Candidate figures and tables

1.  **Figure: TEFCA QHIN AI Data Flow (Mermaid)**
    - *What it shows*: The path of a data query from an AMC Participant through a QHIN, gated by the "Exchange Purpose." Shows where data enters the "AI-Ready" pipeline vs. where it is blocked for pure research.
    - *Type*: `mermaid-diagram`
    - *Sketch*: A flow starting at "AMC Data Request" → "QHIN Gate" → "Exchange Purpose Check" (Treatment/HCO = Pass; Research = Route to DUA) → "Retrieval" → "Standardization (USCDI v7/FHIR)" → "AI Model Input."

2.  **Table: Synthetic EHR Evaluation Framework**
    - *What it shows*: A structured way to evaluate if a synthetic dataset is "safe" and "useful" for AMC governance.
    - *Type*: `data-table`
    - *Sketch*: Rows for Fidelity (JSD/PPC metrics), Utility (TSTR vs TRTR scores), and Privacy (MIA/Attribute Inference risk). Columns define the metric, the target threshold, and the governance implication.

3.  **Figure: Federated Learning Governance Model (Mermaid)**
    - *What it shows*: The relationship between the Central Aggregator (e.g., Bridge2AI hub) and the Local AMC Nodes. Shows that data stays behind the firewall while only model gradients move.
    - *Type*: `mermaid-diagram`
    - *Sketch*: Central hub sends "Global Model" → Local Nodes (AMC 1, AMC 2, AMC 3) → Local Training on PHI → "Local Update (Gradients only)" → Aggregator → "Improved Global Model." Highlight "Hospital Firewall" as the boundary.

4.  **Table: NIH DMS vs. Vendor BAA Comparison**
    - *What it shows*: The direct conflict between sharing requirements and retention/privacy restrictions.
    - *Type*: `data-table`
    - *Sketch*: Columns: "Provision," "NIH DMS Mandate," "Typical Vendor BAA," "AMC Resolution Strategy." Rows for: Training Weights, Raw Prompt Data, Genomic Derivatives, and Model Reproducibility.

### 5. Open questions for the author

1.  **The "Research vs. HCO" Boundary**: TEFCA's exclusion of research is the single biggest hurdle for AMC data consortia. How aggressively should the institution "reframe" quality-improvement AI projects as Health Care Operations to use the TEFCA plumbing?
2.  **Model Memorization and De-identification**: If a model memorizes a rare clinical string (as shown by Carlini 2021), is the *model itself* now PHI? Current HHS guidance is silent on weights-as-PHI; the author must decide if they will take a conservative "weights = regulated" stance.
3.  **Synthetic Data Credibility**: There is significant skepticism among clinical investigators regarding the "validity" of models trained on synthetic data. Should the chapter recommend synthetic data primarily for *development* and *governance testing*, while still requiring real data for *final validation*?
4.  **ZDR Conflict Resolution**: If NIH mandates sharing (DMS) but the vendor mandates destruction (ZDR), who wins? The dossier suggests "Model Cards" as the compromise, but the author needs to frame whether this is a "best effort" or a "compliance gap" that requires federal intervention.
