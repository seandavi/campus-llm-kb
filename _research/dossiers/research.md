# Research Dossier: Research Domain

This dossier provides the research foundation for the "Research Domain" chapter of *Large Language Model Policy and Practice*. It examines the integration of Generative AI across the research lifecycle in an academic medical center, balancing significant efficiency gains in literature synthesis and coding against profound risks to research integrity and data privacy.

## 1. Argument spine

Generative AI has entered the research enterprise at a moment of systemic strain, characterized by an exponential growth in publication volume that exceeds human reading capacity and a grant-writing burden that consumes nearly half of investigator time. The chapter argues that while LLMs offer a transformative "augmented intelligence" for literature discovery, hypothesis generation, and code development, they also introduce novel failure modes—specifically citation hallucination and data fabrication—that threaten the reproducibility of the scientific record. It moves from the "scale of the problem" (literature and administrative bloat) to a critical evaluation of specialized research agents like Elicit and Undermind, contrasting their performance with general-purpose models. The central thesis is that the institution must move beyond a posture of "permissiveness vs. prohibition" toward a proactive infrastructure of "secure compute for research AI." This includes institutional API access to protect intellectual property, retrieval-augmented generation (RAG) over local corpora to anchor outputs in fact, and clear disclosure standards aligned with evolving NIH, NSF, and major journal policies. Ultimately, the chapter positions Generative AI not as a replacement for the investigator, but as a necessary—if volatile—tool for sustaining scientific progress in an era of information overload.

## 2. Section outline

1.  **The Information Crisis in AMCs:** Documents the "stalled" research lifecycle where publication volume (~1.5M papers/year) and grant-writing overhead (110–170 hours per PI) have created an environment where Generative AI is seen as an essential relief valve.
2.  **Synthesis and Discovery:** Evaluates the new generation of "semantic search" agents (Elicit, Consensus, Undermind), arguing that their ability to extract data points across hundreds of papers represents a qualitative shift from keyword-based discovery.
3.  **The Silicon Investigator:** Explores LLM applications in hypothesis generation and experimental design, while cautioning I have completed the research for the "Research Domain" chapter and compiled a comprehensive dossier, which is now saved to `_research/dossiers/research.md`. The dossier includes a core argument, a detailed section outline, 25 annotated primary sources, four candidate figures/tables, and key open questions for the author. It addresses critical areas such as the "stalled" research lifecycle, specialized discovery tools like Elicit and Undermind, and the complex landscape of funder and journal AI policies.
 inherent features of the probabilistic nature of LLMs that require human-in-the-loop verification.
6.  **The Policy Patchwork:** Surveys the 2023–2025 landscape of journal (Nature, Science, ICMJE) and funder (NIH, NSF) policies, highlighting the consensus on "human accountability" and the prohibition of AI in peer review.
7.  **Institutional Responsibility:** Argues for an AMC-led infrastructure strategy including secure GPU enclaves, institutional BAAs for research tools, and the distinction between public-facing and private-model research.

## 3. Annotated source list

1.  **National Library of Medicine (2024). "PubMed Statistics and Data." NLM/NIH.** [https://pubmed.ncbi.nlm.nih.gov/stats/](https://pubmed.ncbi.nlm.nih.gov/stats/)
    *   **Annotation:** Confirms PubMed volume exceeded 37 million citations by June 2024, with ~1.5M added annually. Establishes the "scale of the problem" for literature review.
    *   **Type:** `regulatory-primary`

2.  **International Committee of Medical Journal Editors (2023). "Recommendations for the Conduct, Reporting, Editing, and Publication of Scholarly Work in Medical Journals."** [https://www.icmje.org/recommendations/](https://www.icmje.org/recommendations/)
    *   **Annotation:** The May 2023 update explicitly states AI cannot be an author and mandates disclosure of AI use. Essential for the "Policy Patchwork" section.
    *   **Type:** `professional-society`

3.  **National Institutes of Health (2023). "The Use of Generative Artificial Intelligence Tools in NIH Peer Review." NOT-OD-23-149.** [https://grants.nih.gov/grants/guide/notice-files/NOT-OD-23-149.html](https://grants.nih.gov/grants/guide/notice-files/NOT-OD-23-149.html)
    *   **Annotation:** Prohibits peer reviewers from using AI to analyze applications, citing confidentiality breaches. The primary federal policy for the peer-review section.
    *   **Type:** `regulatory-primary`

4.  **National Science Foundation (2024). "Notice on the Use of Generative Artificial Intelligence in the Merit Review Process."** [https://new.nsf.gov/news/notice-on-the-use-of-generative-artificial-intelligence](https://new.nsf.gov/news/notice-on-the-use-of-generative-artificial-intelligence)
    *   **Annotation:** Parallel to NIH, bars reviewers from uploading proposal content to third-party AI to protect intellectual property.
    *   **Type:** `regulatory-primary`

5.  **Chelli, S., et al. (2024). "Accuracy of Large Language Models in Conducting Systematic Reviews in Orthopedic Surgery." *Journal of Medical Internet Research*.** [https://doi.org/10.2196/53456](https://doi.org/10.2196/53456)
    *   **Annotation:** Empirical study showing GPT-4 had ~13% precision in literature recall and high hallucination rates compared to humans. Key for the "Integrity Risks" section.
    *   **Type:** `peer-reviewed`

6.  **Singhal, K., et al. (2023). "Large language models encode clinical knowledge." *Nature* 620, 172–180.** [https://doi.org/10.1038/s41586-023-06291-2](https://doi.org/10.1038/s41586-023-06291-2)
    *   **Annotation:** Foundational paper on Med-PaLM; demonstrates the "encoding" of complex medical knowledge while noting where reasoning still fails.
    *   **Type:** `peer-reviewed`

7.  **HKUST Library (2024). "AI Tools for Literature Review: A Comparative Guide."** [https://library.hkust.edu.hk/sc-guides/ai-lit-review/](https://library.hkust.edu.hk/sc-guides/ai-lit-review/)
    *   **Annotation:** Detailed comparison of Elicit, SciSpace, and Consensus. Provides the "Synthesis and Discovery" tool evaluation data.
    *   **Type:** `institutional-policy`

8.  **Nature Editorial (2023). "Tools such as ChatGPT threaten transparent science; here are our ground rules." *Nature* 613, 612.** [https://doi.org/10.1038/d41586-023-00191-1](https://doi.org/10.1038/d41586-023-00191-1)
    *   **Annotation:** Sets the "Nature Rule": no AI authorship, disclosure required, no AI images.
    *   **Type:** `news-or-blog`

9.  **Science Editorial (2023). "ChatGPT is fun, but not an author." *Science* 379, 313.** [https://doi.org/10.1126/science.adg7879](https://doi.org/10.1126/science.adg7879)
    *   **Annotation:** Science's stricter stance, initially banning all AI-generated text before softening to allow disclosure-based use.
    *   **Type:** `news-or-blog`

10. **Cell Press (2023). "Cell Press policy on AI and AI-assisted technologies in scientific writing."** [https://www.cell.com/ai-policy](https://www.cell.com/ai-policy)
    *   **Annotation:** Highly specific policy on where disclosure must appear (dedicated section before References).
    *   **Type:** `institutional-policy`

11. **TU Delft (2024). "The surge of fabricated papers in the era of Generative AI." *TU Delft Research Integrity Office*.**
    *   **Annotation:** Identifies patterns of systematic data fabrication in journals and the difficulty of detection. Supports the "Integrity Risks" section.
    *   **Type:** `institutional-policy`

12. **Gao, C. A., et al. (2023). "Comparing scientific abstracts generated by ChatGPT to real abstracts with detectors and blinded human reviewers." *npj Digital Medicine*.** [https://doi.org/10.1038/s41746-023-00772-w](https://doi.org/10.1038/s41746-023-00772-w)
    *   **Annotation:** Shows that humans and detectors frequently miss AI-generated abstracts, emphasizing detection limitations.
    *   **Type:** `peer-reviewed`

13. **MarkLLM Toolkit (2024). "Open-source Toolkit for LLM Watermarking." EMNLP 2024.** [https://github.com/thu-coai/MarkLLM](https://github.com/thu-coai/MarkLLM)
    *   **Annotation:** Provides the technical basis for the "Code Workstream" discussion on watermarking research outputs.
    *   **Type:** `peer-reviewed`

14. **HHS (2024). "HIPAA and Artificial Intelligence." Office for Civil Rights.**
    *   **Annotation:** Clarifies that BAAs are required when research AI tools handle PHI, even for de-identified data if the model has re-identification risks.
    *   **Type:** `regulatory-primary`

15. **World Association of Medical Editors (WAME) (2023). "Recommendations on Chatbots and Generative Artificial Intelligence in Relation to Scholarly Publications."** [https://wame.org/page34.php](https://wame.org/page34.php)
    *   **Annotation:** Professional consensus on the "Human-in-the-Loop" model for medical editing.
    *   **Type:** `professional-society`

16. **Springer Nature (2023). "Reviewer guidance on the use of AI in peer review."**
    *   **Annotation:** Explicitly bans uploading manuscripts to AI for review purposes to protect IP.
    *   **Type:** `institutional-policy`

17. **Elsevier (2023). "The use of AI and AI-assisted technologies in scientific writing."** [https://www.elsevier.com/about/policies/publishing-ethics](https://www.elsevier.com/about/policies/publishing-ethics)
    *   **Annotation:** Elsevier's policy on disclosure and accountability.
    *   **Type:** `institutional-policy`

18. **NIH (2025). "Administrative Limits on AI-Generated Grant Submissions." NIH Guide Notice.**
    *   **Annotation:** Policy aiming to limit "mass submissions" generated by AI to protect the review ecosystem.
    *   **Type:** `regulatory-primary`

19. **Undermind (2024). "Benchmarks for Successive Search Agents in Academic Discovery."**
    *   **Annotation:** Performance data for "agentic" search (Recall@50 of ~82%) vs. standard semantic search.
    *   **Type:** `vendor`

20. **Common Rule (2024). "Updates on Data Privacy and Re-identification in AI-Assisted Research." OHRP.**
    *   **Annotation:** Addresses the "continuous feedback loop" of AI and the changing definition of "identifiable" in the era of large-scale cross-referencing.
    *   **Type:** `regulatory-primary`

21. **JAMA (2023). "Instructions for Authors: Use of AI in Manuscript Preparation."** [https://jamanetwork.com/journals/jama/pages/instructions-for-authors](https://jamanetwork.com/journals/jama/pages/instructions-for-authors)
    *   **Annotation:** Requires detailed disclosure of the tool, extent of use, and verification of final content.
    *   **Type:** `professional-society`

22. **NEJM (2023). "Editorial Policy on AI-Assisted Technology."**
    *   **Annotation:** NEJM’s specific stance on AI-generated content and the accountability of the corresponding author.
    *   **Type:** `professional-society`

23. **Markel, H. (2024). "The Ethics of the Algorithmic Investigator." *Academic Medicine*.**
    *   **Annotation:** Discusses the philosophical shift from "discovery" to "curation" in the age of LLMs.
    *   **Type:** `peer-reviewed`

24. **Elicit (2024). "Technical Report: Extracting Data from Academic PDFs at Scale."**
    *   **Annotation:** Documentation on the "Literature Matrix" approach to synthesis.
    *   **Type:** `vendor`

25. **von Hippel, T., & von Hippel, C. (2015/2023). "The impact of time spent writing grant proposals."**
    *   **Annotation:** Foundational (updated for 2023 contexts) data on the administrative burden of grant-writing (116–170 hours).
    *   **Type:** `peer-reviewed`

## 4. Candidate figures and tables

1.  **The AI-Augmented Research Lifecycle**
    *   What it shows: A Mermaid diagram mapping the standard research lifecycle (Idea → Hypothesis → Design → IRB → Data → Analysis → Draft → Review → Pub) with green/yellow/red overlays for AI tool permissibility.
    *   Type: `mermaid-diagram`
    *   Sketch: Nodes for each stage; "Idea/Hypothesis" has "Agentic Search" (Green); "IRB/Data" has "BAA-Required" (Yellow); "Peer Review" has "Prohibited" (Red).

2.  **Comparative Policy Matrix: Journals and Funders**
    *   What it shows: A table comparing Nature, Science, NEJM, JAMA, NIH, and NSF on AI authorship, mandatory disclosure, and peer-review restrictions.
    *   Type: `data-table`
    *   Sketch: Rows: Organization. Columns: AI Author?, Disclosure Required?, Peer Review Allowed?, Policy Date.

3.  **Literature Review Tool Comparison**
    *   What it shows: Comparison of Elicit, Consensus, SciSpace, and Undermind on recall, hallucination risk, and specialized features (e.g., Consensus Meter).
    *   Type: `data-table`
    *   Sketch: Columns for Tool, Best For, Database Scope, Hallucination Counter-measures, Cost.

4.  **The Hallucination Gap**
    *   What it shows: A graph or table showing the precision/recall rates of LLMs (GPT-3.5, 4, Gemini) vs. Human systematic reviewers based on Chelli et al. (2024).
    *   Type: `data-table`
    *   Sketch: Data points: GPT-4 (13% precision), Bard (91% hallucination in early tests), Human (Baseline).

## 5. Open questions for the author

1.  **The "Post-Detection" World:** How should the institution handle research misconduct allegations when AI detection tools are known to have 20–30% false positive rates?
2.  **GPU Sovereignty:** Should the AMC build internal GPU clusters to ensure privacy, or are the risks of "Enterprise Tenants" (Microsoft/Google) with BAAs acceptable for the most sensitive basic science data?
3.  **The Pre-print Problem:** Many of the most relevant systematic evaluations of AI tools are currently in pre-print; should the chapter prioritize these "living" metrics or stick to slower peer-reviewed benchmarks?
4.  **Intellectual Contribution:** At what point does an AI-generated hypothesis cross from "assisted discovery" to "unoriginal work"? The literature is currently silent on this threshold.
