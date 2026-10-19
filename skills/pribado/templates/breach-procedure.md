# Personal data breach response procedure (skeleton)

Internal runbook draft. Confirm notification rules and timelines against current **NPC** guidance and counsel. Not legal advice.

**PIC:** TODO: legal entity  
**DPO:** TODO: name, email, phone  
**Document owner:** TODO:  
**Last updated:** TODO: YYYY-MM-DD  

---

## 1. Purpose

Define how TODO: organization detects, contains, assesses, and notifies personal data breaches involving TODO: system name.

---

## 2. Definitions

| Term | Meaning |
| ---- | ------- |
| Personal data breach | TODO: align with DPA / NPC definition in force |
| Personal data | Per **RA 10173 Sec. 3(g)** and related issuances |

---

## 3. Roles

| Role | Name / contact | Responsibilities |
| ---- | -------------- | ---------------- |
| DPO | TODO: | Assess breach, NPC coordination, documentation |
| Incident lead | TODO: | Containment, technical recovery |
| PIC approver | TODO: | Notification decisions |
| Comms / support | TODO: | Data subject messaging if required |

---

## 4. Detection and reporting

- **Channels:** TODO: monitoring alerts, user reports, audit logs, staff hotline  
- **Internal report to DPO within:** TODO: e.g. 1 hour of confirmed suspicion  
- **Preserve evidence:** logs, timestamps, affected systems list  

---

## 5. Containment and recovery

1. TODO: isolate affected service / rotate credentials  
2. TODO: stop ongoing unauthorized processing  
3. TODO: patch root cause  
4. TODO: validate integrity before restore  

---

## 6. Assessment

Document:

| Field | Value |
| ----- | ----- |
| Date/time detected | TODO |
| Date/time occurred (if known) | TODO |
| Categories of data | TODO |
| Approximate number of data subjects | TODO |
| Likely consequences | TODO |
| Measures taken | TODO |

---

## 7. Notification to NPC

**Requirement:** TODO: confirm current NPC rule (commonly cited: notify NPC **within 72 hours** of knowledge of breach when personal data is involved—verify against applicable circular/advisory).

| Step | Action | Owner | Done (Y/N) | Date/time |
| ---- | ------ | ----- | ---------- | --------- |
| 1 | DPO confirms breach threshold | TODO: | | |
| 2 | Draft NPC notification | TODO: | | |
| 3 | PIC approves submission | TODO: | | |
| 4 | Submit via TODO: NPC channel / form | TODO: | | |
| 5 | Retain acknowledgment | TODO: | | |

**NPC contact:** https://privacy.gov.ph/ — TODO: specific bureau email/form used by PIC.

---

## 8. Notification to data subjects

When required (high risk to rights and freedoms—confirm test with counsel):

| Step | Action | Owner | Done (Y/N) | Date/time |
| ---- | ------ | ----- | ---------- | --------- |
| 1 | Decide if subject notification required | DPO + PIC | | |
| 2 | Prepare plain-language notice | TODO: | | |
| 3 | Deliver via TODO: in-app, email, SMS, public notice | TODO: | | |

**Minimum content:** nature of breach, likely effects, measures taken, DPO contact, recommended steps for data subjects.

---

## 9. Documentation and post-incident review

- Breach register entry: TODO: ticket ID  
- Root cause analysis within TODO: days  
- Update PIA / security controls per **`templates/pia.md`** Sec. VI–VII  
- Train staff if human error involved  

---

## 10. Escalation contacts

| Contact | Phone | Email |
| ------- | ----- | ----- |
| DPO | TODO: | TODO: |
| NPC (public) | See privacy.gov.ph | TODO: |
