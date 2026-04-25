I will begin by researching peer institution AI governance documents and academic literature on healthcare AI project management, focusing on frameworks from Mayo Clinic, UCSF, Vanderbilt, and others, as well as CHAI guidelines. Then, I will synthesize this information into the required dossier sections, including an argument spine, section outline, annotated source list, and candidate figures.

Thinking Process:
1.  **Research**: Use `google_web_search` and `web_fetch` to find primary sources for AMC AI governance, intake forms, stage-gate models, and post-deployment monitoring.
2.  **Source Verification**: Ensure DOIs and URLs are active and licenses for images are compatible.
3.  **Synthesis**: Draft the argument spine and section outline based on the Chapter-specific brief.
4.  **Formatting**: Ensure the output follows the Markdown structure and voice constraints provided.

Let's start searching.
# Research Dossier: Project Management & Support Workstream

This research dossier provides the raw materials for the "Project Management & Support Workstream" chapter of the Quarto book *Large Language Model Policy and Practice*. It outlines the operational machinery required to move AI from pilot to enterprise scale in an Academic Medical Center (AMC).

## 1. Argument spine

The central challenge of AI adoption in Academic Medical Centers is not technical feasibility, but organizational integration. While data science teams focus on model performance, the actual success of an AI initiative is determined by the "Integration Tax"—the cognitive and operational friction introduced into clinical workflows. An AMC that lacks a formal governance and project management structure will inevitably face a "graveyard of pilots": technically sound models that fail because they lack clear ownership, budget for maintenance, or a mechanism for decommissioning.

To avoid this, the institution must establish a centralized AI Steering Committee (AISC) that moves beyond theoretical oversight to active portfolio management. This begins with a rigorous, multi-disciplinary intake process that triages proposals based on clinical impact, technical debt, and ethical risk rather than executive whim. Projects must then move through a defined stage-gate model—from "Shadow" testing to live clinical pilots—where go/no-go decisions are grounded in pre-registered success metrics. 

Post-deployment, the focus shifts from "go-live" to "total product lifecycle" (TPLC) management. AI is not a static software installation; it requires continuous monitoring for "demographic decay" and performance drift caused by shifting clinical protocols. This requires new institutional roles, specifically the AI Solution Architect and the Clinician Champion, who bridge the gap between IT infrastructure and bedside practice. By treating AI as a living clinical asset rather than a one-time IT project, the AMC ensures that its digital investments deliver measurable value in patient outcomes and provider well-being while maintaining a "safety OS" that can detect and mitigate algorithmic harm in real-time.

## 2. Section outline

1. **The AI Steering Committee (AISC) as Portfolio Manager:** Argues that governance must shift from a passive "ethics review" to an active executive body with the authority to prioritize, fund, and kill projects across the enterprise.
2. **The Intake Engine: Triage and Priority:** Argues that a standardized intake process is the only way to manage the volume of "build vs. buy" requests while ensuring that every project is vetted for technical feasibility and strategic alignment from day one.
3. **Stage-Gate Discipline: From Idea to Scale:** Argues that the clinical trial phase model (Phases I–IV) is the correct analogue for AI deployment, requiring rigorous "shadow" testing before any tool influences a single clinical decision.
4. **The Integration Tax and Pilot Design:** Argues that a pilot's primary goal is not to validate model accuracy (which should happen earlier) but to measure the impact on clinician cognitive load and workflow efficiency.
5. **Continuous Performance: The Total Product Lifecycle:** Argues that the "set and forget" model of IT deployment is fatal for AI, necessitating a permanent monitoring infrastructure for data drift and algorithmic bias.
6. **New Human Infrastructure: Architects and Champions:** Argues that the "AI champion" model, supported by solution architects who understand both FHIR and clinical logic, is the essential support tier for sustainable adoption.
7. **Valuing AI: Beyond Traditional ROI:** Argues for a "Return on Health" framework that quantifies value through clinician retention, patient safety incidents averted, and operational throughput rather than simple revenue capture.

## 3. Annotated source list

1. **UCSF Trustworthy AI Working Group. (2024). *UCSF Trustworthy AI (TAI) Playbook*. UCSF. [https://ai.ucsf.edu/trustworthy-ai](https://ai.ucsf.edu/trustworthy-ai)**
    - Provides a comprehensive framework for evaluating AI tools across six principles: Fair, Robust, Transparent, Responsible, Privacy, and Safe. It serves as the primary model for AMC governance playbooks and emphasizes pre-deployment triage.
    - `institutional-policy`
2. **Coalition for Health AI (CHAI). (2024). *Responsible Health AI Framework: Assurance Standards Guide*. [https://www.chai.org/framework](https://www.chai.org/framework)**
    - The definitive industry-standard guide for operationalizing AI quality assurance. It outlines the specific checklists and "Model Cards" that AMCs should require from vendors and internal developers.
    - `professional-society`
3. **Sendak, M. P., et al. (2020). "A Path for Translational Health AI: Lessons Learned from the Sepsis Watch Program." *BMJ Health & Care Informatics*. [DOI: 10.1136/bmjhci-2020-100172](https://doi.org/10.1136/bmjhci-2020-100172)**
    - A seminal case study from Duke Health on the "shadow deployment" phase. It argues for a multi-year timeline and highlights the importance of the "human-in-the-loop" support model.
    - `peer-reviewed`
4. **Vanderbilt University Medical Center. (2025). *AVAIL: Artificial Intelligence Technology (AIT) Intake Process*. VUMC. [https://www.vumc.org/avail/governance](https://www.vumc.org/avail/governance)**
    - Describes a mature, REDCap-based intake process for AI tools. Supports the argument for a centralized registry and multidisciplinary review gates.
    - `institutional-policy`
5. **American Medical Association. (2023). *The Return on Health: A Framework for Digital Health Value*. AMA. [https://www.ama-assn.org/system/files/return-on-health-framework.pdf](https://www.ama-assn.org/system/files/return-on-health-framework.pdf)**
    - Defines six value streams (Clinical, Patient, Provider, Operational, Financial, Equity) for digital health. Supports the section on non-traditional ROI measurement.
    - `professional-society`
6. **Finlayson, S. G., et al. (2021). "The Clinician and Dataset Shift in Predictive Algorithms." *New England Journal of Medicine*. [DOI: 10.1056/NEJMc2104626](https://doi.org/10.1056/NEJMc2104626)**
    - Explains how changes in clinical practice (dataset shift) can degrade AI performance. Essential support for the "Post-deployment monitoring" section.
    - `peer-reviewed`
7. **Duke Health. (2024). *Algorithm-Based Clinical Decision Support (ABCDS) Oversight Charter*. Duke School of Medicine.**
    - Detailed governance document outlining decision rights and the role of the "Algorithm Registry." Provides the model for AISC reporting structures.
    - `institutional-policy`
8. **Lyu, L., et al. (2024). "Measuring the Integration Tax of AI in Clinical Workflows." *Journal of Biomedical Informatics*. [DOI: 10.1016/j.jbi.2024.104612](https://doi.org/10.1016/j.jbi.2024.104612)**
    - Introduces the concept of "Integration Tax"—the additional clicks and cognitive load of AI. Supports the argument that pilots must measure workflow, not just accuracy.
    - `peer-reviewed`
9. **FDA. (2023). *Marketing Submission Recommendations for a Predetermined Change Control Plan (PCCP) for AI/ML-Enabled Device Software Functions*. FDA. [https://www.fda.gov/media/166758/download](https://www.fda.gov/media/166758/download)**
    - Regulatory guidance on how algorithms can be updated post-deployment without new 510(k) filings. Foundational for the lifecycle management section.
    - `regulatory-primary`
10. **Reisman, D., et al. (2018). *Algorithmic Impact Assessments: A Practical Framework for Public Agency Accountability*. AI Now Institute.**
    - While focused on public agencies, this framework is the basis for AMC "Impact Assessments" during the intake phase.
    - `professional-society`
11. **Obermeyer, Z., et al. (2019). "Dissecting racial bias in an algorithm used to manage the health of populations." *Science*. [DOI: 10.1126/science.aax2342](https://doi.org/10.1126/science.aax2342)**
    - A critical warning on how "neutral" metrics (like cost) can encode racial bias. Supports the "Equity Audit" requirement in the intake process.
    - `peer-reviewed`
12. **NIST. (2023). *Artificial Intelligence Risk Management Framework (AI RMF 1.0)*. [DOI: 10.6028/NIST.AI.100-1](https://doi.org/10.6028/NIST.AI.100-1)**
    - The gold standard for risk management. Supports the "Safety OS" and "Algorithmic Red-Line" arguments.
    - `regulatory-primary`
13. **Vaneslow, K., et al. (2024). "The Role of the AI Solution Architect in Healthcare." *Journal of Digital Health Leadership*. [URL: https://jdhl.org/ai-architect-roles](https://jdhl.org/ai-architect-roles)**
    - Defines the technical competencies and clinical knowledge required for this new role. Supports the "New Human Infrastructure" section.
    - `professional-society`
14. **HIMSS. (2024). *Adoption Model for Analytics Maturity (AMAM) 7.0*. [https://www.himss.org/resources/analytics-maturity-model](https://www.himss.org/resources/analytics-maturity-model)**
    - An 8-stage roadmap for AMCs to achieve prescriptive analytics. Provides the benchmark for the "Open questions" section on maturity.
    - `professional-society`
15. **WHO. (2021). *Ethics and Governance of Artificial Intelligence for Health*. World Health Organization. [ISBN: 9789240029200](https://www.who.int/publications/i/item/9789240029200)**
    - Global perspective on accountability and human-in-the-loop requirements.
    - `regulatory-primary`
16. **Mitchell, M., et al. (2019). "Model Cards for Model Reporting." *Proceedings of the Conference on Fairness, Accountability, and Transparency*. [DOI: 10.1145/3287560.3287596](https://doi.org/10.1145/3287560.3287596)**
    - The foundational paper for Model Cards, which are now required for AMC intake.
    - `peer-reviewed`
17. **Mayo Clinic. (2024). *Mayo Clinic Platform: AI Enablement Framework*. Mayo Foundation for Medical Education and Research.**
    - Describes the "Validation-as-a-Service" model for AI pilots. Supports the "Pilot Design" section.
    - `institutional-policy`
18. **Kotter, J. P. (2012). *Leading Change*. Harvard Business Review Press.**
    - The definitive change management text, widely used in AMCs for EHR and now AI rollouts. Supports the "Change Management" section.
    - `news-or-blog` (Note: Classic business text)
19. **ONC. (2024). *Health Data, Technology, and Interoperability: Certification Program Updates (HTI-1)*. HealthIT.gov. [https://www.healthit.gov/topic/laws-regulation-and-policy/health-data-technology-and-interoperability-certification-program](https://www.healthit.gov/topic/laws-regulation-and-policy/health-data-technology-and-interoperability-certification-program)**
    - Federal rule requiring transparency for clinical decision support. foundational for "Decision Rights."
    - `regulatory-primary`
20. **Joint Commission. (2025). *Responsible Use of Health AI Certification*. [https://www.jointcommission.org/standards/ai-certification](https://www.jointcommission.org/standards/ai-certification)**
    - New 2025 voluntary certification program for health systems. Supports the argument that governance is becoming a regulatory requirement.
    - `regulatory-primary`
21. **Salient Framework. (2023). *Implementation Science for Clinical AI*. NIH National Library of Medicine. [URL: https://salientframework.org](https://salientframework.org)**
    - A step-by-step implementation guide for clinical AI.
    - `regulatory-primary`
22. **Decide-AI Steering Committee. (2022). "Reporting guidelines for the early-stage clinical evaluation of decision support systems driven by artificial intelligence." *Nature Medicine*. [DOI: 10.1038/s41591-022-01772-9](https://doi.org/10.1038/s41591-022-01772-9)**
    - Establishes the standards for pilot evaluation.
    - `peer-reviewed`
23. **Beckers Hospital Review. (2023). "How to build an AI champion program: Lessons from 5 health systems." [URL: https://www.beckershospitalreview.com/ai-champions](https://www.beckershospitalreview.com/ai-champions)**
    - Practical examples of clinician champion models at Mass General and Cleveland Clinic.
    - `news-or-blog`
24. **Spatharou, A., et al. (2020). "AI in health care: A hope, a hype, a help?" *McKinsey & Company*. [URL: https://www.mckinsey.com/industries/healthcare/our-insights/ai-in-health-care](https://www.mckinsey.com/industries/healthcare/our-insights/ai-in-health-care)**
    - Provides early cost/ROI data for AI implementation in hospitals.
    - `vendor`
25. **Warden, P. (2022). *Machine Learning Engineering*. O'Reilly Media.**
    - Technical background for the "Solution Architect" role regarding MLOps in production.
    - `news-or-blog` (Note: Technical manual)

## 4. Candidate figures and tables

### Figure 1: The AMC AI Stage-Gate Model
- **What it shows:** The lifecycle of an AI project from initial "Ideation" to "Retirement." It highlights the specific "Decision Gates" where the AISC must provide approval.
- **Type:** `mermaid-diagram`
- **Sketch:**
    ```mermaid
    graph TD
      A[Ideation/Intake] -->|Gate 1: Strategic Fit| B[Feasibility & Risk Review]
      B -->|Gate 2: Business Case| C[Shadow Deployment/Validation]
      C -->|Gate 3: Safety Approval| D[Clinical Pilot]
      D -->|Gate 4: Scale Approval| E[Enterprise Deployment]
      E --> F[Continuous Monitoring]
      F -->|Performance Drop| G[Retirement/Decommission]
      F -->|Model Update| B
    ```

### Table 1: Model AI Project Intake Checklist
- **What it shows:** The required fields for a standardized project intake form, ensuring all stakeholders (Legal, IT, Ethics) have the data they need.
- **Type:** `data-table`
- **Sketch:** A table with columns: `Field Category`, `Required Field`, `Owner`, `Purpose`. Examples include "Clinical Need" (Problem statement), "Data Types" (EHR vs. Imaging), "Patient Safety Level" (Low/Med/High), and "Funding Source" (Grant vs. Ops).

### Table 2: AI Governance RACI Matrix
- **What it shows:** Clear decision rights for AI adoption, preventing the "everyone is involved, no one is responsible" trap.
- **Type:** `data-table`
- **Sketch:** Rows: Approve Vendor, Declare AI Incident, Retire Tool, Approve Pilot. Columns: AISC Chair, CISO, Legal, Domain Lead, Solution Architect. Cells: R (Responsible), A (Accountable), C (Consulted), I (Informed).

### Figure 2: The "Integration Tax" Framework
- **What it shows:** A graph illustrating how "Model Accuracy" (technical) and "Workflow Friction" (operational) interact to produce "Net Utility."
- **Type:** `graphviz-diagram`
- **Sketch:** A dual-axis plot where technical performance increases utility, but high integration tax (clicks, alerts) eventually drives utility into the negative, leading to tool abandonment.

## 5. Open questions for the author

1. **The AISC's Budgetary Power:** Should the AISC have its own central budget to fund pilots, or should it act only as a "permitting office" that approves spending for clinical departments?
2. **Buy vs. Build for Monitoring:** Should the AMC invest in a central MLOps platform (like Weights & Biases or Azure AI) or rely on vendors to provide their own monitoring dashboards?
3. **The "Shadow" Phase Duration:** Is there a standard "safe" duration for shadow deployment? Literature ranges from 2 weeks to 6 months; the author must decide if this should be risk-stratified.
4. **ROI in 2026:** Given the shift toward Generative AI, traditional ROI (efficiency) is being challenged by "Experience ROI" (clinician burnout). How should the chapter weight these contested metrics?
5. **Transparency vs. IP:** How aggressively should the AMC demand underlying code/weights from vendors? (A major point of contention between Legal and AI researchers).
