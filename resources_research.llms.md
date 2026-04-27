# 7  Research Domain

Published

April 26, 2026

The academic medical center’s research enterprise has never been easy to sustain. Investigators spend a growing fraction of their time on grant writing and manuscript administration rather than on investigation. The volume of published literature has outpaced any individual’s ability to track it: PubMed indexed more than 37 million citations by mid-2024, with approximately 1.5 million new records added each year ([National Library of Medicine 2024](#ref-NLM2024-pubmed)). The peer review system strains under submission pressure, and the reproducibility crisis — well documented across biomedical fields for more than a decade — continues to surface failures that call the research enterprise’s integrity into question.

Generative AI arrived into this strained system and immediately found traction, not because investigators were looking for AI specifically but because they needed relief from exactly the tasks where AI is most useful: reading and synthesizing large volumes of text, drafting standard-form documents, and generating plausible starting points for complex writing tasks. The technology also introduced new failure modes — citation hallucination, data fabrication, peer review confidentiality violations — that are serious enough to warrant careful institutional guidance.

This chapter maps the real capabilities and real risks of generative AI in the research lifecycle. It does not argue that AI will transform research; the transformation, where it is happening, is more prosaic than that. It argues that an academic medical center that does not give its investigators clear guidance and appropriate infrastructure for AI use in 2025–2026 is leaving a significant productivity gain on the table and creating an integrity risk at the same time.

## 7.1 The Information Crisis in Biomedical Research

Understanding why AI has taken hold in research requires understanding the scale of the problem it is solving. Publication volume growth is not a recent phenomenon, but the rate has accelerated. A systematic reviewer completing a comprehensive literature search in oncology or cardiology today can expect to screen thousands of abstracts for a single review. The manual process — reading title and abstract, applying inclusion/exclusion criteria, extracting data from included papers — consumes months of researcher time for a single systematic review. The Cochrane Collaboration, which sets the standard for systematic review methodology, has documented that the time from literature search to publication for a systematic review averages more than two years.

Grant writing represents a comparable burden. Survey data collected by von Hippel and von Hippel found that principal investigators spend between 116 and 170 hours on a single NIH R01 application, with success rates hovering between 18 and 22 percent ([Hippel and Hippel 2015](#ref-vonHippel2015-grants)). A substantial fraction of that time goes into writing that is formulaic: specific aims language, human subjects sections, data management plans, facilities descriptions. These are exactly the document types where AI drafting assistance has the clearest productivity case.

The reproducibility crisis adds a third dimension. Estimates of irreproducibility in preclinical biomedical research range widely, but a 2015 survey published in *Nature* found that more than 70 percent of researchers had tried and failed to reproduce another scientist’s experiments ([Baker 2016](#ref-Baker2016-reproducibility)). The causes are multiple — inadequate methods reporting, insufficient sample sizes, selective publication — but inadequate documentation is a consistent theme. AI tools that help investigators write more precise and complete methods sections, generate analysis code that is transparent and version-controlled, and produce CONSORT- or PRISMA-compliant reporting checklists address a real problem.

## 7.2 Literature Discovery and Synthesis

The most mature and immediately useful AI applications in research are in literature discovery and synthesis. A new generation of “semantic search” tools has emerged that goes well beyond PubMed keyword search: they embed papers as dense vectors, retrieve semantically similar content, and allow natural-language queries over large corpora.

**Elicit** (elicit.com) allows investigators to upload a set of seed papers or pose a research question and receive a literature matrix — a table in which rows are papers and columns are user-specified attributes extracted by AI (sample size, outcome measures, key findings, population). This is meaningfully different from a list of search results: it is a first-pass data extraction that a reviewer can validate and extend. Elicit’s performance on recall is imperfect — it does not replace a comprehensive database search — but it is a useful starting point for scoping reviews and rapid evidence syntheses.

**Consensus** (consensus.app) is optimized for answering specific empirical questions: “Does X intervention improve Y outcome?” It returns a meter indicating the degree of published consensus, a list of supporting and contradicting papers, and extracted quotations. It is less useful for exploratory synthesis than Elicit but more useful for answering bounded clinical questions.

**SciSpace** (scispace.com) and **Semantic Scholar** (semanticscholar.org) offer complementary capabilities — SciSpace for interactive paper reading with AI explanation, Semantic Scholar for citation network analysis and influence mapping.

Across all these tools, the empirical literature on performance is sobering. A 2024 study in the *Journal of Medical Internet Research* evaluated GPT-4 on systematic review tasks in orthopedic surgery and found approximately 13% precision in literature recall — the model retrieved many irrelevant papers and missed many relevant ones — with substantial hallucination in the reported findings ([Chelli et al. 2024](#ref-Chelli2024-llm-sr)). An earlier study found that AI-generated medical abstracts were indistinguishable from real abstracts by human reviewers more than 30% of the time, and by automated detectors more than 60% of the time ([Gao et al. 2023](#ref-Gao2023-chatgpt-abstracts)). These findings do not argue against using AI tools for literature work; they argue for using them as a first pass that a human reviews, not as a substitute for comprehensive search.

The practical recommendation for an AMC research computing program is to provide investigators with access to two or three of these tools through an institutional account (most offer institutional pricing), include evaluation guidance in researcher training, and set the expectation that AI-assisted literature search supplements but does not replace structured database search (PubMed, Embase, CENTRAL) for systematic reviews.

## 7.3 Hypothesis Generation and Study Design

The use of AI in hypothesis generation is the most philosophically interesting application and the one most surrounded by hype. The honest account is more modest.

Language models have been used to generate candidate hypotheses in drug repurposing, protein function prediction, and epidemiological research. In each of these domains, the model’s output reflects statistical patterns in the training corpus — it will propose hypotheses that are plausible given the existing literature, which means it is most useful for generating well-grounded starting points and least useful for generating genuinely novel ones. A model trained on the biomedical literature will not reliably propose hypotheses that contradict established findings, even when those findings are wrong. The value is in speed and breadth: an investigator exploring a new area can generate twenty candidate research questions in thirty minutes with AI assistance and spend their judgment on evaluating them rather than generating them.

For study design, AI tools are useful for generating draft statistical analysis plans, identifying potential confounders from the literature, drafting power calculations for common study designs, and checking draft methods sections against reporting standards (CONSORT for randomized trials, STROBE for observational studies, PRISMA for systematic reviews). These are tasks that currently require biostatistician or methodologist time; AI cannot replace that expertise, but it can reduce the number of iterations needed before a statistician review.

The buy-versus-build question here is clearly “use existing tools.” No AMC should be building a hypothesis generation AI system. The tools that exist — general-purpose models like GPT-4 and Claude, domain-specific tools like Elicit — are adequate for the investigator-facing use cases. The institutional responsibility is to ensure investigators have access to these tools through secure, BAA-compliant channels when the research involves human subjects data.

## 7.4 Code Generation and Reproducible Analysis

For investigators who work with data — which is most investigators in clinical and translational research — AI code generation is among the highest-value applications in this chapter. The ability to describe a data manipulation task in natural language and receive working R or Python code is genuinely productivity-transforming for investigators who are competent researchers but not expert programmers.

The limitations are important. AI-generated code produces what looks like correct code; whether it is correct depends on whether the investigator can evaluate it. A model asked to perform a mixed-effects regression in R will produce syntactically valid code that often produces numerically plausible results, but it may apply the wrong random effects structure, use the wrong reference level, or fail to account for missing data in the way the investigator intended. An investigator who cannot read the code cannot catch these errors.

The institutional implication is that AI code generation in research requires a floor of computational literacy — the ability to read code, understand its structure, and evaluate whether it implements the intended analysis. This is an argument for including AI-assisted programming in the [Training & Workforce Development chapter](#sec-workforce) curriculum, not an argument against using AI for code generation.

Reproducibility is a distinct concern. Research code generated by AI should be committed to version control, documented, and included in data and code availability disclosures. The [MarkLLM toolkit](https://github.com/thu-coai/MarkLLM) and related watermarking approaches offer technical mechanisms for tracking AI-generated code, though institutional adoption of these tools is not yet widespread. At minimum, investigators should document in their methods sections whether AI tools were used for analysis code generation, consistent with the disclosure norms discussed below.

## 7.5 Manuscript Drafting, Authorship, and the Policy Landscape

The use of AI in manuscript preparation has generated more policy activity than any other AI application in research, and the policies from journals and funders converge on a small number of principles that are worth knowing precisely.

**AI cannot be an author.** The International Committee of Medical Journal Editors updated its authorship recommendations in 2023 to state explicitly that AI tools do not meet authorship criteria because they cannot take responsibility for the work, cannot consent to authorship, and cannot be held accountable for errors ([International Committee of Medical Journal Editors 2023](#ref-ICMJE2023-recommendations)). *Nature*, *Science*, *JAMA*, *NEJM*, and virtually every major biomedical journal has adopted equivalent language. The responsible corresponding author is accountable for any AI-generated content in the manuscript, including any errors it contains.

**AI use must be disclosed.** The specificity of disclosure requirements varies by journal. *Cell Press* requires a dedicated “Declaration of Generative AI and AI-Assisted Technologies in the Writing Process” section placed before the references. *Nature* requires disclosure in the methods. *JAMA* requires disclosure of the tool, the extent of use, and confirmation that the author has verified the final content ([JAMA Network 2023](#ref-JAMA2023-aipolicy)). An investigator drafting a manuscript should check the target journal’s specific requirements; the safe default is to describe in the methods or a dedicated section which AI tools were used and for which tasks.

**AI in peer review is prohibited.** The NIH issued Notice NOT-OD-23-149 in June 2023 prohibiting peer reviewers from using AI tools to analyze or critique NIH grant applications, citing confidentiality requirements for the content of applications ([National Institutes of Health 2023](#ref-NIH2023-NOT-OD-23-149)). The NSF issued parallel guidance for its merit review process ([National Science Foundation 2024](#ref-NSF2024-ai-merit)). Springer Nature explicitly bars uploading manuscripts to AI tools for review purposes. The confidentiality rationale is sound: when a reviewer pastes an unpublished manuscript into a commercial AI service, the manuscript has been disclosed to a third party, potentially in violation of the reviewer’s confidentiality agreement. This is true regardless of whether the AI provider claims not to train on the submitted content.

**Grant applications are subject to disclosure requirements.** NIH has not prohibited the use of AI in preparing grant applications, but has issued guidance on disclosure. The expectation is that the intellectual contribution to the science described in an application is the PI’s own. An application in which the scientific narrative was substantially AI-generated would not meet that expectation. The practical boundary is between AI as an editing and drafting tool for standard-form sections (data management plans, biosketches, resource descriptions) and AI as a substitute for the investigator’s scientific thinking.

[Table tbl-research-policies](#tbl-research-policies) summarizes the policy landscape for major journals and funders.

| Organization | AI authorship | Disclosure required? | AI in peer review | Policy date |
|----|----|----|----|----|
| ICMJE (all member journals) | Prohibited | Yes, extent of use | Not addressed | May 2023 |
| *Nature* | Prohibited | Yes, in methods | Prohibited | Jan 2023 |
| *Science* | Prohibited | Yes | Prohibited | Jan 2023 |
| *JAMA* | Prohibited | Yes, tool + extent | Not explicitly addressed | 2023 |
| *NEJM* | Prohibited | Yes | Not explicitly addressed | 2023 |
| *Cell Press* | Prohibited | Yes, dedicated section | Not explicitly addressed | 2023 |
| NIH (grants) | N/A | Expected for substantial use | Prohibited (NOT-OD-23-149) | Jun 2023 |
| NSF (grants) | N/A | Expected | Prohibited | 2024 |

Table 7.1: AI policy summary for major biomedical journals and funders. Policies are as of early 2026; investigators should check current journal instructions before submission.

## 7.6 Research Integrity Risks

Two integrity risks in AI-assisted research deserve explicit attention: citation hallucination and data fabrication.

Citation hallucination — the generation of plausible-sounding but non-existent references — is the most widely documented AI failure mode in research contexts. Studies have found hallucination rates in AI-generated reference lists ranging from 30% to over 90%, depending on the model, the prompt, and whether the task explicitly required citation verification ([Gao et al. 2023](#ref-Gao2023-chatgpt-abstracts)). The pattern is recognizable: a hallucinated citation typically has a plausible author list, a plausible journal, a plausible year, and a DOI that either does not exist or resolves to a different paper. An investigator who does not verify every AI-generated citation before submission will submit manuscripts with fabricated references, which constitutes research misconduct regardless of whether the fabrication was intentional.

The institutional response is a disclosure and verification norm: any AI tool used for literature-related tasks must have its output verified before it enters a manuscript or grant application. This is not a burden unique to AI — investigators are expected to have read the papers they cite regardless of how they found them. AI makes it easier to accumulate unchecked citations, so explicit verification practice is necessary.

Data fabrication through AI is a more serious concern that has attracted less attention in the policy literature. An investigator who asks an AI model to “fill in” missing data points, “smooth” irregularities in a dataset, or “generate” plausible results for an underpowered study is committing data fabrication in exactly the same way as manual fabrication. The fact that the fabrication was AI-assisted does not reduce the culpability. Research integrity training programs should explicitly address AI-assisted fabrication as a recognized misconduct category, not only the traditional forms.

## 7.7 Human Subjects, Privacy, and Secure Infrastructure

Research involving human subjects data requires particular care in AI tool selection and use. The Common Rule governs research involving identifiable private information; HIPAA governs the use and disclosure of protected health information. Neither was written with AI in mind, and institutional interpretation of how they apply to AI tool use is still evolving.

The operative question for an investigator is: what data can be entered into which AI tool? A reasonable institutional framework distinguishes four scenarios.

First, **publicly available data or fully de-identified data** (under HIPAA Safe Harbor or Expert Determination) may generally be entered into enterprise AI tools — provided the institutional BAA covers the tool. Whether it can be entered into consumer AI tools (public API, no BAA) depends on whether the data remains genuinely non-identifiable at the population level. The re-identification literature is clear that combinations of demographic variables that appear non-identifying individually can uniquely identify individuals in sparse datasets. When in doubt, treat data from clinical sources as identifiable.

Second, **limited dataset** (HIPAA limited dataset, which retains dates and geographic data at the county level) requires a data use agreement and should be treated as potentially identifiable for AI tool purposes. Enterprise tools with BAAs are appropriate; public APIs are not.

Third, **the full EHR** — identifiable clinical data — requires a BAA with the AI tool provider and should not be entered into any tool that does not have that agreement in place. Research use of full EHR data through AI tools should go through the institution’s IRB and through the honest broker process if the investigator is not the treating provider.

Fourth, **genomic and genetic data** is subject to additional constraints — the Genetic Information Nondiscrimination Act (GINA), NIH data sharing policies for GWAS data, and the special re-identification risk of genomic data that is well documented in the literature.

The infrastructure conclusion from this framework is that the research enterprise needs institutional API access to a language model that operates within an enterprise tenant with BAA, not just general permission to use consumer tools. This is a capital and contract decision that should go through the AI Steering Committee, not an investigator-by-investigator determination.

A distinct data governance issue that has emerged from NIH’s 2023 Data Management and Sharing Policy is how model weights and training datasets from AI research projects are treated as “scientific data” subject to sharing requirements. The 2025 NIH guidance on AI-derived genomic data specifically designates trained models as data derivatives subject to the same controlled-access restrictions as the underlying genomic data. The practical implications — what must be shared, what may be shared, and what cannot be shared under DMS obligations — are addressed in [sec-data](#sec-data).

[Figure fig-research-lifecycle](#fig-research-lifecycle) illustrates the full research lifecycle with AI tool availability and constraints annotated at each stage.

``` mermaid
flowchart LR
    A([Idea\nGeneration]) --> B([Literature\nReview])
    B --> C([Hypothesis\nFormation])
    C --> D([Study\nDesign])
    D --> E([IRB\nSubmission])
    E --> F([Data\nCollection])
    F --> G([Analysis &\nCoding])
    G --> H([Manuscript\nDrafting])
    H --> I([Peer\nReview])
    I --> J([Publication &\nDissemination])

    style A fill:#90EE90
    style B fill:#90EE90
    style C fill:#FFD700
    style D fill:#90EE90
    style E fill:#FFD700
    style F fill:#FFD700
    style G fill:#90EE90
    style H fill:#90EE90
    style I fill:#FF6B6B
    style J fill:#90EE90
```

Figure 7.1: The biomedical research lifecycle with generative AI tool applicability. Green nodes indicate mature, lower-risk AI applications. Yellow nodes indicate useful but higher-risk applications requiring human verification. Red indicates institutional or regulatory prohibition.

## 7.8 Where to Start: Two Starter Projects

### 7.8.1 Project 1: Institutional Literature Review Toolkit

**What it is.** Negotiate an institutional subscription to Elicit or a comparable semantic search tool and configure it with access for all investigators. Create a one-page usage guide that specifies: which tasks the tool is appropriate for (scoping reviews, rapid evidence maps, initial literature exploration), which tasks require supplementation with structured database search (systematic reviews intended for peer review, Cochrane-style meta-analyses), and how to document AI tool use in methods sections per target journal requirements.

**What you need to start.** A research computing or library liaison who can manage the institutional subscription, budget for a modest annual license (Elicit institutional pricing is public and reasonable), and someone in the research integrity or library team who can write the one-page guide. The guide should take one working day to draft and one meeting with a few senior investigators to validate.

**Build or buy?** Buy — specifically, subscribe to an existing tool. Do not build a literature search AI from scratch. The commercial tools have invested years in recall optimization over biomedical corpora; a locally built vector search over PubMed will not match them and will require ongoing infrastructure investment to maintain.

**What done looks like.** Within 90 days: institutional account active, usage guide published on the research computing or library website, at least 20 investigators have used the tool, and a short usage report has been delivered to the research dean showing which departments are using it and for what. The usage data is itself valuable: it shows where investigators are investing in literature work and where training is needed.

### 7.8.2 Project 2: Secure AI Gateway for Research Computing

**What it is.** Deploy an institutional API gateway that routes requests to a language model (GPT-4, Claude, or Gemini) through an enterprise-tenanted endpoint with a BAA, logs all usage by user and project, and enforces data classification rules — specifically, rejecting or flagging requests that contain patterns matching PHI or genomic identifiers. Researchers submit queries through a simple web interface or through an API key issued against their institutional credentials.

**Why this matters for research specifically.** The alternative — investigators using personal OpenAI or Anthropic accounts for research tasks — creates two problems. It routes research data through personal accounts with no institutional oversight or logging. It makes it impossible to answer the question “what AI tools did you use on this project?” when a journal or funder asks, because there is no institutional record.

**What you need to start.** The core technical components are an Azure OpenAI or AWS Bedrock deployment (both offer BAAs; setup takes one to two weeks for a system administrator familiar with the platform), a simple API gateway (LiteLLM proxy is an open-source option that adds routing, logging, and cost tracking with minimal configuration), and a credential issuance process tied to the institution’s identity provider. The entire system can be built by one competent platform engineer in two to four weeks.

**Build or buy?** Build the gateway, buy the model. The model capability comes from the commercial provider; the gateway is lightweight infrastructure that the institution controls. This is one of the cases where a modest engineering investment produces a durable capability: once the gateway is running, adding new model providers, new data classification rules, or new usage analytics is incremental work.

**What done looks like.** Investigators can make API requests to the institutional gateway from their preferred coding environment (R, Python, Jupyter) or from a simple web interface. Usage is logged by project and researcher. A data classification filter is running on prompt content. A quarterly usage report goes to the research dean and the AISC. When a journal asks “did you use AI on this project?”, the investigator can answer based on their logged requests rather than on memory.

Baker, Monya. 2016. “1,500 Scientists Lift the Lid on Reproducibility.” *Nature* 533: 452–54. <https://doi.org/10.1038/533452a>.

Chelli, Mikaël, Julien Descamps, Vincent Lavoue, et al. 2024. “Hallucination Rates and Reference Accuracy of ChatGPT and Bard for Systematic Reviews: Comparative Study.” *Journal of Medical Internet Research* 26: e53745. <https://doi.org/10.2196/53745>.

Gao, Catherine A, Frederick M Howard, Nikolay S Markov, et al. 2023. “Comparing Scientific Abstracts Generated by ChatGPT to Real Abstracts with Detectors and Blinded Human Reviewers.” *Npj Digital Medicine* 6: 75. <https://doi.org/10.1038/s41746-023-00772-w>.

Hippel, Ted von, and Courtney von Hippel. 2015. “The Time Allocation Effects of Uncertainty: Grant Writing and Scientific Productivity.” *PLOS ONE* 10 (5): e0127948. <https://doi.org/10.1371/journal.pone.0127948>.

International Committee of Medical Journal Editors. 2023. *Recommendations for the Conduct, Reporting, Editing, and Publication of Scholarly Work in Medical Journals*. <https://www.icmje.org/recommendations/>.

JAMA Network. 2023. *Instructions for Authors: Use of Artificial Intelligence, Language Models, Machine Learning, or Similar Technologies*. <https://jamanetwork.com/journals/jama/pages/instructions-for-authors>.

National Institutes of Health. 2023. *The Use of Generative Artificial Intelligence Technologies Is Not Permitted for NIH Peer Review Activities*. NOT-OD-23-149. <https://grants.nih.gov/grants/guide/notice-files/NOT-OD-23-149.html>.

National Library of Medicine. 2024. *PubMed Statistics*. <https://pubmed.ncbi.nlm.nih.gov/stats/>.

National Science Foundation. 2024. *Notice on the Use of Generative Artificial Intelligence Technology in the NSF Merit Review Process*. <https://new.nsf.gov/news/notice-on-the-use-of-generative-artificial-intelligence>.
