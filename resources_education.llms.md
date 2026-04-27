# 8  Education Domain

Published

April 26, 2026

The conversation about generative AI in health professions education has been dominated, since late 2022, by two questions that are increasingly beside the point: Can students use AI to cheat? Can we detect it if they do? Both questions assume that the problem is a student behavior problem, and that better enforcement will solve it. Neither assumption holds, and the obsession with both has distracted education leaders from the more consequential question: what does it mean to teach and assess clinical reasoning when a language model can pass the USMLE?

In January 2023, ChatGPT passed all three steps of the United States Medical Licensing Examination at or above the passing threshold for human test-takers ([Kung et al. 2023](#ref-Kung2023-usmle)). That benchmark has since been exceeded: GPT-4 achieves approximately 86% accuracy on Step 1 questions and 87% on Step 2 Clinical Knowledge, performance that meets or exceeds the median medical student ([Garabet et al. 2024](#ref-Garabet2024-step1); [Dhakal et al. 2024](#ref-Dhakal2024-step2)). The boards were designed to certify that physicians had internalized a body of medical knowledge. They were not designed to certify that a physician could distinguish their own reasoning from AI-generated reasoning. Those are now different things.

This chapter is not an argument against rigor or assessment. It is an argument that the assessment infrastructure of health professions education needs to be rebuilt around what AI cannot yet do — authentic clinical reasoning, communication under uncertainty, integration of patient values — and that the institution’s job is to support that rebuilding rather than defend the examination infrastructure that preceded it.

## 8.1 The Collapse of the Proxy

For decades, written assessments in health professions education served as proxies for the cognitive processes educators actually cared about. A well-written clinical case write-up indicated that the student had synthesized information, generated a differential, and reasoned through management options. A literature review demonstrated that the student could retrieve and critically evaluate evidence. A patient encounter note showed that the student could document a clinical interaction coherently.

These proxies worked because they were hard to produce without actually doing the thinking. They no longer work. A language model given the same case information a student is given can produce a write-up that is, on most dimensions, better than the average student’s write-up — better organized, more comprehensive, with fewer factual errors. It can generate a complete SOAP note from a brief encounter description. It can produce a literature review with a reasonable bibliography.

The problem is not that students are using AI to do these tasks. The problem is that educators designed the tasks to measure one thing and are now trying to use them to measure another. An assignment that genuinely measures clinical reasoning under AI-augmented conditions looks different from an assignment designed to measure unaided recall. The first step in adapting assessment is to be honest about which kind of measure you need.

## 8.2 The Detection Trap

The institutional response that gained the most traction in 2023 was enforcement: updated honor codes prohibiting AI use, mandatory disclosure requirements for AI assistance, and AI detection tools. The detection tools — [Turnitin](https://www.turnitin.com)’s AI writing detection, [GPTZero](https://gptzero.me), [Copyleaks](https://copyleaks.com) — were marketed at a moment of institutional anxiety and adopted widely before their limitations were understood.

Those limitations are substantial. Detection accuracy varies significantly across writing styles, assignment types, and AI models. False-positive rates — flagging human-written work as AI-generated — disproportionately affect non-native English speakers, whose more formal and pattern-consistent prose is more likely to trigger detection thresholds ([Liang et al. 2023](#ref-Liang2023-aidetect)). Students who have been falsely accused of AI use in high-stakes grading contexts have documented the experience as deeply damaging, and at least one institution faced legal exposure over a misapplied detection finding.

The Federal Trade Commission’s enforcement posture on AI detection tools — including actions against companies that overstated their detection accuracy — has added a compliance dimension to adoption decisions ([Federal Trade Commission 2024](#ref-FTC2024-operationai)). An institution that implements a detection tool based on vendor accuracy claims without independent validation is making a factual representation it may not be able to defend.

Prohibition without a structural alternative produces the same behavior with added incentive to hide it. Students who are prohibited from using AI but who observe that their future clinical colleagues use it constantly experience the prohibition as arbitrary rather than principled. The honest conversation with students is not “AI use is prohibited” but “here is what you need to be able to do on your own, here is why, and here is how we assess that.”

## 8.3 A Workable Framing: Tiered Policies and Process Grading

The framing that has produced the most defensible and educationally coherent institutional policies is a tiered approach that distinguishes among assignment types rather than making a blanket determination about AI use.

Ethan Mollick and Lilach Mollick’s work on assigning AI ([Mollick and Mollick 2023](#ref-Mollick2023-assigning)) describes a spectrum of pedagogical stances: AI prohibited (where unaided performance is the learning objective), AI as a tool to be used transparently (where the process of working with AI is part of what is being taught), and AI use as contextually unrestricted (where the product quality matters more than the production process, as it often does in practice). The same framework applies in health professions education, where the three stances correspond roughly to high-stakes clinical reasoning assessments (unaided performance required), literature review and synthesis tasks (AI as tool, process documented), and clinical note drafting and patient communication practice (AI use mirrors professional reality).

[Figure fig-ed-assessment-decision](#fig-ed-assessment-decision) shows a decision tree an educator can use to assign assessment tier.

``` mermaid
flowchart TD
    A[Define learning objective] --> B{Does the objective\nrequire unaided\nclinical reasoning?}
    B -- Yes --> C[AI Prohibited\nAssess individual\nperformance]
    B -- No --> D{Is AI use standard\nin this clinical task\nin practice?}
    D -- Yes --> E[AI Integrated\nMandatory use + reflection\non AI output quality]
    D -- No --> F{Can AI complete\nthe task unassisted?}
    F -- Yes --> G[AI Permitted\nwith disclosure +\nprocess documentation]
    F -- No --> H[AI as tool\nStructured collaboration\nwith human verification]
    C --> I[Oral exam,\nOSCE, direct observation]
    E --> J[Graded: reasoning\ntransparency + oversight quality]
    G --> J
    H --> J
```

Figure 8.1: Assessment redesign decision tree for health professions educators. The key question is whether the learning objective requires demonstrating unaided clinical reasoning or demonstrating competent use of AI-augmented tools.

The shift from product grading to process grading is the most important structural change available to educators. Grading the process — the prompt log, the AI output, the student’s verification and editing decisions, the written reflection on what the AI produced versus what the student changed — measures exactly the skills that matter in AI-augmented clinical practice: the ability to evaluate AI output critically, identify errors, and exercise professional judgment over a generated starting point. This approach is more labor-intensive to design and grade than a conventional written product; it is also considerably harder to outsource entirely to AI, because the reflection on AI output requires a human who actually did the work.

## 8.4 The USMLE and the Limits of Licensing Exam Reform

The licensing exam context deserves specific attention because it is the external constraint that shapes so much of undergraduate medical education. When AI passes Step 2 CK at 87%, the natural question is: what are we preparing students for?

The answer from the National Board of Medical Examiners — which has been studying AI performance on its exams since 2023 — is nuanced ([Yaneva et al. 2024](#ref-Yaneva2024-clinreasoning)). High AI performance on multiple-choice clinical vignettes does not mean that AI can replicate authentic clinical reasoning. The vignettes test pattern recognition on structured information; clinical practice requires integrating incomplete, contradictory, and affectively complex information in real time, with a patient whose presentation does not fit the textbook pattern. AI is weaker on these tasks, and considerably weaker on the communicative and relational dimensions of clinical care that licensing exams do not currently measure.

The implication for medical education is not that the boards are irrelevant but that they are increasingly insufficient. Competency-based medical education (CBME) frameworks — the ACGME milestones, the entrustable professional activities — provide a structure for assessing the capabilities that board exams do not capture. Educators who redesign assessment to emphasize direct observation, structured clinical encounters, and oral examination of reasoning are building toward an assessment model that remains meaningful in an AI-augmented world. Educators who optimize for multiple-choice performance are not.

## 8.5 AI Literacy as Curriculum

The question of what medical students should know about AI was the subject of a foundational 2020 paper by McCoy et al. in *npj Digital Medicine* ([McCoy et al. 2020](#ref-McCoy2020-ai-literacy)). Their argument — that medical students need literacy in AI as users and evaluators rather than as developers — remains the right framework. The specific competencies have been elaborated since then, and as of 2025 the question has moved from “should we teach this?” to “what exactly are we required to teach and how do we demonstrate compliance?”

The AAMC’s 2025 AI Competencies Across the Learning Continuum, developed through a formal Delphi process involving medical educators across the country, provides a national standard for AI competency across undergraduate, graduate, and continuing medical education ([Association of American Medical Colleges 2025](#ref-AAMC2025-competencies)). The ACGME’s July 2025 Common Program Requirements include explicit provisions on human-AI teamwork and require residency programs to have institutional policies on AI use — the first time ACGME has required programs to govern AI specifically ([Accreditation Council for Graduate Medical Education 2025](#ref-ACGME2025-CPR)). Programs without documented AI governance are out of compliance starting with the 2025 to 2026 accreditation year. The American Medical Informatics Association has proposed a competency framework for health professionals that distinguishes among AI consumers (who use AI tools in clinical work), AI translators (who evaluate AI tools and advocate for appropriate use), and AI developers (who build and validate AI systems) ([American Medical Informatics Association 2024](#ref-AMIA2024-competencies)).

The consumer/translator/developer distinction is useful for curriculum design because it implies that different learners need different things. Every medical student needs consumer-level AI literacy: how to evaluate AI-generated clinical information, how to recognize hallucinations and errors, how to document AI use in clinical settings, and how to have an informed conversation with a patient about AI’s role in their care. Only some students will become translators or developers, and the curriculum should not require developer-level technical knowledge of everyone.

What this means concretely: a required AI literacy module in medical school should cover the basic capabilities and limitations of language models (without requiring programming), the specific failure modes relevant to clinical use (hallucination, bias, over-confidence), the disclosure and documentation standards expected by major journals and by the clinical record, and how to evaluate an AI tool for fitness in a specific clinical task. This module is not optional enrichment — it is basic preparation for the clinical environment students are about to enter.

[Table tbl-ed-literacy-frameworks](#tbl-ed-literacy-frameworks) summarizes the major competency frameworks proposed for health professions AI literacy.

| Framework | Organization | Year | Target audience | Core emphasis |
|----|----|----|----|----|
| AI Literacy for Medical Students | McCoy et al., *npj Digital Med* | 2020 | Medical students | Evaluation, bias, communication |
| Principles for Responsible AI Use | AAMC | 2024 | Medical educators | Faculty development, equity |
| AI Competencies Across the Learning Continuum | AAMC | 2025 | UME/GME/CME programs | National standard; Delphi-developed competency set |
| AI Competencies for Health Professionals | AMIA | 2024 | Health professionals | Consumer/translator/developer tiers |
| Common Program Requirements (AI provisions) | ACGME | 2025 | Residency programs | Human-AI teamwork; institutional AI policies required |
| Preparing Clinicians for AI | James, Wachter, & Woolliscroft, *JAMA* | 2022 | All clinicians | Reasoning under AI uncertainty |

Table 8.1: Major AI literacy competency frameworks for health professions education, with target audience and emphasis. The 2025 AAMC and ACGME entries reflect requirements that became effective for the 2025–2026 academic year; programs should verify current language directly with each organization.

## 8.6 Institutional Policies: What Has Actually Been Published

The most useful institutional AI policies in health professions education are the ones that specify which tools are permitted, under what data handling conditions, and with what disclosure requirements — not the ones that simply declare a principle of “responsible use.” Several health professions schools have published policies worth examining.

UCSF’s School of Medicine has implemented a tiered system (AI-1 through AI-4) that signals permitted AI use levels for each assessment, with AI-4 designating full integration of approved tools. The system uses an institutional AI environment (“Versa Chat”) that keeps patient-related data within a HIPAA-compliant boundary. The explicit data-security specification — which tool, under what conditions — is the element most often absent from general university policies and most necessary for a clinical training environment.

Johns Hopkins University has published a red/yellow/green framework for courses, with green indicating that AI use consistent with professional norms is expected, yellow indicating that AI use is permitted with documentation, and red indicating that AI use is prohibited and the assessment tests unaided performance. The color system is simple enough for students to internalize without reading a policy document for every course.

The common element across the most effective policies is that they specify the institutional tool rather than deferring to student choice of tool. This is a data governance decision as much as an educational one: medical students on clinical rotations are surrounded by patient information, and a policy that permits “any AI tool the student finds useful” is a policy that permits HIPAA exposure.

[Table tbl-ed-policies](#tbl-ed-policies) shows a comparison of selected health-professions AI policies.

| Institution | Tier/color system | Approved tools specified? | Data security requirement | Disclosure required? |
|----|----|----|----|----|
| UCSF School of Medicine | AI-1 to AI-4 | Yes (Versa Chat) | HIPAA-compliant only | Yes |
| Johns Hopkins University | Red/Yellow/Green | Partial | Not specified | Yes |
| Mayo Clinic College | None (principled guidance) | No | “De-identified only” | Yes |
| Harvard Medical School | Case-by-case faculty decision | No | Not specified | Yes |

Table 8.2: Comparison of health-professions institutional AI policies on key implementation dimensions. Policies were documented in early 2026; institutions update these frequently.

## 8.7 Academic Integrity as a Patient Safety Issue

The stakes of academic integrity in health professions education are not equivalent to the stakes in a general undergraduate program. A student who outsources a history paper to AI has submitted fraudulent work, and the consequence is primarily to their own learning. A medical student who outsources clinical reasoning to AI during training — who presents AI-generated differentials and management plans as their own reasoning through repeated assessments — has learned to operate a clinical workflow they do not understand. The consequence is potentially borne by future patients.

James, Wachter, and Woolliscroft made this argument directly in their 2022 JAMA piece on preparing clinicians for an AI-influenced clinical world ([James et al. 2022](#ref-James2022-preparing)). The concern is not that AI will replace clinical reasoning but that clinicians who have not developed strong independent reasoning will not be equipped to recognize when AI reasoning is wrong. Automation bias — the tendency to accept automated system output without adequate critical evaluation — is well documented in aviation and other high-stakes domains, and there is no reason to believe clinical medicine is immune.

This reframes the academic integrity conversation from “students are cheating” to “we are responsible for training clinicians who can function safely when AI fails.” That is a more honest and more motivating frame for curriculum redesign. It also makes the argument for genuine investment in assessment reform: not detection systems that catch cheaters, but assessment methods that require demonstrating the reasoning that makes a physician safe.

## 8.8 Where to Start: Two Starter Projects

### 8.8.1 Project 1: AI Literacy Module for All Health Professions Students

**What it is.** Develop and deploy a required, one-hour AI literacy module covering: how language models work at a conceptual level (no programming), what they are good for and where they fail, how to evaluate AI-generated clinical information critically, how to document AI use in clinical records per institutional policy, and how to discuss AI with patients. The module is assessed with a short practical exercise — evaluate a clinical AI output and document its errors — not a multiple-choice knowledge test.

**What you need to start.** A course director or clinical informatics faculty member willing to champion it, two to four weeks of faculty time to write and pilot the content, and an LMS slot in a required course. The AAMC’s published principles and the McCoy et al. framework provide the content scaffold; you are writing the local application, not the theory.

**Build or buy?** Write locally. National-level modules are available (the AMA and AAMC have published resources) but they are not calibrated to your institutional tools and policies. The module needs to name your approved AI tools, your data classification rules, and your disclosure requirements — none of which a generic national module will include.

**What done looks like.** Within one academic year: every student in the graduating class has completed the module, the practical exercise has been piloted and revised, at least one faculty group has reviewed it for currency, and the module is integrated into the orientation or first-year curriculum on a recurring basis.

### 8.8.2 Project 2: Assessment Redesign Workshop for Course Directors

**What it is.** A half-day faculty development workshop that walks course directors through the tiered assessment framework, gives them a structured process for auditing their current assignments against AI capability, and supports them in redesigning one high-stakes assignment per course to assess process rather than product. The output of the workshop is a concrete revised assignment, not an abstract policy commitment.

**Why this matters more than policy.** Policy says “use AI responsibly.” A redesigned assignment with a prompt log requirement and a structured reflection makes “responsible use” measurable and teaches the skills that matter. Faculty who have redesigned one assignment understand the framework well enough to apply it to others.

**What you need to start.** A facilitator familiar with writing-studies pedagogy and clinical education (or one from each), three to five volunteers from courses that have explicit writing or reasoning components, and a half day in the academic calendar. The Mollick & Mollick SSRN paper ([Mollick and Mollick 2023](#ref-Mollick2023-assigning)) and the UCSF tier system provide the conceptual scaffolding.

**Build or buy?** Design locally and run it yourself. National faculty development resources on AI exist (AAMC, AACME), but they are not structured to produce revised assignments. The workshop only produces value if it ends with a concrete artifact.

**What done looks like.** Five course directors have revised one assignment each, the revised assignments have been piloted for one academic cycle, and a follow-up session has been held to share what worked and what needed adjustment. The materials from the workshop — the assessment audit rubric, the redesign process — are available for any course director who wants to use them independently.

Accreditation Council for Graduate Medical Education. 2025. *Common Program Requirements: July 2025 Updates*. [Https://www.acgme.org/what-we-do/accreditation/common-program-requirements/](https://www.acgme.org/what-we-do/accreditation/common-program-requirements/). <https://www.acgme.org/what-we-do/accreditation/common-program-requirements/>.

American Medical Informatics Association. 2024. *AI Competencies for Health Professionals*. <https://amia.org/education-events/ai-competencies>.

Association of American Medical Colleges. 2025. *AI Competencies Across the Learning Continuum*. [Https://www.aamc.org/about-us/mission-areas/medical-education/ai-competencies](https://www.aamc.org/about-us/mission-areas/medical-education/ai-competencies). <https://www.aamc.org/about-us/mission-areas/medical-education/ai-competencies>.

Dhakal, Prithvi et al. 2024. “Evaluation of GPT-4 on USMLE Step 2 Clinical Knowledge Questions.” *JMIR Medical Education*.

Federal Trade Commission. 2024. *Operation AI Comply: Continuing Actions Against AI-Related Deceptive Practices*. <https://www.ftc.gov/news-events/press-releases/2024/09/ftc-announces-operation-ai-comply>.

Garabet, Liana, Alexei Kasparov, Marc Minciullo, John Tran, and Medhat Sarhan. 2024. “Performance of GPT-4 on USMLE Step 1–Style Questions.” *Medical Science Educator* 34: 89–97. <https://doi.org/10.1007/s40670-023-01968-3>.

James, Casey A, Robert M Wachter, and James O Woolliscroft. 2022. “Preparing Clinicians for a Clinical World Influenced by Artificial Intelligence.” *JAMA* 327 (14): 1333–34. <https://doi.org/10.1001/jama.2022.3580>.

Kung, Tiffany H, Morgan Cheatham, Arielle Medenilla, et al. 2023. “Performance of ChatGPT on USMLE: Potential for AI-Assisted Medical Education Using Large Language Models.” *PLOS Digital Health* 2 (2): e0000198. <https://doi.org/10.1371/journal.pdig.0000198>.

Liang, Weixin, Mert Yuksekgonul, Yining Mao, Eric Wu, and James Zou. 2023. “GPT Detectors Are Biased Against Non-Native English Writers.” *Patterns* 4 (7): 100779. <https://doi.org/10.1016/j.patter.2023.100779>.

McCoy, Liam G, Sulaiman Nagaraj, Farouk Morgado, Vinyas Harish, Sunit Das, and Leo Anthony Celi. 2020. “What Do Medical Students Actually Need to Know about Artificial Intelligence?” *Npj Digital Medicine* 3 (1): 86. <https://doi.org/10.1038/s41746-020-0294-7>.

Mollick, Ethan R, and Lilach Mollick. 2023. *Assigning AI: Seven Approaches for Students, with Prompts*. SSRN. <https://ssrn.com/abstract=4475995>.

Yaneva, Victoria et al. 2024. “Evaluating GPT-4 on USMLE Step 2 CK: Implications for Clinical Reasoning Assessment.” *Academic Medicine*.
