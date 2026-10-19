# Pribado

[![skills.sh](https://skills.sh/b/reiinnprojects/pribado)](https://skills.sh/reiinnprojects/pribado)

Agent skill for privacy drafts under the Philippine Data Privacy Act (RA 10173) and National Privacy Commission issuances. Point it at an app repo. It writes a gap review, a Privacy Impact Assessment, or a layered privacy notice.

This is not legal advice. A data protection officer or counsel should review the draft.

## Install

```bash
npx skills add reiinnprojects/pribado
```

The CLI asks which agents to install for. Add `-g` to install it for every project on this machine. For Cursor only, that is `npx skills add reiinnprojects/pribado -g -a cursor`.

If you already cloned the repo:

```bash
./install.sh
```

`install.sh` copies `skills/pribado` to `~/.cursor/skills/pribado`.

## Modes

| Mode | What it writes |
| --- | --- |
| `review` | Gaps against RA 10173 and NPC issuances, from the repo’s docs and code |
| `pia` | A Privacy Impact Assessment in the shape of NPC Advisory 2017-03 |
| `notice` | A short privacy notice, then the long page |

Name the mode and the target repo in Cursor, or in any agent that loads `SKILL.md`.

## Citations

RA 10173 and its implementing rules. NPC advisories and circulars 2017-03, 2021-01, 2023-01, 2023-04, 2023-06, 2024-03, and 2025-02. OWASP Top 10 Privacy Risks (2021) for technical risks. Links are in `skills/pribado/references/npc-issuances.md`.

## License

MIT. See [LICENSE](LICENSE).
