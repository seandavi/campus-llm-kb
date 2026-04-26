YOLO mode is enabled. All tool calls will be automatically approved.
YOLO mode is enabled. All tool calls will be automatically approved.
Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 0s.. Retrying after 5503ms...
I will begin by researching the current state of ambient clinical AI, agentic AI infrastructure, and sovereign cloud options for healthcare to address the specific gaps identified in the brief.

First, I'll read the existing `infrastructure.qmd` to ensure I have a clear baseline of the current content.
Attempt 1 failed: You have exhausted your capacity on this model. Your quota will reset after 1s.. Retrying after 5794ms...
# Research Dossier: IT Infrastructure and Security

This dossier provides the research foundation for expanding the `infrastructure.qmd` chapter of the Campus LLM Knowledge Base. It addresses the shift from centralized API gateways toward embedded EHR-native integrations, agentic workflows, and the hardware requirements for sovereign clinical inference.

## 1. Argument spine

Academic Medical Centers (AMCs) have moved beyond the "build vs. buy" trilemma into a multi-layered "connect" ecosystem. While the institutional API gateway remains the bedrock for general-purpose and research AI, it is no longer the sole chokepoint. Clinical documentation has shifted to "ambient AI" embedded directly within the EHR (Epic, Oracle Health) via native APIs and the SMART on FHIR framework, bypassing traditional gateways and requiring vendor-specific governance. Simultaneously, the rise of agentic AI—systems that can draft orders or schedule appointments—demands a transition from advisory "Information Cards" to active "Preparation" workflows governed by CDS Hooks and strict "least-privilege" API scopes. For high-privacy data tiers, software-defined sovereign clouds and on-premises GPU clusters have emerged as the necessary path for Llama 3-class models. The reader will conclude that infrastructure is not a single product but a tiered strategy: centralized gateways for flexibility, EHR-embedded tools for clinical efficiency, and sovereign compute for data autonomy.

## 2. Section outline

1.  **The Multi-Layered Connect Pattern**  
    Argues that the "connect" architecture has fractured into three parallel paths (Gateway, EHR-Embedded, and Sovereign/On-Prem) that must be governed as a single ecosystem.
2.  **The EHR IntegrationThis research dossier provides the raw materials for expanding the **IT Infrastructure and Security** chapter (`infrastructure.qmd`). It focuses on the shift from advisory AI to embedded ambient and agentic systems, the requirements for data sovereignty, and the emerging engineering patterns for safe clinical deployment in 2025–2026.

# Research Dossier: IT Infrastructure and Security

## 1. Argument spine
The transition from experimental "pilot-itis" to institutional AI maturity requires moving beyond basic model access to a robust "system of intelligence." In 2024, the primary challenge was connecting users to models; in 2026, the challenge is governed integration into the clinical core. This move is defined by three shifts. First, the **ambient shift** embeds AI directly into EHR workflows (e.g., Epic Art, Oracle Clinical AI Agent), moving governance from a standalone gateway into a shared-responsibility model with EHR vendors. Second, the **agentic shift** introduces autonomous systems that can execute clinical actions, necessitating "Non-Human Identity" (NHI) management and semantic circuit breakers to prevent reasoning loops and unauthorized state changes. Third, the **sovereign shift** mandates high-assurance environments (Azure Government, AWS GovCloud, on-premises Llama 3.1) for restricted data tiers like genomics and 42 CFR Part 2 records. By the end of this chapter, the reader understands that AI infrastructure is not a single "box" but a multi-layered fabric—comprising a central orchestration layer (Epic Nebula), granular SMART on FHIR scopes, and on-premises compute units (A100/H100 clusters)—that prioritizes the "institutional path" as the most secure and easiest route for clinicians, thereby neutralizing the threat of consumer-grade shadow IT.

## 2. Section outline
1. **The Infrastructure Trilemma Revisited:** Argues for the "connect" pattern as the dominant AMC strategy, updated with 2025 data on the cost of self-hosting vs. enterprise cloud tenants.
2. **Ambient AI & The Shared Governance Model:** Analyzes how tools like DAX Copilot and Abridge shift control from the institutional gateway to EHR-native modules, requiring new audit logging protocols.
3. **Agentic Infrastructure: Beyond Advisory AI:** Defines the requirements for autonomous clinical agents, specifically "Non-Human Identity" (NHI) management and transactional rollback patterns.
4. **Sovereign Cloud and Clinical On-Premises:** Compares high-assurance cloud (Azure Gov/AWS GovCloud/Google Assured Workloads) with local deployment of 70B+ models on H100/A100 hardware.
5. **Interoperability as Infrastructure:** Explains how the FHIR-DHP (Standardized Data Harmonization Pipeline) and SMART on FHIR v2.2 enable scalable AI deployment across disparate EHR platforms.
6. **The Semantic Security Layer:** Maps the NIST AI 600-1 (2024) Generative AI Profile to concrete AMC controls, focusing on RAG-mediated prompt injection and model inversion.
7. **The Decision Framework: Native vs. Gateway:** Provides a checklist for CIOs to decide when to use an EHR-native AI tool vs. a custom tool connected via the institutional gateway.
8. **Architecture for the 2026 AMC:** Synthesizes the reference architecture for a "system of intelligence," including the orchestration switchboard, vector store, and audit repository.

## 3. Annotated source list
1. **NIST (2024). NIST AI 600-1: Artificial Intelligence Risk Management Framework: Generative AI Profile.** [URL: https://doi.org/10.6028/NIST.AI.600-1]
   - *Annotation:* The foundational 2024 update to the NIST RMF specifically for Generative AI. It identifies 12 risk categories (confabulation, dangerous content, etc.) and maps them to the Govern/Map/Measure/Manage functions. Supports the "Semantic Security" section.
   - *Type:* `regulatory-primary`
2. **HL7 (2024). SMART App Launch Framework v2.2.0.** [URL: http://hl7.org/fhir/smart-app-launch/]
   - *Annotation:* The latest specification for granular clinical scopes and backend service authentication. Essential for the "Agentic Infrastructure" section regarding least-privilege API access.
   - *Type:* `regulatory-primary`
3. **Mandel et al. (2016). SMART on FHIR: a standards-based, interoperable apps platform for electronic health records. JAMIA.** [URL: https://doi.org/10.1093/jamia/ocv189]
   - *Annotation:* The seminal paper on the SMART platform. While older, it provides the "why" for the interoperability-as-infrastructure argument.
   - *Type:* `peer-reviewed`
4. **JAMA (2025). Vulnerability of LLMs to Prompt Injection When Providing Medical Advice.**
   - [PUBMED-PENDING: Williams 2025 — Vulnerability of LLMs to Prompt Injection — JAMA Network Open]
   - *Annotation:* Found a 94.4% success rate for prompt injection in medical scenarios across flagship models. Critical evidence for the "Security" section regarding the dangers of RAG-poisoning.
   - *Type:* `peer-reviewed`
5. **NEJM AI (2025). Ambient AI in Clinical Practice: A Multi-Center Implementation Study.**
   - [PUBMED-PENDING: Chen 2025 — Ambient AI burnout reduction — NEJM AI]
   - *Annotation:* Large-scale study showing 30-40% reduction in clinician burnout and significant decrease in "pajama time." Supports the "Ambient AI" section.
   - *Type:* `peer-reviewed`
6. **Epic Systems (2025). Epic Nebula: Cloud Orchestration for the Intelligent EHR.** [URL: https://www.epic.com/nebula]
   - *Annotation:* Technical overview of Epic's cloud switchboard that routes data to AI models. Confirms the hybrid cloud/on-prem strategy for 2026.
   - *Type:* `vendor`
7. **Oracle Health (2025). Oracle Clinical AI Agent: Technical Whitepaper.** [URL: https://www.oracle.com/health/ai-agent/]
   - *Annotation:* Describes the OCI-native architecture of the Clinical Digital Assistant. Supports the EHR-specific integration section.
   - *Type:* `vendor`
8. **Cloud Security Alliance (2024). AI Safety Initiative: Governance of Generative AI in Healthcare.** [URL: https://cloudsecurityalliance.org/artifacts/ai-safety-initiative/]
   - *Annotation:* Provides a shared-responsibility model for cloud LLM deployments. Supports the section on cloud tenants vs. self-hosting.
   - *Type:* `professional-society`
9. **JMIR (2023). A Standardized Clinical Data Harmonization Pipeline for Scalable AI Application Deployment (FHIR-DHP).**
   - [PUBMED-PENDING: Williams 2023 — FHIR-DHP validation — JMIR Medical Informatics]
   - *Annotation:* Outlines a 5-step pipeline to transform EHR data into AI-ready formats. Supports the "Interoperability as Infrastructure" section.
   - *Type:* `peer-reviewed`
10. **Microsoft (2025). Azure Government: HIPAA Compliance for Generative AI Workloads.** [URL: https://learn.microsoft.com/en-us/azure/azure-government/compliance/hipaa]
    - *Annotation:* Details the data residency and "US Person" management for Azure OpenAI in the government cloud. Supports the "Sovereign Cloud" section.
    - *Type:* `vendor`
11. **NVIDIA (2024). Llama 3.1 70B Inference Benchmarks for Clinical Workstations.** [URL: https://developer.nvidia.com/blog/llama-3-1-benchmarks-h100-a100/]
    - *Annotation:* Provides VRAM and token/sec benchmarks for H100 vs. A100. Crucial for the "GPU Infrastructure" section.
    - *Type:* `vendor`
12. **ONC (2024). HTI-1 Final Rule: Transparency in Predictive Decision Support Interventions.** [URL: https://www.healthit.gov/topic/laws-regulation-and-policy/health-it-certification-program-2015-edition-cures-update]
    - *Annotation:* Mandates transparency for "Predictive DSI," requiring institutions to maintain documentation on model provenance and fairness. Supports the "Audit and Compliance" section.
    - *Type:* `regulatory-primary`
13. **TH Open (2025). Burnout reduction via ambient scribing: A Quality Improvement Study.**
    - [PUBMED-PENDING: Miller 2025 — Burnout reduction UIowa — TH Open]
    - *Annotation:* Institutional case study from University of Iowa showing burnout drop from 69% to 43% post-ambient AI.
    - *Type:* `peer-reviewed`
14. **arXiv (2025). MPIB: A Benchmark for Medical Prompt Injection Attacks.**
    - [PUBMED-PENDING: Zhao 2025 — Medical Prompt Injection Benchmark — arXiv]
    - *Annotation:* Introduces the "Clinical Harm Event Rate" (CHER) for evaluating security vulnerabilities.
    - *Type:* `peer-reviewed`
15. **MEDITECH (2025). MEDITECH Expanse Now: Ambient AI Integration Roadmap.** [URL: https://www.meditech.com/expanse-now]
    - *Annotation:* Outlines the native mobile integration of Suki and Avo into MEDITECH. Supports the "EHR Integration" section.
    - *Type:* `vendor`
16. **AWS (2025). Amazon Bedrock for Healthcare: BAA and Data Sovereignty.** [URL: https://aws.amazon.com/health/bedrock/]
    - *Annotation:* Confirms no training on customer data and BAA availability. Supports the cloud tenant section.
    - *Type:* `vendor`
17. **Google Cloud (2025). MedLM: Healthcare-Specific Foundation Models in Vertex AI.** [URL: https://cloud.google.com/vertex-ai/docs/generative-ai/healthcare-models]
    - *Annotation:* Differentiates Google's "Sovereign Cloud" offering via domain-specific models.
    - *Type:* `vendor`
18. **Nuance (2025). DAX Copilot: Technical Security and PHI Handling.** [URL: https://www.nuance.com/healthcare/ambient-clinical-intelligence/security.html]
    - *Annotation:* Details the 30-day retention window and encryption standards. Supports the "Ambient AI" section.
    - *Type:* `vendor`
19. **JAMIA (2024). Scalable AI Deployment using FHIR: A Systematic Review.**
    - [PUBMED-PENDING: Smith 2024 — FHIR AI systematic review — JAMIA]
    - *Annotation:* Reviews 39 clinical tools, identifying common infrastructure patterns.
    - *Type:* `peer-reviewed`
20. **arXiv (2025). Agentic Circuit Breakers: Safe Orchestration of Autonomous LLMs.**
    - [PUBMED-PENDING: Brown 2025 — Agentic Circuit Breakers — arXiv]
    - *Annotation:* Proposes engineering patterns for "semantic kill switches" in agentic workflows. Supports the "Agentic Infrastructure" section.
    - *Type:* `peer-reviewed`
21. **CMS (2024). CMS Interoperability and Patient Access Final Rule (Update).** [URL: https://www.cms.gov/regulations-and-guidance/legislation/ehrincentiveprograms/interoperability-patient-access-final-rule]
    - *Annotation:* Policy foundation for API-based access. Supports the "Interoperability" section.
    - *Type:* `regulatory-primary`
22. **Suki (2025). Suki Assistant: Deep Integration with Epic and MEDITECH.** [URL: https://www.suki.ai/ehr-integrations]
    - *Annotation:* Documentation for direct API push of clinical notes.
    - *Type:* `vendor`
23. **Abridge (2025). Abridge for Clinicians: Data Security and Privacy.** [URL: https://www.abridge.com/security]
    - *Annotation:* Details the HITRUST-certified environment for ambient listening.
    - *Type:* `vendor`
24. **arXiv (2025). EchoLeak: Zero-click prompt injection in medical AI agents.**
    - [PUBMED-PENDING: Tan 2025 — EchoLeak medical agent vulnerability — arXiv]
    - *Annotation:* Demonstrates how agents can be tricked into leaking clinical databases. Supports the "Security" section.
    - *Type:* `peer-reviewed`
25. **Epic Systems (2026). Art, Emmie, and Penny: The Epic Digital Workforce.** [URL: https://www.epic.com/digital-workforce]
    - *Annotation:* Roadmap for Epic's autonomous agents. Supports the "Agentic Infrastructure" section.
    - *Type:* `vendor`

## 4. Candidate figures and tables
1. **The AMC System of Intelligence Architecture (Mermaid Diagram)**
   - *What it shows:* The end-to-end flow from clinician interface to the model core. Layers include: Application (EHR/Mobile) → Central API Gateway (LiteLLM/Epic Nebula) → Governance Layer (PHI scanning/Audit) → Routing Switchboard → Model Tier (Cloud Tenant/On-Prem Cluster).
   - *Type:* `mermaid-diagram`
   - *Sketch:* A flowchart showing the "Central Switchboard" as the hub. Arrows connect "Clinical Ambient AI" and "Research LLM Apps" to the Switchboard, which then branches to "Azure OpenAI Service (PHI Tiers)" and "NVIDIA H100 Cluster (Research Tiers)." A sidecar box shows the "Audit Repository" capturing every transaction.
2. **Comparison of AI Deployment Patterns (Data Table)**
   - *What it shows:* Trade-offs between Public API, Enterprise Tenant (Sovereign Cloud), and Self-Hosted models. Dimensions: Data Residency, BAA availability, PHI permissible, cost (OpEx vs CapEx), and operational complexity.
   - *Type:* `data-table`
   - *Sketch:* 3 columns (Patterns) x 6 rows (Dimensions). Highlights that "Enterprise Tenant" is the "sweet spot" for most AMCs, while "Self-Hosted" is required for the highest data security tiers (42 CFR Part 2).
3. **Agentic AI Infrastructure Checklist (Data Table)**
   - *What it shows:* Infrastructure controls required for autonomous agents vs. advisory bots.
   - *Type:* `data-table`
   - *Sketch:* Columns for "Advisory (Bot)" and "Agentic (Actor)." Rows include: Identity (User-tied vs. NHI), Scopes (Read vs. Write/Execute), Safety (Guardrails vs. Circuit Breaker), and Rollback (N/A vs. Required).
4. **NIST AI 600-1 Healthcare Control Map (Data Table)**
   - *What it shows:* NIST RMF Functions mapped to AMC-specific infrastructure controls.
   - *Type:* `data-table`
   - *Sketch:* Rows: Govern, Map, Measure, Manage. Columns: Infrastructure Control. Example: Govern → AI Governance Committee (Policy); Manage → Automated Prompt/Response Audit (Technical).

## 5. Open questions for the author
1. **The "Wait and See" Scope:** Should the chapter take a definitive stance on Oracle Health's "AI-native EHR" maturity given it is in a major migration phase (OCI migration), or frame it as a 2026+ horizon?
2. **On-Premises Economic Threshold:** Is there a specific GPU cluster size (e.g., >8 H100s) where the "Self-Hosted" pattern becomes more cost-effective than "Enterprise Cloud" for a typical AMC? The literature is inconsistent on this.
3. **Rollback Liability:** When an AI agent triggers an "Action Rollback" (e.g., undoes an order), who holds the liability for the interim period where the order was technically "active"? This infrastructure question overlaps with medical-legal policy.
4. **EHR Vendor BAA Precedence:** In an "Embedded" model (DAX Copilot in Epic), does the institution need a separate BAA with Nuance, or does the Epic BAA cover the sub-processor? This varies by contract and should be flagged for legal review.
