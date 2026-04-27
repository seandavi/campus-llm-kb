# Appendix A — AI Principles Across Governance Frameworks

A striking feature of the AI ethics literature is how much agreement exists across frameworks developed by very different organizations, for very different audiences, over the past several years. The WHO, the FDA, NIST, the AMA, and the EU have each produced governance frameworks with different scopes and legal standing — and they converge on the same small set of concerns: safety, transparency, fairness, human oversight, and accountability. That convergence is meaningful. It suggests that these are not arbitrary categories but genuine pressure points where AI systems consistently generate governance problems.

This appendix summarizes the major frameworks relevant to AMC AI governance and notes what is distinctive about each. The comparison table at the end identifies which principle themes appear across which frameworks — a reference for governance teams designing programs that need to satisfy multiple external standards simultaneously.

## A.1 The Frameworks

**WHO Ethics and Governance of Artificial Intelligence for Health (2021, updated 2024)** ([World Health Organization 2024](#ref-WHO2024-ai-ethics)) is the most comprehensive international health-sector AI ethics framework. Its six principles — human autonomy, human well-being and safety, transparency and explainability, responsibility and accountability, inclusiveness and equity, and responsiveness and sustainability — are organized around the patient and community as the primary stakeholders, not the health system. The sustainability principle, which asks whether AI deployment is globally equitable and environmentally responsible, is distinctive among health-sector frameworks and is often the least operationalized in AMC governance programs.

**[FUTURE-AI](https://future-ai.eu/)** is an international multi-stakeholder consortium that developed a framework structured around six properties whose initials spell the name: Fairness, Universality, Traceability, Usability, Robustness, and Explainability ([Lekadir et al. 2022](#ref-FUTURE-AI2022)). The Universality principle — that AI tools should perform equitably across diverse populations and be validated on representative global datasets — goes further than most frameworks in demanding that equity be built into the development process, not added in post-deployment monitoring.

**[Good Machine Learning Practice for Medical Device Development: Guiding Principles](https://www.fda.gov/medical-devices/software-medical-device-samd/good-machine-learning-practice-medical-device-development-guiding-principles)** is a joint statement from the FDA, Health Canada, and the UK’s MHRA ([U.S. Food and Drug Administration et al. 2021](#ref-FDA2021-gmlp)). It is the most operationally specific of the frameworks listed here, specifying practices rather than values: representative datasets, independent training and test sets, thorough clinical testing, and explicit post-deployment monitoring requirements. Of the listed frameworks, it comes closest to a checklist that a vendor validation team can work through. AMC procurement teams evaluating clinical AI vendors should use this framework as a minimum due diligence standard.

**AMIA’s Artificial Intelligence Principles** ([American Medical Informatics Association 2024](#ref-AMIA2024-competencies)) map traditional bioethics principles — autonomy, beneficence, non-maleficence, justice — onto an AI governance context and add informatics-specific properties: explainability, interpretability, fairness, dependability, auditability, and knowledge management. The knowledge management principle, which asks how AI systems contribute to or degrade the institution’s knowledge infrastructure, is distinctive and underrepresented in other frameworks.

**NIST AI Risk Management Framework (AI RMF 1.0)** ([National Institute of Standards and Technology 2023](#ref-NIST2023-airm)) is a voluntary US federal framework organized around four functions — Govern, Map, Measure, Manage — with nine trustworthiness characteristics: accountable, explainable and interpretable, fair with bias managed, privacy-enhanced, reliable, safe, secure and resilient, transparent, and valid and accurate. The RMF is distinctive in its process orientation: unlike the principle frameworks, it specifies organizational functions and roles, making it useful as an implementation scaffold rather than a values statement. The AISC governance structure described in [sec-framework](#sec-framework) maps naturally onto the RMF’s Govern function.

**AMA Principles for Augmented Intelligence** ([American Medical Association 2024](#ref-AMA2024-ai-principles)) are addressed to clinicians and health systems and place particular weight on physician agency: AI tools should support rather than supplant clinical judgment, and physicians must retain meaningful control over AI-assisted decisions. The AMA principles also address the obligation to inform patients when AI plays a role in their care, connecting to the notice and explanation principle in the OSTP Blueprint ([sec-bill-of-rights](#sec-bill-of-rights)).

## A.2 Where the Frameworks Agree

| Principle Theme | WHO | FUTURE-AI | FDA/MHRA | AMIA | NIST AI RMF | AMA |
|----|:--:|:--:|:--:|:--:|:--:|:--:|
| Safety and non-maleficence | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Transparency and explainability | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Fairness and equity | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Human oversight and autonomy | ✓ | — | ✓ | ✓ | ✓ | ✓ |
| Accountability | ✓ | — | ✓ | ✓ | ✓ | ✓ |
| Post-deployment monitoring | ✓ | ✓ | ✓ | ✓ | ✓ | — |
| Privacy | — | — | — | — | ✓ | ✓ |
| Global/demographic representativeness | ✓ | ✓ | ✓ | ✓ | ✓ | — |

Table A.1: Convergence of principle themes across major AI governance frameworks relevant to AMC settings. A check mark indicates the framework addresses this theme explicitly; absence indicates the theme is not a primary focus, not that the framework opposes it.

The near-universal convergence on safety, transparency, fairness, and post-deployment monitoring has a practical implication for AMC governance design: these are the minimum common denominator that any credible AI governance program must address. An AMC governance structure that explicitly maps its processes to these four themes will be positioned to satisfy any of the frameworks above as they are applied by regulators, accreditors, or institutional partners. The divergences — privacy as a primary vs. secondary concern, sustainability, knowledge management, global representativeness — represent areas where governance programs may need additional specificity depending on their regulatory context and institutional values.

American Medical Association. 2024. *AMA Principles for Augmented Intelligence Development, Deployment, and Use*. <https://www.ama-assn.org/practice-management/digital/ama-principles-augmented-intelligence-development-deployment-and-use>.

American Medical Informatics Association. 2024. *AI Competencies for Health Professionals*. <https://amia.org/education-events/ai-competencies>.

Lekadir, Karim, Aasa Feragen, Abdul Joseph Faris, et al. 2022. “FUTURE-AI: Guiding Principles and Consensus Recommendations for Trustworthy Artificial Intelligence in Medical Imaging.” *Insights into Imaging* 13: 169. <https://doi.org/10.1186/s13244-022-01307-w>.

National Institute of Standards and Technology. 2023. *Artificial Intelligence Risk Management Framework (AI RMF 1.0)*. NIST AI 100-1. U.S. Department of Commerce. <https://doi.org/10.6028/NIST.AI.100-1>.

U.S. Food and Drug Administration, Health Canada, and UK Medicines and Healthcare products Regulatory Agency. 2021. *Good Machine Learning Practice for Medical Device Development: Guiding Principles*. [Https://www.fda.gov/medical-devices/software-medical-device-samd/good-machine-learning-practice-medical-device-development-guiding-principles](https://www.fda.gov/medical-devices/software-medical-device-samd/good-machine-learning-practice-medical-device-development-guiding-principles). <https://www.fda.gov/medical-devices/software-medical-device-samd/good-machine-learning-practice-medical-device-development-guiding-principles>.

World Health Organization. 2024. *Ethics and Governance of Artificial Intelligence for Health*. <https://www.who.int/publications/i/item/9789240029200>.
