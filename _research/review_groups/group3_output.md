YOLO mode is enabled. All tool calls will be automatically approved.
YOLO mode is enabled. All tool calls will be automatically approved.
I will begin by reading the `_research/REVIEW_PROMPT.md` file to ensure I follow the specific instructions for the gap audit, and then I'll read and analyze `resources_clinical.qmd` and `resources_research.qmd` to identify unsupported claims and unlinked entities.

I'll now read `resources_clinical.qmd` to identify unsupported claims and unlinked entities for the first part of the audit.

I have analyzed `resources_clinical.qmd` and identified several unsupported claims regarding sepsis model usage, LLM effectiveness in SDOH extraction, and Epic's deployment reach, as well as unlinked entities like Abridge, Microsoft DAX, and California AB 3030. I will now read `resources_research.qmd` to perform the same analysis.

I have completed the gap audit for `resources_clinical.qmd` and `resources_research.qmd`. Below are the results of the audit, highlighting unsupported claims and unlinked entities as requested.

### resources_clinical.qmd — Unsupported claims

1. "Emergency departments use predictive sepsis models as standard workflow." | Why it carries weight: Asserting that these models have reached the status of "standard workflow" suggests near-universal adoption, which is a strong empirical claim regarding the current state of clinical practice.
2. "LLMs are proving to be effective extraction tools for exactly this kind of problem [SDOH extraction]." | Why it carries weight: Claims a specific technical efficacy for a high-stakes clinical data extraction task without a supporting study or performance metric citation.
3. "Epic's patient-facing messaging features ... are now deployed at dozens of major health systems." | Why it carries weight: Provides a specific estimate of market penetration ("dozens") for a major commercial platform's new feature without a supporting citation.
4. "A clinician reviewing a well-formatted, plausible note is less likely to detect a missing item than one reviewing a note with obvious structural gaps." | Why it carries weight: This makes a specific cognitive/human-factors claim about error detection rates in AI-generated documentation that warrants empirical support.

### resources_clinical.qmd — Unlinked entities

1. Abridge | First occurrence context: Abridge, Microsoft DAX (Dragon Ambient | https://www.abridge.com
2. Microsoft DAX | First occurrence context: (Dragon Ambient eXperience), Nabla Copilot | https://www.microsoft.com/en-us/healthcare/products/dragon-ambient-experience
3. Nabla Copilot | First occurrence context: Nabla Copilot, and Suki are | https://www.nabla.com
4. California Assembly Bill 3030 | First occurrence context: California Assembly Bill 3030, effective | https://leginfo.legislature.ca.gov/faces/billTextClient.xhtml?bill_id=202320240AB3030
5. Credo AI | First occurrence context: governance inventory exist (Credo AI | https://www.credo.ai
6. IBM OpenScale | First occurrence context: Credo AI, IBM OpenScale) but | https://www.ibm.com/products/watsonx-governance

***

### resources_research.qmd — Unsupported claims

1. "The Cochrane Collaboration ... has documented that the time from literature search to publication for a systematic review averages more than two years." | Why it carries weight: Attributes a specific, significant duration to a premier research organization, making it a concrete claim about research efficiency.
2. "The 2025 NIH guidance on AI-derived genomic data specifically designates trained models as data derivatives subject to the same controlled-access restrictions..." | Why it carries weight: Makes a specific assertion about federal regulatory policy for highly sensitive genomic data without an official notice or policy citation.
3. "Elicit's performance on recall is imperfect... but it is a useful starting point for scoping reviews and rapid evidence syntheses." | Why it carries weight: Provides a methodological recommendation for specific research types based on a performance assessment of a commercial tool without a citation.
4. "The entire system [Secure AI Gateway] can be built by one competent platform engineer in two to four weeks." | Why it carries weight: Offers a specific timeline and resource estimate for a complex institutional infrastructure project.

### resources_research.qmd — Unlinked entities

1. Cochrane Collaboration | First occurrence context: The Cochrane Collaboration, which sets | https://www.cochrane.org
2. ICMJE | First occurrence context: (ICMJE) updated its authorship recommendations | https://www.icmje.org
3. Common Rule | First occurrence context: The Common Rule governs research | https://www.hhs.gov/ohrp/regulations-and-policy/regulations/common-rule/index.html
4. Azure OpenAI | First occurrence context: an Azure OpenAI or AWS | https://azure.microsoft.com/en-us/products/ai-services/openai-service
5. AWS Bedrock | First occurrence context: OpenAI or AWS Bedrock deployment | https://aws.amazon.com/bedrock/
6. LiteLLM | First occurrence context: (LiteLLM proxy is an open-source | https://github.com/BerriAI/litellm
