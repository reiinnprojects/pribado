---
name: pribado
description: Draft a Philippine privacy review, PIA (Privacy Impact Assessment), or layered privacy notice for an app repo. Grounded in RA 10173 (Data Privacy Act) and NPC issuances. Also for chat and messaging products. Not legal advice.
---

# Pribado

Draft compliance artifacts from a target repository’s docs and code. **Do not edit product code**—only read, classify, cite gaps, and fill templates.

## When to use

| Mode | Trigger |
| ---- | ------- |
| **review** | Gap review, data inventory from code, lawful basis, lifecycle, rights, security evidence |
| **pia** | NPC Advisory 2017-03–style Privacy Impact Assessment |
| **notice** | Layered privacy notice (English); short layer first |

If the user did not name a mode, ask which of `review`, `pia`, or `notice` they need.

## Shared inputs

- Target repo path (required).
- For **pia** / **notice**: prior **review** output if available; otherwise run review steps first or state assumptions.

## Reference files (read as needed)

| File | Use |
| ---- | --- |
| `references/npc-issuances.md` | Citation index—link issuance number + section; never invent numbers |
| `references/lifecycle-checklist.md` | Collection → disposal; Advisory 2025-02 × OWASP P1–P10 |
| `references/data-classification.md` | PI / SPI / PrI; chat examples |
| `references/messaging-apps.md` | E2E claims, metadata, permissions, retention, minors |

Paths are relative to this skill directory (`skills/pribado/` after install: `~/.cursor/skills/pribado/`).

## Templates (write outputs from these)

| File | Use |
| ---- | --- |
| `templates/data-inventory.md` | Tabular inventory (review + PIA input) |
| `templates/pia.md` | Full PIA report structure |
| `templates/privacy-notice.md` | Layered notice (short + long) |
| `templates/breach-procedure.md` | Breach notification skeleton (internal runbook) |

Leave `TODO:` markers where only a human can supply facts (PIC name, DPO email, site list, retention days).

---

## Mode: review

**Reads:** all four `references/*.md` above; `templates/data-inventory.md` as the output schema.

**Scope (read only):** target repo documentation and obvious processing surfaces—e.g. `README`, `docs/**`, server entry (`server/index.js` or equivalent), client copy/constants (`**/chatCopy.ts`, env examples). Do not scan vendored `node_modules` or binary blobs unless the user asks.

**Steps:**

1. **Inventory from evidence** — What is collected, generated, logged, stored, transmitted, shared, and retained? Map rows to `templates/data-inventory.md` columns.
2. **Classify** — Tag each item PI, SPI, or PrI using `references/data-classification.md`.
3. **Purpose and lawful basis** — Per purpose, cite DPA **Sec. 12** or **Sec. 13** (or state “unclear—needs PIC decision”). Do not assume DRR/public safety (**Sec. 12(e)**) without documented authority.
4. **Lifecycle** — Walk phases in `references/lifecycle-checklist.md`; note missing controls.
5. **Messaging-specific** — Apply `references/messaging-apps.md` (E2E vs plaintext fallback, metadata, photos, retention, minors).
6. **Data subject rights** — Access, rectification, erasure, object, complain: what exists in product/docs vs **Advisory 2021-01** / DPA **Sec. 16**.
7. **Security** — Organizational, physical, technical evidence vs DPA **Sec. 20** and **Circular 2023-06** (what the repo actually shows).
8. **Output** — Completed inventory table + **gaps table**: gap, affected data/process, issuance citation (from `references/npc-issuances.md`), suggested action. If a citation is uncertain, say so and link the issuance page—do not fabricate section numbers.

---

## Mode: pia

**Reads:** `references/npc-issuances.md` (especially Advisory **2017-03**), `references/data-classification.md`, `references/lifecycle-checklist.md`, `references/messaging-apps.md`; **`templates/pia.md`** (fill this document); **`templates/data-inventory.md`** (embed or attach filled inventory).

**Steps:**

1. Use **review** output or repeat review steps until the inventory is code-backed.
2. Copy structure from `templates/pia.md` section for section—description, scope, inventory, lifecycle, workflow diagram, Sec. 11 principle yes/no tables, risks/controls, security, disposal.
3. Keep `TODO:` for PIC/PIP names, DPO contact, system registration status, physical sites, and unsigned policy facts.
4. Deliver one markdown PIA ready for human sign-off—not a summary.

---

## Mode: notice

**Reads:** `references/npc-issuances.md` (**Circular 2023-04**, **Advisory 2021-01** right to be informed, **IRR Sec. 34**); **`templates/privacy-notice.md`**.

**Steps:**

1. Use **review** inventory and stated purposes/lawful bases.
2. Fill **short layer** first—plain language, no “we value your privacy” filler; stay within the word budget in the template.
3. Fill **long layer** with the nine right-to-be-informed themes in the template (categories, purposes, recipients, retention, rights, automated decision-making if any, how to exercise rights, DPO, complaints).
4. A person should read the short notice aloud and cut slogans before it is published.

---

## Stop rule

- **Allowed:** read target repo; write markdown deliverables; link NPC issuances; list gaps and TODOs.
- **Forbidden:** modifying application source, configs, or infrastructure in the target repo; claiming legal certainty; inventing issuance citations.

## Not legal advice

Outputs are drafts for a qualified privacy officer or counsel. Flag jurisdiction, registration, and breach notification timing with `TODO:` and official NPC guidance.
