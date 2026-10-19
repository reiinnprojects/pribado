# Messaging, calls, and chat apps — privacy reference

Product-agnostic checklist for LAN/community chat, DRR broadcast, or consumer IM. Philippine requirements only; cite **issuance + section** (or numbered NPC press items where no circular exists).

**Sources:** DPA (mirror); NPC Circulars 2023-04, 2023-06; Advisories 2021-01, 2023-01, 2024-03, 2025-02; [NPC IM developer press guidance (25 June 2021)](https://privacy.gov.ph/national-privacy-commission-urges-developers-of-instant-messaging-apps-to-limit-the-grant-of-application-permissions-for-users/); [OWASP Top 10 Privacy Risks v2.0](https://owasp.org/www-project-top-10-privacy-risks/) for technical risk language.

---

## End-to-end encryption and plaintext fallback

| Topic | Requirement | Citation |
| ----- | ----------- | -------- |
| Security measures | PIC must implement reasonable organizational, physical, and technical measures for personal information. | **DPA Sec. 20** |
| Encryption | Use industry-standard protection for stored and transmitted personal data where appropriate. | **Circular 2023-06, Rule III Sec. 11**; **Advisory 2025-02, Sec. 4.B.2(c)** |
| Claims vs reality | Marketing must match actual confidentiality (transparency **DPA Sec. 11**). If some clients lack keys (e.g., HTTP/LAN legacy), **do not** state blanket “end-to-end encrypted” for all paths—describe when messages are sealed vs operator-readable. | **Advisory 2021-01, Sec. 6**; **Circular 2023-04, Sec. 3.C** |
| Encryption not sufficient alone | NPC treats encryption as a baseline; proprietary clients may limit independent verification—document limits in notice/threat materials. | **NPC press statement on WhatsApp terms (privacy.gov.ph)** — illustrative of NPC expectation to qualify E2E claims |
| Plaintext fallback | If sealing fails (missing keys, mixed HTTPS/HTTP), processing still must have lawful basis, notice, and security controls for operator-accessible content. | **DPA Sec. 11–12**; **Advisory 2025-02, Sec. 4.D.1** |
| OWASP angle | Weak crypto, misconfiguration, and app vulns → **P1**, **P2**. | **OWASP P1, P2** |

---

## Metadata: read receipts, typing, presence

| Data | Classification | Requirement |
| ---- | ---------------- | ----------- |
| Read / delivered / seen | **PI** (**DPA Sec. 3(g)**) | Disclose in privacy notice before or at next practical opportunity (**Advisory 2021-01, Sec. 6**). |
| Typing indicators | **PI** | Same; collect only if proportional (**DPA Sec. 11(d)**). |
| Online / active / last seen | **PI** | Default-off or high-privacy defaults where feasible (**Advisory 2025-02, Sec. 4.D.3**; **Circular 2023-06, Rule II Sec. 7**). |
| Server-side receipt store | Operator processing | Access controls and logging (**Circular 2023-06, Rule IV Sec. 12–13**); minimize fields (**Advisory 2025-02, Sec. 4.B.1**). |
| OWASP angle | Hidden metadata collection → **P10**; opaque practices → **P5**. | **OWASP P5, P10** |

---

## Device permissions (camera, microphone, location, photos, contacts)

| Practice | Requirement | Citation |
| -------- | ----------- | -------- |
| Minimum permissions | Request only permissions necessary for the feature. | **IM press guidance, item 1** |
| Timing | Request in context with explanation; no forced optional access. | **IM press guidance, item 2** |
| Deny path | “While using app,” “only this time,” or **deny**; core chat still usable if mic/camera denied. | **IM press guidance, item 3** |
| Indicators | Show when camera/mic are active. | **IM press guidance, item 4** |
| SDK review | Audit libraries/APIs for excess data access. | **IM press guidance, item 5** |
| Privacy engineering in SDLC | Integrate transparency, legitimate purpose, proportionality in development. | **IM press guidance, item 6**; **Circular 2023-06, Rule II Sec. 8** |
| Consent UI | No deceptive patterns; fairness in consent (**Circular 2023-04, Sec. 6**). | **Advisory 2023-01, Sec. 5–7** |

---

## Photos and files in private threads

| Topic | Requirement | Citation |
| ----- | ----------- | -------- |
| Photos as personal data | Images that identify or can identify individuals are **personal information**; health or other SPI in image → **SPI**. | **DPA Sec. 3(g), 3(l)** |
| Purpose & notice | State collection, storage on server/box, retention, and who can access (operator, moderators). | **Advisory 2021-01, Sec. 6**; **Circular 2023-04, Sec. 3.A** |
| Security | Protect files at rest and in transit; access on need-to-know basis. | **Circular 2023-06, Rule III–IV** |
| Deletion | Support erasure/blocking and secure disposal when user deletes or retention ends. | **Advisory 2021-01, Sec. 10**; **Advisory 2025-02, Sec. 4.B.7** |
| OWASP angle | Leaked media on operator storage → **P2**; failure to delete blobs → **P6**. | **OWASP P2, P6** |

---

## Retention (including short rolling windows, e.g. seven days)

| Topic | Requirement | Citation |
| ----- | ----------- | -------- |
| Limit storage | Keep personal information only as long as necessary for the purpose. | **DPA Sec. 11(e)** |
| Document policy | Written retention periods; review periodically; inform data subjects. | **Circular 2023-06, Rule III Sec. 9** |
| Engineering | Design temporal deletion (e.g., rolling purge of messages/media after N days) and backup alignment. | **Advisory 2025-02, Sec. 4.B.6–7** |
| After purpose ends | Delete or anonymize when purpose fulfilled unless law requires longer storage. | **DPA Sec. 11(e)** |
| User erasure | Honor erasure/blocking requests where applicable (**Advisory 2021-01, Sec. 10**), subject to **Sec. 13** limits. | **Advisory 2021-01, Sec. 10, 13** |
| OWASP angle | Over-retention → **P6**; long sessions retaining data → **P8**. | **OWASP P6, P8** |

*A fixed short retention (e.g., seven days) is lawful if disclosed, proportionate to purpose (e.g., ephemeral community chat), and implemented in live stores **and** backups.*

---

## Minors and child-likely services

| Topic | Requirement | Citation |
| ----- | ----------- | -------- |
| Scope | Applies when processing **children’s personal data** or services likely accessed by children. | **Advisory 2024-03, Sec. 1** |
| Child PIA | Include child privacy impact assessment in PIA before launch and on material changes. | **Advisory 2024-03, Sec. 2.A** |
| Defaults | Highest privacy settings by default (location off, private profile, minimal sharing). | **Advisory 2024-03, Sec. 2.B.1** |
| Notices | Child-friendly layered/just-in-time notices; no deceptive nudges or trusted characters to over-collect. | **Advisory 2024-03, Sec. 3**; **Advisory 2023-01, Sec. 3.A.9** |
| Breach | Notify children and parents/guardians in understandable language. | **Advisory 2024-03, Sec. 4** |
| Registration | Systems likely to affect minors may trigger registration/notification under **Circular 2022-04** (WHEREAS on vulnerable data subjects). | **Circular 2022-04** (WHEREAS, **IRR Sec. 46–47**) |

---

## Voice/video calls

| Topic | Requirement | Citation |
| ----- | ----------- | -------- |
| Permissions | Mic/camera as optional where text chat remains usable. | **IM press guidance, item 3** |
| Indicators | Active recording/capture indicators. | **IM press guidance, item 4** |
| Call metadata | Logged duration/participants are **PI**—disclose and secure. | **DPA Sec. 3(g)**; **Circular 2023-06, Rule IV** |

---

## Review-mode gap prompts (messaging)

When scanning a repo, explicitly ask:

1. Does copy claim E2E for all devices while code allows plaintext or hub-readable paths?
2. Are read/typing/presence documented in a notice and minimization design?
3. Are permission prompts justified per feature (camera, gallery, location)?
4. Are photos in DMs classified as **PI** in inventory with retention and deletion story?
5. Is retention (e.g., N-day purge) in policy **and** enforced in server jobs/SQLite purges?
6. If minors may use the service, are **Advisory 2024-03** defaults and notices planned?
