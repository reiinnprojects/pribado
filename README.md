# Pribado

[![skills.sh](https://skills.sh/b/reiinnprojects/pribado)](https://skills.sh/reiinnprojects/pribado)

Philippine privacy skill for coding agents. Point it at an app repository. It drafts a gap review, a Privacy Impact Assessment (PIA), or a layered privacy notice under the Data Privacy Act (RA 10173) and National Privacy Commission (NPC) issuances.

Skills follow the [Agent Skills](https://agentskills.io/) format (`SKILL.md` + references + templates).

This is not legal advice. A data protection officer or counsel should review every draft.

## Use when

- You need a **privacy gap review** from an app repo’s docs and code (inventory, lawful basis, rights, security evidence)
- You are filling an **NPC Advisory 2017-03–style PIA**
- You need a **layered privacy notice** (short layer + long page) in English
- The product is a **chat or messaging app** on a LAN, community Wi‑Fi, or similar (E2E claims, metadata, photos, retention)

Name the mode (`review`, `pia`, or `notice`) and the target repo path when you invoke the skill.

## Install

```bash
npx skills add reiinnprojects/pribado
```

The CLI asks which agents to install for. Add `-g` for every project on this machine. For Cursor only:

```bash
npx skills add reiinnprojects/pribado -g -a cursor -y
```

If you cloned this repository:

```bash
./install.sh
```

`install.sh` copies `skills/pribado` to `~/.cursor/skills/pribado`.

The skills.sh badge above shows install counts after the repo is indexed (usually after the first `npx skills add`).

## Modes

| Mode | What it writes |
| --- | --- |
| `review` | Gaps against RA 10173 and NPC issuances, from the repo’s docs and code |
| `pia` | A Privacy Impact Assessment in the shape of NPC Advisory 2017-03 |
| `notice` | A short privacy notice, then the long page |

The skill **reads** the target repo and **writes markdown**. It does not edit product code.

## Skill layout

```
skills/pribado/
  SKILL.md           workflow (review | pia | notice)
  references/        NPC issuances, lifecycle checklist, classification, messaging
  templates/         data inventory, PIA, privacy notice, breach procedure
```

## Citations

RA 10173 and its implementing rules. NPC advisories and circulars 2017-03, 2021-01, 2023-01, 2023-04, 2023-06, 2024-03, and 2025-02. OWASP Top 10 Privacy Risks (2021) for technical risk mapping. Links are in `skills/pribado/references/npc-issuances.md`.

## License

MIT. See [LICENSE](LICENSE).
