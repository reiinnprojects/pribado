# Privacy engineering life cycle × OWASP privacy risks

Crosswalk for **review** mode: NPC **Advisory No. 2025-02** life-cycle phases (Sec. 2, Sec. 4) against **OWASP Top 10 Privacy Risks v2.0** ([project page](https://owasp.org/www-project-top-10-privacy-risks/)). OWASP entries describe technical/organizational risks; NPC entries are Philippine compliance requirements.

---

## OWASP Top 10 Privacy Risks (v2.0, 2021)

| ID | Title | Description (OWASP) |
| -- | ----- | ------------------- |
| **P1** | Web application vulnerabilities | Design/implementation flaws, late patching, and web-app vulnerability classes can cause privacy breaches. |
| **P2** | Operator-sided data leakage | Unauthorized disclosure of user-related information due to access, storage, duplication, or awareness failures. |
| **P3** | Insufficient data breach response | Failure to notify affected persons, fix root cause, or limit harm after a breach or leak. |
| **P4** | Consent on everything | Bundled or over-broad consent instead of purpose-specific consent. |
| **P5** | Non-transparent policies, terms and conditions | Insufficient or inaccessible information about collection, storage, and processing. |
| **P6** | Insufficient deletion of personal data | Failure to delete personal data when purpose ends or on request. |
| **P7** | Insufficient data quality | Outdated, incorrect, or bogus user data; failure to correct or update. |
| **P8** | Missing or insufficient session expiration | Sessions persist; extra data collected without awareness or consent. |
| **P9** | Inability of users to access and modify data | Users cannot access, change, or delete data about themselves. |
| **P10** | Collection of data not required for the user-consented purpose | Descriptive or demographic data collected beyond stated purpose or without consent. |

---

## Phase A — Planning and requirements gathering

*NPC Advisory 2025-02, Sec. 2.A; Sec. 4.A*

| Check | NPC requirement | Primary OWASP risks |
| ----- | ----------------- | ------------------- |
| A.1 | Document **lawful basis** per purpose (DPA Sec. 12, cited in Advisory 2025-02, Sec. 4.A.1). | P4, P10 |
| A.2 | Apply **transparency, legitimate purpose, proportionality**; collect only adequate, relevant, necessary, non-excessive data; define **retention** (DPA Sec. 11, cited in Sec. 4.A.2). | P5, P10, P6 |
| A.3 | Conduct **PIA** before build/adoption (Advisory 2017-03, cited in Sec. 4.A.3; Circular 2023-06, Sec. 5). | P1, P2, P5, P10 |
| A.4 | Inventory data categories, flows, processors, and **children/minors** if service is child-likely (Advisory 2024-03, Sec. 1–2.A when applicable). | P5, P10 |
| A.5 | Define **breach/incident response** roles and notification criteria (IRR Sec. 28(d–e), cited in Advisory 2025-02 footnotes; Circular 2023-06, Sec. 4). | P3 |

---

## Phase B — Designing and development

*NPC Advisory 2025-02, Sec. 2.B; Sec. 4.B*

| Check | NPC requirement | Primary OWASP risks |
| ----- | ----------------- | ------------------- |
| B.1 | **Minimize** personal data in architecture (Sec. 4.B.1). | P10 |
| B.2 | **Security controls**: encryption in transit/at rest, access control, PETs, anonymization/pseudonymization, disaster recovery (Sec. 4.B.2; DPA Sec. 20; IRR Sec. 25). | P1, P2 |
| B.3 | Build **rights interfaces**: access, rectification, erasure, opt-in/out (Sec. 4.B.3; DPA Sec. 16; Advisory 2021-01, Sec. 6–10). | P9 |
| B.4 | **Traceability** of access and changes to personal data (Sec. 4.B.4; Circular 2023-06, Sec. 16–19 cross-refs in Advisory footnotes). | P2 |
| B.5 | **Secure SDLC**: threat modelling, static/dynamic analysis, fuzzing (Sec. 4.B.5). | P1 |
| B.6 | **Retention policy** and temporal deletion design (Sec. 4.B.6; Circular 2023-06, Rule III Sec. 9). | P6, P8 |
| B.7 | **Secure disposal** when data no longer needed (Sec. 4.B.7). | P6 |
| B.8 | Embed privacy in development (Circular 2023-06, Rule II Sec. 8). | P1, P5 |

---

## Phase C — Testing and evaluation

*NPC Advisory 2025-02, Sec. 2.C; Sec. 4.C*

| Check | NPC requirement | Primary OWASP risks |
| ----- | ----------------- | ------------------- |
| C.1 | **Privacy and security testing** before deployment (Sec. 4.C.1; IRR Sec. 28(f)). | P1 |
| C.2 | Test **privacy notice** clarity and **rights mechanisms** usability (Sec. 4.C.2; Advisory 2021-01, Sec. 6; Circular 2023-04, Sec. 3). | P5, P9 |
| C.3 | **Code review and vulnerability scans** (Sec. 4.C.3; IRR Sec. 28(b)). | P1, P2 |
| C.4 | **Privacy architecture review** against DPA/NPC requirements (Sec. 4.C.4). | P1, P2, P5 |
| C.5 | Test **session expiry** and idle logout for apps holding accounts or long-lived tokens (maps to product design; OWASP P8). | P8 |
| C.6 | Test **deletion/retention** jobs and backup purges (Sec. 4.B.6–7; Circular 2023-06, Rule III Sec. 9). | P6 |

---

## Phase D — Deployment and integration

*NPC Advisory 2025-02, Sec. 2.D; Sec. 4.D*

| Check | NPC requirement | Primary OWASP risks |
| ----- | ----------------- | ------------------- |
| D.1 | Publish **clear privacy notices**; avoid deceptive patterns (Sec. 4.D.1; Advisory 2023-01, Sec. 4; Circular 2023-04, Sec. 3). | P5 |
| D.2 | Obtain **valid consent** when consent is the basis (Sec. 4.D.2; Circular 2023-04). | P4 |
| D.3 | **Privacy-by-default**: strictest settings without user action (Sec. 4.D.3; Circular 2023-06, Rule II Sec. 7). | P4, P8, P10 |
| D.4 | **Layered / just-in-time notices** at collection points (Circular 2023-04, Sec. 3; Advisory 2024-03, Sec. 3.C–D when children use the service). | P5 |
| D.5 | Register systems/DPO and notify **automated decision-making** when required (Circular 2022-04). | P5, P9 |

---

## Phase E — Operation and maintenance

*NPC Advisory 2025-02, Sec. 2.E; Sec. 4.E*

| Check | NPC requirement | Primary OWASP risks |
| ----- | ----------------- | ------------------- |
| E.1 | **Monitor** security incidents and breaches; implement response and notification (Sec. 4.E.1; IRR Sec. 28(d–e)). | P3 |
| E.2 | **Annual audit and PIA**; new PIA on major updates, new processors, or purpose changes (Sec. 4.E.2; IRR Sec. 28(f)). | P1, P2, P5, P10 |
| E.3 | Patch vulnerabilities and update privacy controls (Sec. 4.E.3). | P1 |
| E.4 | Fulfill **data subject rights** requests (Sec. 4.E.4; Advisory 2021-01). | P7, P9 |
| E.5 | **Train** personnel on secure processing and incidents (Sec. 4.E.5; IRR Sec. 26(d)). | P2, P3 |
| E.6 | Enforce **retention/deletion** in production and backups (Circular 2023-06, Rule III Sec. 9; DPA Sec. 11(e)). | P6 |
| E.7 | Review **operator-side access** (logs, admin consoles, support exports) (Circular 2023-06, Rule IV). | P2 |

---

## OWASP risk coverage map

Each OWASP risk is addressed by at least one life-cycle check above:

| OWASP | Life-cycle checks |
| ----- | ----------------- |
| P1 | A.3, B.5, B.8, C.1, C.3, C.4, E.2, E.3 |
| P2 | A.3, B.2, B.4, C.3, C.4, E.5, E.7 |
| P3 | A.5, E.1, E.5 |
| P4 | A.1, D.2, D.3 |
| P5 | A.2, A.3, A.4, B.8, C.2, C.4, D.1, D.4, D.5, E.2 |
| P6 | A.2, B.6, B.7, C.6, E.6 |
| P7 | E.4 |
| P8 | B.6, C.5, D.3 |
| P9 | B.3, C.2, D.5, E.4 |
| P10 | A.1, A.2, A.3, A.4, B.1, D.3, E.2 |
