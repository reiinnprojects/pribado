# NPC and DPA issuances (reference index)

Facts below are taken from the [NPC Issuance Wiki mirror](https://lockex21.github.io/npc-issuances/) (cleaned official texts) and, where noted, the [NPC website](https://privacy.gov.ph/). This is not legal advice. Requirement lines cite **issuance number and section** only when the source text uses that structure.

**Link check:** Each **Link** below is the mirror page URL (`curl -sI` → 200 as of repo authoring). Official PDFs and press pages on `privacy.gov.ph` may block automated HEAD requests; use the mirror for full text when the site is unreachable.

---

## Statute and IRR

| Document | Link | What it requires (selected) |
| -------- | ---- | --------------------------- |
| **Republic Act No. 10173** (Data Privacy Act of 2012) | https://lockex21.github.io/npc-issuances/laws/data-privacy-act-of-2012 | **Sec. 3(g):** defines *personal information*. **Sec. 3(l):** defines *sensitive personal information*. **Sec. 3(k):** defines *privileged information*. **Sec. 11:** processing must follow transparency, legitimate purpose, and proportionality; personal information must be collected for specified legitimate purposes, processed fairly, kept accurate, adequate and not excessive, and **retained only as long as necessary** for the purpose or as provided by law. **Sec. 12:** lawful processing of personal information (consent, contract, legal obligation, vital interests, national emergency / public order / public authority, or legitimate interests). **Sec. 13:** conditions for processing sensitive personal information and privileged information. **Sec. 16:** data subject rights (informed, access, object, rectification, erasure/blocking, portability, damages, file complaint). **Sec. 20:** PIC must implement reasonable organizational, physical, and technical security measures. **Sec. 21:** PIC accountability for processors. |
| **IRR of RA 10173** | https://lockex21.github.io/npc-issuances/laws/implementing-rules-and-regulations-of-the-data-privacy-act-of-2012 | **Rule VI, Sec. 25:** organizational, physical, and technical security measures for personal data. **Sec. 26(c)(e) (IRR):** inventory of processing systems (referenced by NPC Circular 2023-06, Sec. 4.C). **Sec. 28(b)(d)(e)(f):** security testing, incident/breach-related measures, and periodic review (referenced by NPC Advisory 2025-02). **Sec. 34:** right-to-be-informed content for processing in a system (referenced by NPC Circular 2023-04 and 2022-04). |

---

## Advisories and circulars (skill spine)

### NPC Advisory No. 2017-03 — Privacy Impact Assessments

**Link:** https://lockex21.github.io/npc-issuances/issuances/2017/guidelines-on-privacy-impact-assessments  
**Date:** 31 July 2017

| Section | Requirement |
| ------- | ----------- |
| **Scope** | Applies to PICs/PIPs processing personal data subject to the DPA, IRR, and NPC issuances. |
| **Definition of Terms, G** | *Personal data* includes all types of personal information, including privileged information. |
| **Definition of Terms, K** | A **PIA** evaluates privacy impacts of a program, project, process, measure, system, or product; considers data flows, risks, controls, and sector standards. |
| **Key Considerations** | Conduct a PIA for **every processing system** involving personal data; for **new** systems, **before** adoption/use; revisit when laws, organization, or processing change. |
| **PIA report content (Part IV structure in issuance)** | Document processing description, necessity/proportionality, data inventory, lifecycle, risks, and controls. |

---

### NPC Advisory No. 2021-01 — Data Subject Rights

**Link:** https://lockex21.github.io/npc-issuances/issuances/2021/data-subject-rights  
**Date:** 28 January 2021

| Section | Requirement |
| ------- | ----------- |
| **Sec. 5** | PICs shall establish **policies and procedures** for exercising data subject rights (channels, identity verification, timelines, fees where allowed). |
| **Sec. 6** | **Right to be informed** — before or at next practical opportunity: existence of processing, categories, purposes, recipients, automated decision-making/profiling, rights, and how to exercise them. |
| **Sec. 7** | **Right to object** where processing is based on consent or **Sec. 12(f) legitimate interests** (DPA). |
| **Sec. 8** | **Right to access** — copy or summary of personal data and processing information, subject to guidelines in the Advisory. |
| **Sec. 9** | **Right to rectification** — dispute inaccuracy; PIC corrects within a reasonable time. |
| **Sec. 10** | **Right to erasure or blocking** — suspension, withdrawal, blocking, removal, or destruction from filing systems (live and backup). |
| **Sec. 13–16** | Limits on rights, denial notices, NPC review of reasonableness; doubts interpreted in favor of the data subject. |

---

### NPC Circular No. 2022-04 — Registration, DPO, automated decision-making

**Link:** https://lockex21.github.io/npc-issuances/issuances/2022/registration-of-personal-data-processing-system-notification-regarding-automated-decision-making-or-profiling-designation-of-data-protection-officer-and-the-national-privacy-commission-seal-of-registration  
**Date:** 05 December 2022

| Section | Requirement |
| ------- | ----------- |
| **Sec. 1** | Applies to PICs/PIPs processing personal data and operating in the Philippines. |
| **Sec. 2** | Defines **automated decision-making**, **profiling**, **DPO**, and related terms. |
| **Sec. 1 (WHEREAS)** | Registration thresholds tie to **IRR Sec. 46–47** (risk, scale, sensitive personal information volume, vulnerable data subjects including **minors**). |
| **Operational rules in Circular** | Register data processing systems and DPO with NPC when required; **notify** NPC when automated processing is the **sole basis** for decisions that **significantly affect** the data subject; display/use NPC Seal of Registration as provided. |

---

### NPC Advisory No. 2023-01 — Deceptive design patterns

**Link:** https://lockex21.github.io/npc-issuances/issuances/2023/guidelines-on-deceptive-design-patterns  
**Date:** 07 November 2023

| Section | Requirement |
| ------- | ----------- |
| **Sec. 2.A** | Defines **deceptive design patterns** on analog or digital interfaces that manipulate data subjects’ processing choices. |
| **Sec. 3.A–B** | Non-exhaustive list (e.g., hard-to-decline, confusing controls, difficult consent withdrawal, dark defaults, excessive prompts, child-trusted characters used to over-collect). |
| **Sec. 4** | **Transparency** — concise plain-language notice of data, purpose, scope, duration, risks, PIC identity, rights, and how to exercise them. |
| **Sec. 5** | **Fairness** — no manipulative or unduly oppressive processing via UI/UX. |
| **Sec. 7** | Use of deceptive patterns may **vitiate consent** and leave processing **without valid lawful basis**. |
| **Sec. 8** | Deceptive patterns are inconsistent with **privacy-by-design** obligations. |

---

### NPC Circular No. 2023-04 — Guidelines on consent

**Link:** https://lockex21.github.io/npc-issuances/issuances/2023/guidelines-on-consent  
**Date:** 07 November 2023

| Section | Requirement |
| ------- | ----------- |
| **Sec. 1** | Applies when **consent** is the lawful basis. |
| **Sec. 3** | **Transparency** — minimum specific information; timing (at set-up, just-in-time, context-dependent); clarity; **layered privacy notice** with link to detail. |
| **Sec. 4** | **Legitimate purpose** — declare specific purposes before processing; retaking consent not required if purpose/scope/method/extent unchanged. |
| **Sec. 5** | **Proportionality** — adequate, relevant, necessary, not excessive; limit collection to what is directly relevant. |
| **Sec. 6** | **Fairness** — no manipulative or unduly oppressive consent; factors include purpose, volume, retention, and free will. |
| **Sec. 7 (Advisory 2023-01 cross-ref)** | Deceptive methods can vitiate consent (referenced in Advisory 2023-01 WHEREAS). |

---

### NPC Circular No. 2023-06 — Security of personal data (government and private sector)

**Link:** https://lockex21.github.io/npc-issuances/issuances/2023/security-of-personal-data-in-the-government-and-the-private-sector  
**Date:** 01 December 2023

| Section | Requirement |
| ------- | ----------- |
| **Sec. 4** | General obligations: DPO designation/registration, system registration when required, **processing inventory**, **PIA** (updated when processing changes), **Privacy Management Program**, training, NPC compliance. |
| **Sec. 5** | **PIA** content includes data inventory, risks, controls, sharing/outsourcing risks. |
| **Rule II, Sec. 7** | **Privacy-by-design** and **privacy-by-default**; PIA for off-the-shelf software; disable functions without lawful basis. |
| **Rule II, Sec. 8** | Incorporate data privacy requirements throughout **development and implementation** of systems. |
| **Rule III, Sec. 9** | Store personal information only as long as necessary; **document retention periods**; inform data subjects of retention policy. |
| **Rule IV, Sec. 12–18** | Access control, authentication, acceptable use, secure online access, authorized devices, remote wipe where applicable. |

---

### NPC Advisory No. 2024-03 — Child-oriented transparency

**Link:** https://lockex21.github.io/npc-issuances/issuances/2024/guidelines-on-child-oriented-transparency  
**Date:** 17 December 2024

| Section | Requirement |
| ------- | ----------- |
| **Sec. 1** | Applies to processing **children’s personal data** for child-directed or child-likely products/services (digital or physical). |
| **Sec. 2.A** | **Child PIA** as part of PIA before launch and on material change; factors include data types, storage/disposal, security, age range, guardian involvement for heightened risk. |
| **Sec. 2.B** | **High privacy settings by default** (e.g., geolocation off, private profiles, minimize sharing). |
| **Sec. 3** | Child-aware **privacy notices** (plain language, layered, just-in-time); child-friendly formats in addition to adult notices when children are in scope. |
| **Sec. 3.E** | No deceptive patterns or trusted characters to over-collect from children (cross-ref. Advisory 2023-01). |
| **Sec. 4** | Breach notification to **children and parents/guardians** with age-appropriate language when children are affected. |

---

### NPC Advisory No. 2025-02 — Privacy engineering in systems life cycle

**Link:** https://lockex21.github.io/npc-issuances/issuances/2025/guidelines-on-privacy-engineering-in-systems-life-cycle-processes  
**Date:** 27 August 2025

| Section | Requirement |
| ------- | ----------- |
| **Sec. 2** | Five life-cycle stages: **(A)** planning and requirements gathering; **(B)** designing and development; **(C)** testing and evaluation; **(D)** deployment and integration; **(E)** operation and maintenance. |
| **Sec. 4.A** | Determine **lawful basis** (DPA Sec. 12); apply **Sec. 11** principles; conduct **PIA** (Advisory 2017-03). |
| **Sec. 4.B** | Data minimization; confidentiality/integrity/availability controls (encryption, access control, PETs, DR); **data subject rights interfaces**; traceability; secure SDLC (threat modelling, SAST/DAST, fuzzing); retention and secure disposal. |
| **Sec. 4.C** | Privacy/security testing before deployment; usable privacy notices and rights mechanisms; code review and vulnerability scans; privacy architecture review. |
| **Sec. 4.D** | Privacy notices; **valid consent** when consent is basis (Circular 2023-04); **privacy-by-default** settings (examples listed in issuance). |
| **Sec. 4.E** | Monitor incidents/breaches; **annual audits and PIAs** (and on major updates, new processors, or purpose changes); patch controls; honor data subject rights (Advisory 2021-01); train personnel (IRR Sec. 26(d)). |

---

## Press guidance (instant messaging developers)

| Document | Link | What it requires |
| -------- | ---- | ---------------- |
| **NPC — Instant messaging app permissions** (press guidance, 25 June 2021) | https://privacy.gov.ph/national-privacy-commission-urges-developers-of-instant-messaging-apps-to-limit-the-grant-of-application-permissions-for-users/ | **Item 1:** request **minimum permissions**; revisit permissions often denied. **Item 2:** ask access at **appropriate times** with explanation; do not force optional access. **Item 3:** plan for **deny** — “while using the app,” “only this time,” or **deny** without locking users out of core features; do not push users to OS Settings after permanent deny. **Item 4:** show **visual indicators** when camera/microphone are in use. **Item 5:** review **libraries/APIs** for sensitive data access. **Item 6:** **privacy engineering** — transparency, legitimate purpose, proportionality through the software life cycle. |

*(Numbered items are the structure of the published NPC press guidance; not a separate NPC circular number.)*

---

## OWASP (technical risk register)

| Document | Link | Role in this skill |
| -------- | ---- | ------------------ |
| **OWASP Top 10 Privacy Risks v2.0** | https://owasp.org/www-project-top-10-privacy-risks/ | **P1–P10** risk titles and descriptions used in `lifecycle-checklist.md` crosswalk (not Philippine law). |
