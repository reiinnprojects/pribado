# Data classification for chat and messaging products

Definitions and examples for **review** / **pia** modes. Philippine terms only (no GDPR-only labels such as “data controller” without mapping to DPA **personal information controller**).

**Sources:** DPA (RA 10173) via [mirror](https://lockex21.github.io/npc-issuances/laws/data-privacy-act-of-2012); NPC Advisory 2017-03 (PIA definitions); NPC Circular 2023-04 (personal data collectively).

---

## Categories

| Label | Legal term | Source | Meaning |
| ----- | ---------- | ------ | ------- |
| **PI** | Personal information | **DPA Sec. 3(g)** | Information from which an individual’s identity is apparent or can be reasonably and directly ascertained, or which with other information would directly and certainly identify an individual. |
| **SPI** | Sensitive personal information | **DPA Sec. 3(l)** | Personal information about race, ethnic origin, marital status, age, color, religious/philosophical/political affiliations; health, education, genetic or sexual life; criminal proceedings; government-issued identifiers and health/tax/license records; or data classified by law. |
| **PrI** | Privileged information | **DPA Sec. 3(k)** | Data that constitutes **privileged communication** under the Rules of Court and other pertinent laws. |
| **Personal data** (umbrella) | Personal data | **Advisory 2017-03, Definition G** | All types of personal information, **including privileged information** (does not replace SPI rules in DPA Sec. 13). |

**Processing** (any operation on personal information) — **DPA Sec. 3(j)**.

---

## General principles affecting classification choices

| Principle | Source | Implication for inventory |
| --------- | ------ | --------------------------- |
| Transparency, legitimate purpose, proportionality | **DPA Sec. 11** | Each field must map to a declared purpose; avoid “just in case” fields. |
| Adequate, relevant, not excessive | **DPA Sec. 11(d)** | Metadata and logs need explicit purpose (e.g., safety, delivery, analytics). |
| Retention limited to purpose | **DPA Sec. 11(e)**; **Circular 2023-06, Rule III Sec. 9** | Classify **retention period** per data type; document in policy. |
| Lawful basis per purpose | **DPA Sec. 12–13** | Tag each category with basis (consent, contract, legal obligation, vital interest, public authority, legitimate interests, or SPI/privileged exceptions). |

---

## Chat and messaging examples

Use this table when building `templates/data-inventory.md`. “Typical class” is guidance only—confirm against actual fields in the target repo.

| Data element | Typical class | Why (PH law) | Example lawful-basis hooks (purpose-specific) |
| ------------ | ------------- | ------------ | ----------------------------------------------- |
| **Display name / nickname** | PI | Identifies or contributes to identifying a user in a thread (**DPA Sec. 3(g)**). | Contract (provide chat service) **Sec. 12(b)**; consent for optional public discovery **Sec. 12(a)**. |
| **Message body (text)** | PI (SPI if content reveals health, religion, etc.) | Content may identify the sender and reveal SPI categories (**Sec. 3(g), 3(l)**). | Consent **Sec. 12(a)** or other Sec. 12/13 ground per purpose (e.g., public safety **Sec. 12(e)** for DRR broadcasts). |
| **Photos / images in DM or group** | PI (SPI if depicts health or other SPI) | Images of people are personal information; biometric inference may increase sensitivity (**Sec. 3(g), 3(l)**). | Same as message body; **Sec. 13** if SPI. |
| **Read receipts / delivery status** | PI | Status linked to an identifiable user (**Sec. 3(g)**). | Consent or legitimate interests **Sec. 12(a)/(f)** with transparency (**Advisory 2021-01, Sec. 6**). |
| **Typing indicators** | PI | Real-time activity tied to identity (**Sec. 3(g)**). | Consent or **Sec. 12(f)** with notice; minimize duration (proportionality **Sec. 11**). |
| **Online / presence / “last seen”** | PI | Reveals behavior/availability of an identifiable user (**Sec. 3(g)**). | Consent; default-off aligns with **Advisory 2025-02, Sec. 4.D.3** and **Circular 2023-06, Rule II Sec. 7**. |
| **IP address, device identifiers in logs** | PI | Often linkable to an individual with other records (**Sec. 3(g)**). | Security/abuse prevention **Sec. 12(f)** or legal obligation; disclose in notice (**Sec. 16**). |
| **Location (precise)** | PI; often SPI-adjacent | Location data about an individual (**Sec. 3(g)**); may reveal sensitive contexts (**Sec. 3(l)(2)** health/safety contexts depending on use). | **Sec. 12(a)** consent at just-in-time (**Circular 2023-04, Sec. 3**; IM press guidance item 2). |
| **Contacts / address book** | PI (third-party PI) | Identifies other individuals (**Sec. 3(g)**). | Separate purpose and consent; proportionality **Circular 2023-04, Sec. 5**. |
| **Call metadata (time, duration, participants)** | PI | Identifies parties and communication patterns (**Sec. 3(g)**). | Contract **Sec. 12(b)** for calls feature; notice **Sec. 16**. |
| **Moderation / safety reports** | PI; may include SPI | Reports describe individuals and alleged conduct (**Sec. 3(g), 3(l)(2)**). | Legal obligation or public authority **Sec. 12(c)/(e)** for DRR/safety; restrict access (**Circular 2023-06, Rule IV**). |
| **Attorney–client or sealed proceedings content** | PrI / SPI | **Sec. 3(k), 15**; processing only on **Sec. 13** grounds. | Flag as high-risk in PIA (**Advisory 2017-03**). |
| **Children’s account or age band** | PI; child processing | **Advisory 2024-03, Sec. 1** (child below 18 or dependent adult). | CPIA in PIA **Sec. 2.A**; high-default privacy **Sec. 2.B**. |

---

## Metadata vs content

| Layer | Examples | NPC touchpoints |
| ----- | -------- | ----------------- |
| **Content** | Message text, images, call audio | Encryption and access controls (**Advisory 2025-02, Sec. 4.B.2**; **Circular 2023-06, Rule III–IV**). |
| **Metadata** | Read state, typing, presence, receipts | Still **PI** if linkable (**DPA Sec. 3(g)**); disclose in notice (**Advisory 2021-01, Sec. 6**); minimize (**Sec. 11**). |

---

## Inventory columns (for templates)

When classifying in review mode, record at minimum:

1. **Data element** (field, log, file)
2. **Class** (PI / SPI / PrI)
3. **Purpose** (specific, legitimate)
4. **Lawful basis** (DPA Sec. 12 or 13 subsection)
5. **Retention** (period or trigger; **Circular 2023-06, Rule III Sec. 9**)
6. **Who can access** (roles, processors, subprocessors)
7. **Storage location** (device, server, backups)
