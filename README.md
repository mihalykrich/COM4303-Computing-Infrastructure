# COM4303 — Computing Infrastructure

Supporting evidence for **COM4303 Computing Infrastructure** coursework.

This repository is organised by assessment, with weekly labs, screenshots, Packet Tracer files, and write-ups kept in a clear folder structure.

## Repository structure

```
Assignement 1 Supporting Evidence/
Assignement 2 Supporting Evidence/
```

---

## Assignment 1 — Supporting Evidence

**Folder:** `Assignement 1 Supporting Evidence/`

Evidence for **Assessment 001** (Enterprise Infrastructure Design and Proof of Concept), including weekly consolidate quizzes, session labs, and the Property Services Design Packet Tracer work.

| Folder | Contents |
|--------|----------|
| `Week_1/` … `Week_6/` | Consolidate quiz screenshots, session lab write-ups (`.docx`), and Packet Tracer labs (`.pkt`) where applicable |
| `Cisco Packet Tracer (Property Services Design)/` | Assignment Packet Tracer topology (`assignement_1.pkt`) |

### Week coverage (Assignment 1)

- **Week 1** — Consolidate quiz screenshot
- **Week 2** — Switching / topology lab write-up and Packet Tracer file
- **Week 3** — Inter-subnet communication lab write-up and Packet Tracer file
- **Week 4** — DNS/DHCP service lab write-up and Packet Tracer file
- **Week 5** — Protocol analysis lab write-up and Packet Tracer file
- **Week 6** — Security reasoning lab write-up

---

## Assignment 2 — Supporting Evidence

**Folder:** `Assignement 2 Supporting Evidence/`

Evidence for **Assignment 2** (APEX Property Services), organised by weekly labs plus VLSM addressing and Packet Tracer design work.

| Folder | Contents |
|--------|----------|
| `Week 8/Week 8 - Consolidate Quiz/` | Consolidate quiz screenshot |
| `Week 8/Week 8 - Session 1 - Lab/` | OS inspection lab write-up, process/service evidence text file, and screenshots |
| `Week 9/Week 9 - Consolidate Quiz/` | Consolidate quiz screenshot |
| `Week 9/Week 9 - Session 2 - Lab/` | Scripting Lab I write-up, script, snapshot output, and supporting screenshots |
| `Week 10/Week 10 - Session 2 - Lab/` | Scripting Lab II write-up, automation scripts/logs, and supporting screenshots |
| `VLSM Subnet Calculation/` | VLSM allocation screenshot for `10.67.0.0/16` |
| `Cisco Packet Tracer (APEX Property Services Design)/` | Assignment Packet Tracer topology (APEX Property Services) |

### Week coverage (Assignment 2)

- **Week 8** — Consolidate quiz screenshot; OS Inspection Lab (process–service evidence and interpretation), supporting screenshots, and `week8_os_evidence.txt`
- **Week 9** — Consolidate quiz screenshot; Scripting Lab I (controlled automation tasks with documented output), write-up, and supporting screenshots
- **Week 10** — Scripting Lab II (automated task with logging and repeatable execution), write-up, scripts/logs, and supporting screenshots

### VLSM subnet calculation

Base network **`10.67.0.0/16`**, allocated largest-first for host requirements **35, 21, 19, 14**:

| Subnet | Network | Mask | Usable range | Hosts needed / available | Broadcast |
|--------|---------|------|--------------|--------------------------|-----------|
| Administrator | `10.67.0.0/26` | `255.255.255.192` | `10.67.0.1` – `10.67.0.62` | 35 / 62 | `10.67.0.63` |
| Operations | `10.67.0.64/27` | `255.255.255.224` | `10.67.0.65` – `10.67.0.94` | 21 / 30 | `10.67.0.95` |
| Guest | `10.67.0.96/27` | `255.255.255.224` | `10.67.0.97` – `10.67.0.126` | 19 / 30 | `10.67.0.127` |
| Server / Services | `10.67.0.128/28` | `255.255.255.240` | `10.67.0.129` – `10.67.0.142` | 14 / 14 | `10.67.0.143` |

Interactive calculator (same allocation):

https://subnetcalculator.dev/vlsm/?vlsm=10.67.0.0%2F16%3A35%2C21%2C19%2C14

---

## Notes

- This repository is coursework supporting material (screenshots, lab write-ups, and Packet Tracer files).
- macOS system files and Microsoft Office lock files are ignored via `.gitignore`.
