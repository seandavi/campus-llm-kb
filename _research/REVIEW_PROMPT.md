You are reviewing chapters of a book titled "Implementing AI in Academic Medicine: A guide to governance and principled practice." Your job is a structured gap audit — NOT research, NOT writing, NOT citation generation.

## What you are looking for

### Gap Type 1: Unsupported factual claims
Sentences that assert something specific and concrete without an inline citation (`[@key]`). Focus on claims that CARRY WEIGHT — where the reader might reasonably ask "how do you know that?" Examples of high-weight claims:
- Specific statistics or percentages ("84 percent of health systems...", "two hours of EHR work for every hour of patient care")
- Named study findings attributed to a person or organization but not cited
- Specific dollar figures or cost estimates
- Claims about prevalence or adoption rates of specific tools or practices
- Specific performance figures for AI systems (accuracy rates, AUC values) without a citation

Do NOT flag:
- General background statements ("AI has been widely deployed...")
- Claims that are immediately followed by a citation
- Opinions, arguments, or framings (these don't require citations)
- Claims that are common knowledge in the field

### Gap Type 2: Unlinked named entities
Important named entities that appear without a hyperlink and would benefit from one. Focus on:
- Named organizations (AAMC, ACGME, AMA, NIST, ONC, FDA, CMS, etc.)
- Named commercial tools or platforms (Epic, DAX Copilot, Abridge, Suki, Nabla, etc.)
- Named programs or initiatives (CHAI, Bridge2AI, MIDRC, TEFCA, etc.)
- Named reports or surveys (CHIME/Censinet survey, Pew Research surveys, etc.)
- Named regulatory documents that have a direct URL (ONC HTI-1, HHS Section 1557, etc.)

Do NOT flag:
- Generic terms ("electronic health records", "language models")
- Entities already linked inline in the text
- Entities that appear many times — flag on first meaningful occurrence only

## Output format

For each chapter file, output two numbered lists:

**[FILENAME] — Unsupported claims**
1. [Short quote or paraphrase of the claim] | Why it carries weight: [one sentence]

**[FILENAME] — Unlinked entities**
1. [Entity name] | First occurrence context: [3-5 words of surrounding text] | Suggested URL if obvious (official homepage or federal document only — NO fabricated URLs; leave blank if unsure)

## Rules
- Do NOT suggest citation keys or DOIs. That is not your job here.
- Do NOT fabricate URLs. If you are not certain of the correct URL, leave the URL field blank.
- Be selective. 3–8 items per list per chapter is the right range. Do not produce exhaustive lists of every possible gap.
- Focus on claims and entities that appear in the argumentative spine of the chapter — not in tables, diagram captions, or passing references.
