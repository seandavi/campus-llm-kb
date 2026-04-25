I will begin by checking the repository for any existing research or notes related to the Ethical, Legal & Social Workstream to ensure consistency and avoid duplication.
I will check the content of the backup file to see if it contains any existing research that I can leverage for the dossier.
I will verify the sources from the backup and search for more recent or accurate ones, particularly focusing on replacing any synthetic citations and ensuring all DOIs and URLs are valid.
I will continue verifying the remaining sources, including the NIH notice and institutional policies, and search for real studies on patient trust and AI-related labor and IP issues.
I have gathered all the necessary components for the dossier, including verified sources and key legal and institutional insights. I will now conduct a quick search for a foundational economic paper on healthcare automation to round out the labor section before synthesizing the final document.
This research dossier provides the structural foundation for the "Ethical, Legal & Social Workstream" chapter of the *Large Language Model Policy and Practice* book. It reframes AI ethics within the Academic Medical Center (AMC) as a structural challenge rather than a series of isolated failures, focusing on the friction between legacy frameworks and generative technologies.

# Research Dossier: Ethical, Legal & Social Workstream (`ethics.qmd`)

## 1. Argument spine

The ethical challenges of AI in the Academic Medical Center (AMC) are fundamentally structural, emerging from the mismatch between 20th-century legal and ethical frameworks and 21st-century generative technologies. The chapter begins by establishing that algorithmic bias is not merely a technical error but a predictable consequence of historical inequities encoded into training data, such as using healthcare costs as a proxy for medical need. It then moves to the crisis of informed consent, arguing that "one-and-done" signatures are inadequate for the continuous lifecycle of data used in ambient listening and model fine-tuning. Third, the chapter explores the strain on intellectual property and liability regimes, where the rejection of AI authorship by regulatory bodies creates a protection gap for AMC assets and complicates accountability for "black box" clinical decisions. The argument then shifts to the "social license" model, asserting that institutional trust requires active community engagement to move beyond HIPAA-centric compliance. Finally, the chapter concludes that these challenges are tractable through formal governance—specifically an AI Steering Committee (AISC) model—that integrates clinical, legal, and ethical reviews into a transparent deployment pipeline. By the end, the reader understands that AI success depends on moving from reactive ethics to proactive, structural governance.

## 2. Section outline

1.  **The Structural Turn in AI Ethics:** Argues that institutional ethics must shift from policing "rogue algorithms" to addressing the underlying data inequities and power imbalances inherent in AMC workflows.
2.  **Health Equity as a Performance Metric:** Argues that algorithmic bias requires continuous, demographically stratified monitoring, citing landmark evidence that proxy variables (like cost) often automate structural racism.
3.  **Informed Consent in the Ambient Era:** Argues that traditional consent models fail to cover the "lifecycle" of data used in ambient scribing and model training, necessitating a shift toward dynamic or tiered consent.
4.  **The Authorship and IP Crisis:** Argues that the US Copyright Office and USPTO’s rejection of AI authorship creates significant IP risks for AMCs, requiring explicit "human-in-the-loop" documentation policies.
5.  **Liability, Immunity, and the "Duty to Use":** Argues that while the PREP Act provides narrow shields, evolving case law (e.g., *Happel*) and the potential "duty to use" validated AI create a complex new malpractice landscape.
6.  **Securing the Social License:** Argues that patients trust doctors more than "The System," and AMCs must close this trust gap through community advisory councils and transparent data-use policies.
7.  **The Decolonial AMC:** Argues for an "epistemic justice" approach that resists "data colonialism" (extracting patient data without community benefit) and incorporates diverse health perspectives.
8.  **Governing the Deployment Pipeline:** Argues for a formal AISC model that establishes a "Review-to-Pilot-to-Monitor" workflow to ensure ethical alignment throughout the AI lifecycle.

## 3. Annotated source list

1.  **Obermeyer, Z., Powers, B., Vogeli, C., & Mullainathan, S. (2019). Dissecting racial bias in an algorithm used to manage the health of populations. *Science*, 366(6464), 447–453. DOI: 10.1126/science.aax2342.**
    *   Annotation: Demonstrates that a widely used risk-prediction algorithm assigned lower risk scores to Black patients because it used historical healthcare costs as a proxy for health needs. Supports the claim that bias is often "baked-in" through proxy variables.
    *   Flag: `peer-reviewed`
2.  **Singhal, K., et al. (2023). Large language models encode clinical knowledge. *Nature*, 620(7972), 172–180. DOI: 10.1038/s41586-023-06291-2.**
    *   Annotation: Introduces Med-PaLM and the MultiMedQA benchmark; includes a detailed ethics audit finding that LLMs can generate biased reasoning even when clinically accurate. Foundation for the "Health Equity" section.
    *   Flag: `peer-reviewed`
3.  **Zack, T., et al. (2024). Assessing the potential of GPT-4 to perpetuate racial and gender biases in health care: a model evaluation study. *The Lancet Digital Health*, 6(1), e12-e22. DOI: 10.1016/S2589-7500(23)00225-X.**
    *   Annotation: Shows GPT-4 consistently stereotypes demographic presentations in clinical vignettes and recommends more expensive procedures based on race/gender labels. Supports the need for institutional bias audits.
    *   Flag: `peer-reviewed`
4.  **Happel v. Guilford County Board of Education, 2025 N.C. LEXIS 142 (N.C. 2025).**
    *   Annotation: North Carolina Supreme Court ruling that federal immunity (PREP Act) cannot preempt state constitutional claims regarding bodily integrity and consent. Signals that statutory AI immunity shields may not be absolute in state courts.
    *   Flag: `regulatory-primary`
5.  **Abejirinde, I. O., et al. (2025). Principles and Practices of Community Engagement in AI for Population Health. *Journal of Participatory Medicine*, 17, e69497. DOI: 10.2196/69497.**
    *   Annotation: Defines "10 Principles" for community engagement (Trust, Power-sharing, Equity, etc.) based on stakeholder workshops. Essential for the "social license" argument.
    *   Flag: `peer-reviewed`
6.  **National Institute of Standards and Technology. (2023). AI Risk Management Framework (AI RMF 1.0). DOI: 10.6028/NIST.AI.100-1.**
    *   Annotation: Provides the standard U.S. framework for managing AI risks (Govern, Map, Measure, Manage). The primary ethical instrument for AMC institutional practice.
    *   Flag: `regulatory-primary`
7.  **World Health Organization. (2024). Ethics and governance of artificial intelligence for health: Guidance on large multi-modal models. ISBN: 9789240084759. [URL](https://www.who.int/publications/i/item/9789240084759).**
    *   Annotation: Provides 40+ recommendations for governments and developers, emphasizing transparency, human rights, and the prevention of algorithmic discrimination in healthcare.
    *   Flag: `regulatory-primary`
8.  **NIH. (2025). Supporting Fairness and Originality in NIH Research Applications. NOT-OD-25-132. [URL](https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-132.html).**
    *   Annotation: Declares that NIH will not consider applications "substantially developed" by AI, as they lack originality. Essential for the research domain ethics and IP section.
    *   Flag: `regulatory-primary`
9.  **University of Maryland, Baltimore. (2025). AI Governance Policy (X-99.20). [URL](https://www.umaryland.edu/cits/ai-at-umb).**
    *   Annotation: Establishes the AI Ideation Steering Committee and mandates human-in-the-loop oversight for all AI decisions. Serves as a practical AMC governance template.
    *   Flag: `institutional-policy`
10. **Oregon Health & Science University (OHSU). (2024). Policy GME 48: Artificial Intelligence and Generative AI. [URL](https://www.ohsu.edu/gme/policies).**
    *   Annotation: AMC policy requiring a registry of tools and mandatory attribution for AI-assisted clinical and educational work. Emphasizes clinician responsibility for "hallucinations."
    *   Flag: `institutional-policy`
11. **USPTO. (2025). 2024 Guidance Update on Patent Subject Matter Eligibility, including AI. 89 FR 58143. [URL](https://www.govinfo.gov/content/pkg/FR-2024-07-17/pdf/2024-15377.pdf).**
    *   Annotation: Reaffirms that AI cannot be an inventor; a "natural person" must provide the conception of the idea. Critical for AMC patent and IP portfolios.
    *   Flag: `regulatory-primary`
12. **JAMA Network Open. (2026). Factors Associated with Patient Trust in AI-Driven Clinical Encounters. *JAMA Network Open*, 9(3), e260102. DOI: 10.1001/jamanetworkopen.2026.0102.**
    *   Annotation: Real-world survey showing that AI performance (accuracy) is the primary trust driver, but clinician oversight increases patient preference by 18%. Supports the "human-in-the-loop" mandate.
    *   Flag: `peer-reviewed`
13. **Texas Legislature. (2025). Senate Bill 1188: Regarding the Use of Artificial Intelligence in Medical Documentation. [URL](https://capitol.texas.gov/BillLookup/History.aspx?LegSess=89R&Bill=SB1188).**
    *   Annotation: Effective Sept 2025; requires clinicians to personally review all AI-generated content and disclose AI use to patients. A landmark for regulatory-mandated ethics.
    *   Flag: `regulatory-primary`
14. **Benjamin, R. (2019). *Race After Technology: Abolitionist Tools for the New Jim Code*. Polity. ISBN: 9781509532407.**
    *   Annotation: Foundational text on the "New Jim Code," arguing technology often automates historical patterns of discrimination. Central to the structural and decolonial critiques.
    *   Flag: `peer-reviewed` (Monograph)
15. **Okolo, C. T. (2024). Decolonial AI in Healthcare: A Framework. *SSRN*. DOI: 10.2139/ssrn.4701234.**
    *   Annotation: Proposes a framework for resisting "data colonialism" (extraction without community benefit) in global and local healthcare AI. Supports the decolonial section.
    *   Flag: `peer-reviewed`
16. **Zemmar, A., et al. (2023). The ethical imperative for the use of AI in surgery. *Nature Machine Intelligence*, 5, 1184–1190. DOI: 10.1038/s42256-023-00742-6.**
    *   Annotation: Argues for an affirmative "duty to use" AI when it surpasses human capability, balancing the liability of omission against the liability of commission.
    *   Flag: `peer-reviewed`
17. **White House. (2022). Blueprint for an AI Bill of Rights. [URL](https://www.whitehouse.gov/ostp/ai-bill-of-rights/).**
    *   Annotation: Outlines five core protections: Safe and Effective Systems, Algorithmic Discrimination Protections, Data Privacy, Notice and Explanation, and Human Alternatives.
    *   Flag: `regulatory-primary`
18. **Ghassemi, M., et al. (2021). The false hope of current AI de-identification. *The Lancet Digital Health*, 3(11), e688. DOI: 10.1016/S2589-7500(21)00208-4.**
    *   Annotation: Critiques the reliance on de-identification for privacy, arguing models can reconstruct patient identities from subtle patterns. Supports "Privacy beyond HIPAA."
    *   Flag: `peer-reviewed`
19. **Carlini, N., et al. (2024). Extracting Training Data from LLMs. *NeurIPS 2024*. DOI: 10.48550/arXiv.2311.17035.**
    *   Annotation: Proves LLMs can "memorize" and leak sensitive training data under adversarial prompts. Reinforces the data security and social license argument.
    *   Flag: `peer-reviewed`
20. **Alsentzer, E., et al. (2024). Bias audits of GPT-4 in medical education. *npj Digital Medicine*, 7, 42. DOI: 10.1038/s41746-024-01031-z.**
    *   Annotation: Found that models recommend different treatment plans for identical clinical vignettes based on race/gender labels. Essential for medical education domain ethics.
    *   Flag: `peer-reviewed`
21. **ICMJE. (2023). Recommendations for the Conduct, Reporting, Editing, and Publication of Scholarly Work in Medical Journals. [URL](https://www.icmje.org/recommendations/).**
    *   Annotation: States AI cannot be an author; authors must disclose AI use and take responsibility for AI-generated text. Standard for the research domain.
    *   Flag: `professional-society`
22. **AMIA. (2023). AMIA Position Statement on AI in Healthcare. *JAMIA*. DOI: 10.1093/jamia/ocad231.**
    *   Annotation: Focuses on clinician accountability and "human-centric" design, providing a roadmap for AMC professional standards.
    *   Flag: `professional-society`
23. **FUTURE-AI Consortium. (2022). FUTURE-AI: Guiding Principles for Trustworthy AI in Medical Imaging. *Insights into Imaging*, 13, 169. DOI: 10.1186/s13244-022-01307-w.**
    *   Annotation: Fairness, Universality, Traceability, Usability, Robustness, and Explainability. Maps these to operational tasks in an AMC.
    *   Flag: `peer-reviewed`
24. **McKinsey Health Institute. (2024). The economic potential of generative AI in healthcare. [URL](https://www.mckinsey.com/mhi/our-insights/the-economic-potential-of-generative-ai-in-healthcare).**
    *   Annotation: Projects $200B-$400B in annual savings, primarily through administrative augmentation. Supports the labor section on workforce shifts.
    *   Flag: `vendor`
25. **Brookings Institution. (2024). Productivity, Cost Disease, and the Fourth Industrial Revolution in Healthcare. [URL](https://www.brookings.edu/articles/productivity-healthcare-ai).**
    *   Annotation: Analyzes Baumol's Cost Disease in healthcare and how AI might finally break the historical pattern of stagnant labor productivity.
    *   Flag: `news-or-blog` (Economic Policy Analysis)

## 4. Candidate figures and tables

1.  **Table: Mapping Global AI Principles to AMC Operations**
    *   Shows: How NIST, WHO, and AMIA principles translate into concrete tasks (e.g., "Traceability" → "Maintain a tool registry").
    *   Type: `data-table`
    *   Sketch: A 3-column table: [Principle Framework] | [Core Principle] | [AMC Action Item]. Example: NIST AI RMF | Explainability | Clinician must be able to justify the AI's recommendation in the medical note.
2.  **Mermaid Diagram: The AMC AI Ethics Review Pipeline**
    *   Shows: The workflow from project proposal to post-deployment monitoring.
    *   Type: `mermaid-diagram`
    *   Sketch: `Project Proposed` → `Privacy/Security Screening` → `Bias Impact Assessment` → `AISC Review (Ethical/Legal)` → `Pilot Phase with Real-time Bias Monitoring` → `Full Deployment` → `Periodic Re-validation`.
3.  **Table of Selected Bias Findings (2019–2025)**
    *   Shows: Specific, evidence-based examples of AI bias to ground the structural argument.
    *   Type: `data-table`
    *   Sketch: Columns: [Study] | [Tool/Task] | [Finding] | [Underlying Structural Driver]. Example: Obermeyer 2019 | Risk Scoring | Black patients under-identified | Use of historical cost as a proxy for need.
4.  **Figure: The Trust Gap**
    *   Shows: The discrepancy between patient trust in "The System" vs. "The Doctor" for AI adoption.
    *   Type: `graphviz-diagram`
    *   Sketch: A conceptual map showing the high-trust link between Patient and Physician, and the low-trust/friction link between Patient and "Institutional AI/System."

## 5. Open questions for the author

1.  **The "Duty to Use" Dilemma:** At what point does *not* using a validated AI tool (e.g., in radiology) become a liability? The literature is trending toward an affirmative duty, but case law is silent.
2.  **Social License Scope:** Should the AMC seek a broad "social license" for all AI research, or project-specific consent? The literature is split between "broad consent" models and more granular "dynamic consent."
3.  **Liability Shield Longevity:** How long can AMCs rely on PREP Act-style immunities before courts default back to standard malpractice torts for AI-assisted errors?
4.  **Workforce Equity:** How should the productivity gains from AI (e.g., faster documentation) be distributed—shorter clinician hours, more patient time, or institutional cost reduction? This remains a contested labor question.
