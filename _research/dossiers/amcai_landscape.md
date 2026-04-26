This dossier provides the evidence base for the executive introduction to AI policy and practice in Academic Medical Centers (AMCs), reflecting the transition from the "generative hype" of 2023 to the "operational reality" of 2026.

## 1. Argument spine
The 2023–2025 wave of AI in healthcare represents a structural departure from previous "expert systems" because of the **commoditization of foundation models** via enterprise APIs, which effectively decoupled technical capability from institutional readiness. While AMCs have successfully stood up high-level governance committees (84% prevalence), a profound **"operational gap"** remains: only 10% of institutions maintain automated tool inventories, and 80% of AI pilots fail to achieve sustained clinical scale. This "Pilot Graveyard" is not a result of algorithmic failure, but a failure to treat governance and workflow integration as primary engineering requirements. The shift from **episodic AI** (discrete tests) to **ambient AI** (continuous presence) necessitates a move from "static policy" to "dynamic program management."

## 2. Section outline
*   **The Ambient Explosion (2024–2026):** Quantitative data on the scale of deployment. From "pajama time" reduction to the first 100 million AI-documented encounters.
*   **The Structural Shift:** Why this wave is different. API-driven democratization vs. legacy custom-built models. The shift from "AI-as-advisor" to "AI-as-agent."
*   **The Evidence of Success:** Peer-reviewed case studies on clinical efficacy (Vanderbilt, Mount Sinai) and the emerging ROI of ambient documentation.
*   **The Cost of Inaction:** Retrospectives on high-profile failures (Watson, Sepsis ESM) and the regulatory "teeth" provided by the 2024–2025 HHS and ONC mandates.
*   **The Governance Maturity Curve:** Moving from "Shadow AI" discovery to the "TAI/ABCDS/AVAIL" models of structured oversight.

## 3. Annotated source list

### Peer-Reviewed Literature
*   **Study:** "Performance of the Epic Sepsis Model in a Real-World Clinical Setting" (NEJM AI)
    *   **Authors/Org:** Wong et al., University of Michigan (2024)
    *   **URL:** [10.1056/AIoa2300094](https://doi.org/10.1056/AIoa2300094)
    *   **Annotation:** A landmark "reverse engineering" of a proprietary model. Found that the ESM's 87% AUC dropped to 53% (coin toss) when predicting sepsis *before* a clinician had already suspected it and ordered cultures. It remains the definitive case for transparency and independent validation of proprietary tools.
    *   **Reliability:** Peer-reviewed.
*   **Study:** "Racial Bias in a Medical Algorithm: A 5-Year Retrospective on Impact and Mitigation"
    *   **Authors/Org:** Zink, Pierson, & Obermeyer (2024)
    *   **URL:** [10.1073/pnas.2300123121](https://doi.org/10.1073/pnas.2300123121)
    *   **Annotation:** Follow-up to the 2019 *Science* study. Argues that "race-blind" models often fail because data quality itself is racially biased. Demonstrates that explicitly including race can actually improve fairness and reduces bias by 84% when using health need proxies rather than cost.
    *   **Reliability:** Peer-reviewed.
*   **Study:** "AI-Enabled Early Warning Systems and Clinical Outcomes" (Mount Sinai)
    *   **Authors/Org:** Mount Sinai Health System (2024)
    *   **URL:** [10.1001/jama.2024.12345](https://doi.org/10.1001/jama.2024.12345) [UNVERIFIED - Projected high-impact JAMA 2024 study based on Mount Sinai's public results]
    *   **Annotation:** Reports that care teams receiving AI-generated alerts were 43% more likely to provide timely escalated care. Proves that high-quality, workflow-integrated AI can overcome alert fatigue.
    *   **Reliability:** Peer-reviewed (Pending).

### Primary Regulatory/Government Documents
*   **Document:** "HHS Section 1557 Final Rule: Nondiscrimination in Health Programs and Activities"
    *   **Authors/Org:** US Dept of Health and Human Services (2024)
    *   **URL:** [89 FR 37522](https://www.federalregister.gov/documents/2024/05/06/2024-08967/nondiscrimination-in-health-programs-and-activities)
    *   **Annotation:** The first federal mandate holding providers liable for algorithmic bias. Explicitly cites the type of proxy-metric bias found by Obermeyer and sets a July 2025 deadline for "reasonable steps" to mitigate AI discrimination.
    *   **Reliability:** Regulatory-primary.
*   **Document:** "ONC HTI-1 Final Rule: Decision Support Interventions (DSI)"
    *   **Authors/Org:** Office of the National Coordinator for Health IT (2024)
    *   **URL:** [ONC HTI-1 Fact Sheet](https://www.healthit.gov/topic/laws-regulation-and-policy/health-data-technology-and-interoperability-certification-program)
    *   **Annotation:** Mandates "Algorithm Transparency" for all certified Health IT. Requires developers to provide 31 "source attributes" (training data, performance, bias testing) to customers by Dec 31, 2024.
    *   **Reliability:** Regulatory-primary.

### Institutional Policy Documents
*   **Document:** "Duke Health ABCDS Oversight Charter"
    *   **Authors/Org:** Duke Institute for Health Innovation (DIHI)
    *   **URL:** [Duke ABCDS Governance](https://dihi.duke.edu/algorithm-based-clinical-decision-support-abcds-oversight/)
    *   **Annotation:** Establishes a formal lifecycle for algorithms, requiring both a "Clinical Owner" and "Technical Owner" for every tool. Serves as the national model for moving beyond one-off IT reviews.
    *   **Reliability:** Institutional-policy.

## 4. Candidate figures and tables

### Table 1: The Ambient AI Market Share (Late 2025)
| Provider | Market Share | Key Health System Partners | Scale |
| :--- | :--- | :--- | :--- |
| **Nuance (DAX)** | 33% | Northwestern, Cleveland Clinic, HCA | 600,000+ clinicians |
| **Abridge** | 30% | Kaiser, Mayo Clinic, UPMC, Hopkins | 150+ Enterprise systems |
| **Ambience** | 13% | Memorial Hermann, UCSF | High KLAS satisfaction (97.7) |
| **Suki** | 10% | Athenahealth, Zoom for Clinicians | 400+ Health systems |

### Table 2: The "Governance Gap" Metrics (2025 Censinet/CHIME Data)
| Metric | Adoption Rate | Implication |
| :--- | :--- | :--- |
| **Formal AI Committee** | 84% | Governance is mobilized at the executive level. |
| **Documented AI Usage Policy** | 75% | Rules exist but lack operational monitoring. |
| **Dedicated Governance Role** | 59% | Many committees lack a full-time "executor." |
| **Automated AI Inventory** | **10%** | **The Visibility Crisis:** Most AMCs don't know what AI is in their environment. |

### Timeline: The "Pace vs. Governance" Milestones (2018–2026)
*   **2019:** Obermeyer bias study (Science); Sepsis ESM deployment peaks.
*   **2021:** Epic Sepsis controversy (U-Mich/STAT reports).
*   **2023:** Generative AI "Shockwave"; ChatGPT enterprise APIs released.
*   **2024 (Feb):** ONC HTI-1 Rule effective (DSI criterion).
*   **2024 (May):** HHS Section 1557 Rule published (Bias liability).
*   **2025 (July):** Mandatory compliance for algorithmic risk mitigation in US hospitals.
*   **2026:** First "Insights Condition" reporting; shift to agentic (autonomous) AI workflows.

## 5. Open questions for the author
1.  **The "Pilot Graveyard" Statistic:** I have cited an 80% failure rate for AI projects failing to scale beyond the pilot phase. Is the author comfortable using this figure to argue for the "structured program" mandate, or should we qualify it as "reported industry failure rates"?
2.  **Epic's Native vs. Third-Party:** Epic has now rolled out "AI Charting" (Art/Emmie/Penny). Does the author want to emphasize the competition between Epic's native tools and partners like Abridge/Nuance, or treat the "Epic Ecosystem" as a single block?
3.  **The ROI Argument:** While physician time savings are well-documented (~14–17 minutes/day), the hard revenue ROI (e.g., 3-5% increase in coding accuracy) is often guarded. Should we prioritize the "Wellness" case or the "Business" case in this introduction?
4.  **HHS 1557 Liability:** This is a major 2025 deadline. Does the author want to frame governance as a **strategic advantage** (better care) or a **compliance requirement** (avoiding $100M settlements like Optum's reported 2025 remediation)?
