# 8  Education Domain

Published

August 17, 2026

The conversation about generative AI in health professions education has been dominated, since late 2022, by two questions that are increasingly beside the point: Can students use AI to cheat? Can we detect it if they do? Both questions assume that the problem is a student behavior problem, and that better enforcement will solve it. Neither assumption holds, and the obsession with both has distracted education leaders from the more consequential question: what does it mean to teach and assess clinical reasoning when a language model can pass the USMLE?

In early 2023, ChatGPT performed at or near the passing threshold on all three steps of the United States Medical Licensing Examination, with no specialized training ([Kung et al. 2023](#ref-Kung2023-usmle)). Later models did better. ChatGPT-4 answered 86% of 1,300 Step 1-style questions correctly against an estimated passing score of 60% ([Garabet et al. 2024](#ref-Garabet2024-step1)), and 87.2% of 109 Step 2 Clinical Knowledge practice questions ([Shieh et al. 2024](#ref-Shieh2024-step2ck)). It is worth stating what these studies did not do, since the headlines did not: none administered an operational examination, and none benchmarked the models against a median student. The defensible summary is narrower than the one in circulation, and still sufficient to force the question. On the multiple-choice material that stands in for the boards, current models score well above the passing line. The boards were designed to certify that physicians had internalized a body of medical knowledge. They were not designed to certify that a physician could distinguish their own reasoning from AI-generated reasoning. Those are now different things.

This chapter is not an argument against rigor or assessment. It is an argument that the assessment infrastructure of health professions education needs to be rebuilt around what AI cannot yet do — authentic clinical reasoning, communication under uncertainty, integration of patient values — and that the institution’s job is to support that rebuilding rather than defend the examination infrastructure that preceded it.

## 8.1 The Collapse of the Proxy

For decades, written assessments in health professions education served as proxies for the cognitive processes educators actually cared about. A well-written clinical case write-up indicated that the student had synthesized information, generated a differential, and reasoned through management options. A literature review demonstrated that the student could retrieve and critically evaluate evidence. A patient encounter note showed that the student could document a clinical interaction coherently.

These proxies worked because they were hard to produce without actually doing the thinking. They no longer work. A language model given the same case information a student is given can produce a write-up that is, on most dimensions, better than the average student’s write-up — better organized, more comprehensive, with fewer factual errors. It can generate a complete SOAP note from a brief encounter description. It can produce a literature review with a reasonable bibliography.

The problem is not that students are using AI to do these tasks. The problem is that educators designed the tasks to measure one thing and are now trying to use them to measure another. An assignment that genuinely measures clinical reasoning under AI-augmented conditions looks different from an assignment designed to measure unaided recall. The first step in adapting assessment is to be honest about which kind of measure you need.

## 8.2 The Detection Trap

The institutional response that gained the most traction in 2023 was enforcement: updated honor codes prohibiting AI use, mandatory disclosure requirements for AI assistance, and AI detection tools. The detection tools — [Turnitin](https://www.turnitin.com)’s AI writing detection, [GPTZero](https://gptzero.me), [Copyleaks](https://copyleaks.com) — were marketed at a moment of institutional anxiety and adopted widely before their limitations were understood.

Those limitations are substantial, and the important one is not aggregate accuracy but who absorbs the errors. Liang and colleagues ran seven widely used GPT detectors over 91 TOEFL essays written by non-native English speakers and 88 essays by US eighth-graders ([Liang et al. 2023](#ref-Liang2023-aidetect)). On the US students the detectors were near-perfect. On the non-native writers the average false-positive rate was 61.3%, and at least one detector flagged 97.8% of the TOEFL essays as machine-generated. The mechanism is perplexity rather than formality: detectors read limited vocabulary and grammatical range as a machine signature, and that is also what second-language writing looks like. Two follow-on experiments finish the argument. Asking a model to enrich the vocabulary of the non-native essays dropped the false-positive rate from 61.3% to 11.6%, and asking it to rewrite genuinely AI-generated text in more literary language drove detection to near zero. The tool fails in both directions that matter, and it fails hardest against the students least able to contest the finding.

No federal enforcement action has yet targeted an AI-detection vendor, and it would be wrong to suggest otherwise. What the Federal Trade Commission has established is the general principle. Its September 2024 sweep, Operation AI Comply, brought cases against a company selling “robot lawyer” services, a tool that generated fake reviews, and three online-storefront earnings schemes, on the theory that there is no AI exemption from the laws already on the books and that claims about what an AI system can do must be substantiated ([Federal Trade Commission 2024](#ref-FTC2024-operationai)). Detection vendors sell exactly such a claim. An institution that adopts a detection tool on the strength of a vendor accuracy figure it has not independently validated, and then disciplines a student on that basis, is making a factual representation about a person that it cannot defend. The exposure there is less regulatory than it is the ordinary exposure of accusing someone of something you cannot prove.

Prohibition without a structural alternative produces the same behavior with added incentive to hide it. Students who are prohibited from using AI but who observe that their future clinical colleagues use it constantly experience the prohibition as arbitrary rather than principled. The honest conversation with students is not “AI use is prohibited” but “here is what you need to be able to do on your own, here is why, and here is how we assess that.”

## 8.3 A Workable Framing: Tiered Policies and Process Grading

The framing that has produced the most defensible and educationally coherent institutional policies is a tiered approach that distinguishes among assignment types rather than making a blanket determination about AI use.

Ethan Mollick and Lilach Mollick propose seven roles a language model can play in a classroom, each with its own pedagogical benefits and risks: AI-tutor, AI-coach, AI-mentor, AI-teammate, AI-tool, AI-simulator, and AI-student ([Mollick and Mollick 2023](#ref-Mollick2023-assigning)). Their point is that “using AI” is not one instructional decision but a choice among quite different ones, and that the risks differ by role rather than by whether AI is present.

For assessment policy specifically, that insight collapses usefully into three stances an assignment can take. AI can be prohibited, where unaided performance is itself the learning objective. It can be a tool used transparently, where the process of working with the model is part of what is being taught. Or it can be unrestricted, where product quality matters more than how the product was made, as it often does in practice. In health professions education these correspond roughly to high-stakes clinical reasoning assessments, to literature review and synthesis tasks with the process documented, and to clinical note drafting and communication practice where AI use mirrors professional reality.

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

The licensing exam context deserves specific attention because it is the external constraint that shapes so much of undergraduate medical education. When a language model answers 87% of Step 2 CK practice questions correctly, the natural question is: what are we preparing students for?

The most careful published answer comes from researchers at the National Board of Medical Examiners, and it is largely a warning about the question itself ([Yaneva et al. 2024](#ref-Yaneva2024-sampleitems)). Examining ChatGPT on publicly available USMLE sample items, they found scores above 60%, which is an approximate indicator of meeting the passing standard, and then spent the paper explaining why that number should not be read as passing an examination. Sample items are not calibrated the way operational forms are. The simulation component of Step 3 was excluded. Responses varied across repeated submissions of the same item for 20% of items tested, which is not a property any assessment would tolerate in a human examinee. And performance was significantly worse on items relating to practice-based learning.

That last finding is the one worth sitting with. The material these models handle least well on a licensing exam is the material closest to what practice actually demands: applying evidence to a particular patient, recognizing the limits of one’s own knowledge, and revising a plan when the case does not fit. Licensing exams measure that thinly. They do not measure the communicative and relational dimensions of care at all.

The implication for medical education is not that the boards are irrelevant but that they are increasingly insufficient. Competency-based medical education (CBME) frameworks — the ACGME milestones, the entrustable professional activities — provide a structure for assessing the capabilities that board exams do not capture. Educators who redesign assessment to emphasize direct observation, structured clinical encounters, and oral examination of reasoning are building toward an assessment model that remains meaningful in an AI-augmented world. Educators who optimize for multiple-choice performance are not.

## 8.5 AI Literacy as Curriculum

The question of what medical students should know about AI was the subject of a 2020 paper by McCoy et al. in *npj Digital Medicine* ([McCoy et al. 2020](#ref-McCoy2020-ai-literacy)). Their answer was a dual-focused one: substantial data-science content added to the baseline health research curriculum for everyone, paired with extracurricular programs to cultivate leadership in the field. That is more technically ambitious than most of what schools have actually built, and the gap between the two is worth noticing.

The specific competencies have been elaborated since then. What has not happened, despite a widespread impression to the contrary, is that any accreditor made them mandatory. This deserves precision, because the belief that the requirement already exists is itself an obstacle to acting. It invites a program to wait for guidance that is not coming on the schedule it imagines, and it invites a compliance office to write a policy against a standard nobody published.

The AAMC is developing a national set of AI competencies spanning undergraduate, graduate, and continuing medical education, and it is a serious effort, but it is a draft. As of this writing the project is in its feedback-gathering phase, with a modified Delphi process and focus groups still underway and the final report targeted for fall 2026 ([Association of American Medical Colleges 2025](#ref-AAMC2025-competencies)). The ACGME Common Program Requirements say nothing about AI. A full-text search of the residency requirements effective July 2026, including the FAQs incorporated into them, returns no occurrence of “artificial intelligence,” “machine learning,” or “AI,” and neither does the July 2025 version they replaced ([Accreditation Council for Graduate Medical Education 2026](#ref-ACGME2025-CPR)). The LCME standards are silent as well. The two that come closest are 6.3, which requires self-directed learning experiences including appraisal of the credibility of information sources, and 7.6, which requires that students learn to recognize and address bias in themselves, in others, and in the care delivery process ([Liaison Committee on Medical Education 2025](#ref-LCME2026-functions)).

Reading those two standards to cover the appraisal of AI output is a defensible institutional interpretation, and a school that adopts it is on solid ground. It is not a published requirement, and a dean who presents it to faculty as one will lose the room the first time someone opens the standard. The honest version is more useful anyway: nobody is going to make you do this yet, the students are already using these tools, and the schools that move now will be the ones with something to show when the requirements do arrive.

For curriculum design, the distinction that earns its keep is among three kinds of learner: the consumer who uses AI tools in clinical work, the translator who evaluates tools and advises on appropriate use, and the developer who builds and validates systems. The distinction is useful because it implies that different learners need different things. Every medical student needs consumer-level AI literacy: how to evaluate AI-generated clinical information, how to recognize hallucinations and errors, how to document AI use in clinical settings, and how to have an informed conversation with a patient about AI’s role in their care. Only some students will become translators or developers, and the curriculum should not require developer-level technical knowledge of everyone.

What this means concretely: a required AI literacy module in medical school should cover the basic capabilities and limitations of language models (without requiring programming), the specific failure modes relevant to clinical use (hallucination, bias, over-confidence), the disclosure and documentation standards expected by major journals and by the clinical record, and how to evaluate an AI tool for fitness in a specific clinical task. This module is not optional enrichment — it is basic preparation for the clinical environment students are about to enter.

[Table tbl-ed-literacy-frameworks](#tbl-ed-literacy-frameworks) summarizes the major competency frameworks proposed for health professions AI literacy.

| Source | Organization | Year | Status | Core emphasis |
|----|----|----|----|----|
| What do medical students actually need to know about AI? | McCoy et al., *npj Digital Med* | 2020 | Peer-reviewed commentary | Data science in the core curriculum plus extracurricular leadership |
| Principles for the Responsible Use of AI in and for Medical Education | AAMC | 2024 | Published principles | Faculty development, equity |
| AI Competencies Across the Learning Continuum | AAMC | 2025– | Draft; modified Delphi in feedback phase, final report targeted fall 2026 | Competency set spanning UME, GME, and CME |
| Preparing Clinicians for a Clinical World Influenced by AI | James, Wachter, & Woolliscroft, *JAMA* | 2022 | Peer-reviewed viewpoint | Reasoning under AI uncertainty |

Table 8.1: Published sources on AI literacy for health professions education. None of these is an accreditation requirement. The ACGME Common Program Requirements and the LCME accreditation standards contain no AI language as of August 2026, and the AAMC competency set is a draft. Verify current status directly with each organization before citing it to faculty.

## 8.6 Institutional Policies: What Has Actually Been Published

The most useful institutional AI policies in health professions education are the ones that specify which tools are permitted, under what data handling conditions, and with what disclosure requirements — not the ones that simply declare a principle of “responsible use.” Several health professions schools have published policies worth examining.

UCSF’s Bridges Curriculum policy, approved in December 2024 by the Committee on Curriculum and Educational Policy, sets a default and then names the exception. AI use is prohibited for any activity in which students are evaluated as representing their own knowledge or skills, unless a faculty member explicitly grants permission, and the burden is on the student to find out which applies. The policy pairs that with a hard data boundary: generative AI running inside UCSF’s own cloud environment is approved for UCSF data including patient information, while commercial platforms are prohibited for identified or de-identified patient data, personnel records, and other sensitive institutional material ([University of California, San Francisco School of Medicine 2024](#ref-UCSF2024-genai-policy)).

The Keck School of Medicine at USC reaches a similar default by a different route, prohibiting AI on assignments unless the course director permits it, requiring students to verify the accuracy and bias of anything they submit, requiring disclosure of AI use in scholarly work, and barring AI from documentation of patient care outright. It names no approved tool, which leaves the tool question to the health system ([Keck School of Medicine of USC 2025](#ref-USC2025-genai-policy)). The Jacobs School at the University at Buffalo goes the other way and names two, Microsoft Copilot behind institutional login and a clinical chatbot, while stating that AI must never be used to input, analyze, or transmit identifiable patient information and that faculty may not impose blanket bans without consultation ([Jacobs School of Medicine and Biomedical Sciences, University at Buffalo 2026](#ref-Buffalo2026-genai-policy)).

The instructive thing is what all three share. Each sets a default rather than a principle, each puts the permission decision with a named person, and each draws the patient-data line separately from the academic-integrity line. Those are different problems and policies that conflate them tend to fail at both. A policy that permits “any AI tool the student finds useful” is a policy that permits HIPAA exposure, and a policy that says only “use AI responsibly” gives a course director nothing to enforce.

[Table tbl-ed-policies](#tbl-ed-policies) compares the three on the dimensions that determine whether a policy is operable.

| Institution | Default for evaluated work | Approved tools named | Patient-data rule | Disclosure required |
|----|----|----|----|----|
| UCSF School of Medicine | Prohibited unless faculty permit | Yes, institutionally hosted platform | Institutional platform only; commercial platforms barred for sensitive data | Yes |
| Keck School of Medicine, USC | Prohibited unless course director permits | No | Never enter PHI unless health system approves; no AI for patient-care documentation | Yes, for scholarly work |
| Jacobs School, University at Buffalo | Course-specific, set by syllabus | Yes, Microsoft Copilot and a clinical chatbot | Never input, analyze, or transmit identifiable patient information | Yes, per syllabus |

Table 8.2: Three published health-professions AI policies, compared on the dimensions that determine whether a policy can actually be applied. Verified against the published policies in August 2026; institutions revise these frequently.

## 8.7 Academic Integrity as a Patient Safety Issue

The stakes of academic integrity in health professions education are not equivalent to the stakes in a general undergraduate program. A student who outsources a history paper to AI has submitted fraudulent work, and the consequence is primarily to their own learning. A medical student who outsources clinical reasoning to AI during training — who presents AI-generated differentials and management plans as their own reasoning through repeated assessments — has learned to operate a clinical workflow they do not understand. The consequence is potentially borne by future patients.

James, Wachter, and Woolliscroft argued in JAMA in 2022 that medical education has to change to prepare clinicians for a clinical world influenced by AI ([James et al. 2022](#ref-James2022-preparing)). The specific concern here is not that AI will replace clinical reasoning but that a clinician who never developed independent reasoning has no basis on which to notice that the machine’s reasoning is wrong. The failure mode has a name and a literature. Parasuraman and Manzey’s review of automation complacency and automation bias documents both across decades of work in aviation and process control: operators under-monitor automation they have come to trust, and they accept its recommendations without the independent verification they would apply to a colleague ([Parasuraman and Manzey 2010](#ref-Parasuraman2010-automation)). Nothing about clinical medicine exempts it, and a trainee who has been graded on AI-assisted output for four years has been trained into precisely the trust the literature warns about.

This reframes the academic integrity conversation from “students are cheating” to “we are responsible for training clinicians who can function safely when AI fails.” That is a more honest and more motivating frame for curriculum redesign. It also makes the argument for genuine investment in assessment reform: not detection systems that catch cheaters, but assessment methods that require demonstrating the reasoning that makes a physician safe.

## 8.8 Where to Start: Two Starter Projects

### 8.8.1 Project 1: AI Literacy Module for All Health Professions Students

**What it is.** Develop and deploy a required, one-hour AI literacy module covering: how language models work at a conceptual level (no programming), what they are good for and where they fail, how to evaluate AI-generated clinical information critically, how to document AI use in clinical records per institutional policy, and how to discuss AI with patients. The module is assessed with a short practical exercise — evaluate a clinical AI output and document its errors — not a multiple-choice knowledge test.

**What you need to start.** A course director or clinical informatics faculty member willing to champion it, two to four weeks of faculty time to write and pilot the content, and an LMS slot in a required course. The AAMC’s published principles for responsible AI use in medical education ([Association of American Medical Colleges 2024](#ref-AAMC2024-ai-principles)) and the McCoy et al. framework ([McCoy et al. 2020](#ref-McCoy2020-ai-literacy)) provide the content scaffold; you are writing the local application, not the theory.

**Build or buy?** Write locally. National-level material exists, but it is not calibrated to your institutional tools and policies. The module needs to name your approved AI tools, your data classification rules, and your disclosure requirements — none of which a generic national module will include.

**What done looks like.** Within one academic year: every student in the graduating class has completed the module, the practical exercise has been piloted and revised, at least one faculty group has reviewed it for currency, and the module is integrated into the orientation or first-year curriculum on a recurring basis.

### 8.8.2 Project 2: Assessment Redesign Workshop for Course Directors

**What it is.** A half-day faculty development workshop that walks course directors through the tiered assessment framework, gives them a structured process for auditing their current assignments against AI capability, and supports them in redesigning one high-stakes assignment per course to assess process rather than product. The output of the workshop is a concrete revised assignment, not an abstract policy commitment.

**Why this matters more than policy.** Policy says “use AI responsibly.” A redesigned assignment with a prompt log requirement and a structured reflection makes “responsible use” measurable and teaches the skills that matter. Faculty who have redesigned one assignment understand the framework well enough to apply it to others.

**What you need to start.** A facilitator familiar with writing-studies pedagogy and clinical education (or one from each), three to five volunteers from courses that have explicit writing or reasoning components, and a half day in the academic calendar. The Mollick and Mollick paper ([Mollick and Mollick 2023](#ref-Mollick2023-assigning)) and the published UCSF and Buffalo policies provide the conceptual scaffolding ([University of California, San Francisco School of Medicine 2024](#ref-UCSF2024-genai-policy); [Jacobs School of Medicine and Biomedical Sciences, University at Buffalo 2026](#ref-Buffalo2026-genai-policy)).

**Build or buy?** Design locally and run it yourself. National faculty development resources on AI exist, but they are not structured to produce revised assignments. The workshop only produces value if it ends with a concrete artifact.

**What done looks like.** Five course directors have revised one assignment each, the revised assignments have been piloted for one academic cycle, and a follow-up session has been held to share what worked and what needed adjustment. The materials from the workshop — the assessment audit rubric, the redesign process — are available for any course director who wants to use them independently.

Accreditation Council for Graduate Medical Education. 2026. *Common Program Requirements (Residency), Including FAQs*. [Https://www.acgme.org/what-we-do/accreditation/common-program-requirements/](https://www.acgme.org/what-we-do/accreditation/common-program-requirements/). <https://www.acgme.org/globalassets/pfassets/programrequirements/2026-prs/cprresidency_2026.pdf>.

Association of American Medical Colleges. 2024. *Principles for the Responsible Use of Artificial Intelligence in and for Medical Education*. <https://www.aamc.org/about-us/mission-areas/medical-education/principles-responsible-use-artificial-intelligence-and-medical-education>.

Association of American Medical Colleges. 2025. *AI Competencies Across the Learning Continuum*. [Https://www.aamc.org/about-us/mission-areas/medical-education/ai-competencies](https://www.aamc.org/about-us/mission-areas/medical-education/ai-competencies). <https://www.aamc.org/about-us/mission-areas/medical-education/ai-competencies>.

Federal Trade Commission. 2024. *FTC Announces Crackdown on Deceptive AI Claims and Schemes*. <https://www.ftc.gov/news-events/news/press-releases/2024/09/ftc-announces-crackdown-deceptive-ai-claims-schemes>.

Garabet, Razmig, Brendan P Mackey, James Cross, and Michael Weingarten. 2024. “ChatGPT-4 Performance on USMLE Step 1 Style Questions and Its Implications for Medical Education: A Comparative Study Across Systems and Disciplines.” *Medical Science Educator* 34 (1): 145–52. <https://doi.org/10.1007/s40670-023-01956-z>.

Jacobs School of Medicine and Biomedical Sciences, University at Buffalo. 2026. *Generative Artificial Intelligence Use Policy for Medical Students in the Medical Curriculum*. [Https://medicine.buffalo.edu/offices/ome/current/policies/ai-policy.html](https://medicine.buffalo.edu/offices/ome/current/policies/ai-policy.html). <https://medicine.buffalo.edu/offices/ome/current/policies/ai-policy.html>.

James, Cornelius A, Robert M Wachter, and James O Woolliscroft. 2022. “Preparing Clinicians for a Clinical World Influenced by Artificial Intelligence.” *JAMA* 327 (14): 1333–34. <https://doi.org/10.1001/jama.2022.3580>.

Keck School of Medicine of USC. 2025. *Medical Student Use of Generative Artificial Intelligence (AI) Tools Policy*. [Https://keck.usc.edu/md-student-portal/medical-student-use-of-generative-artificial-intelligence-ai-tools-policy/](https://keck.usc.edu/md-student-portal/medical-student-use-of-generative-artificial-intelligence-ai-tools-policy/). <https://keck.usc.edu/md-student-portal/medical-student-use-of-generative-artificial-intelligence-ai-tools-policy/>.

Kung, Tiffany H, Morgan Cheatham, Arielle Medenilla, et al. 2023. “Performance of ChatGPT on USMLE: Potential for AI-Assisted Medical Education Using Large Language Models.” *PLOS Digital Health* 2 (2): e0000198. <https://doi.org/10.1371/journal.pdig.0000198>.

Liaison Committee on Medical Education. 2025. *Functions and Structure of a Medical School: Standards for Accreditation of Medical Education Programs Leading to the MD Degree, 2026–27*. [Https://lcme.org/standards-and-rules/](https://lcme.org/standards-and-rules/). <https://lcme.org/standards-and-rules/>.

Liang, Weixin, Mert Yuksekgonul, Yining Mao, Eric Wu, and James Zou. 2023. “GPT Detectors Are Biased Against Non-Native English Writers.” *Patterns* 4 (7): 100779. <https://doi.org/10.1016/j.patter.2023.100779>.

McCoy, Liam G, Sujay Nagaraj, Felipe Morgado, Vinyas Harish, Sunit Das, and Leo Anthony Celi. 2020. “What Do Medical Students Actually Need to Know about Artificial Intelligence?” *Npj Digital Medicine* 3 (1): 86. <https://doi.org/10.1038/s41746-020-0294-7>.

Mollick, Ethan R, and Lilach Mollick. 2023. *Assigning AI: Seven Approaches for Students, with Prompts*. SSRN. <https://ssrn.com/abstract=4475995>.

Parasuraman, Raja, and Dietrich H Manzey. 2010. “Complacency and Bias in Human Use of Automation: An Attentional Integration.” *Human Factors* 52 (3): 381–410. <https://doi.org/10.1177/0018720810376055>.

Shieh, Allen, Brandon Tran, Gene He, Mudit Kumar, Jason A Freed, and Priyanka Majety. 2024. “Assessing ChatGPT 4.0’s Test Performance and Clinical Diagnostic Accuracy on USMLE STEP 2 CK and Clinical Case Reports.” *Scientific Reports* 14 (1): 9330. <https://doi.org/10.1038/s41598-024-58760-x>.

University of California, San Francisco School of Medicine. 2024. *Bridges Curriculum Generative Artificial Intelligence Usage Policy*. [Https://meded.ucsf.edu/policies-procedures/bridges-curriculum-generative-artificial-intelligence-usage-policy](https://meded.ucsf.edu/policies-procedures/bridges-curriculum-generative-artificial-intelligence-usage-policy). <https://meded.ucsf.edu/policies-procedures/bridges-curriculum-generative-artificial-intelligence-usage-policy>.

Yaneva, Victoria, Peter Baldwin, Daniel P Jurich, Kimberly Swygert, and Brian E Clauser. 2024. “Examining ChatGPT Performance on USMLE Sample Items and Implications for Assessment.” *Academic Medicine* 99 (2): 192–97. <https://doi.org/10.1097/ACM.0000000000005549>.
