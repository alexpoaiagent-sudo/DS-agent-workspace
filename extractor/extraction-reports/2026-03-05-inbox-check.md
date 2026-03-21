---
type: extraction-report
source: inbox-check
date: 2026-03-05
status: pending-review
processed: 2
remaining: 0
---

# Extraction Report (Inbox-Check)

**Дата:** 2026-03-05
**Источник:** DS-my-strategy/inbox/captures.md
**Обработано captures:** 2 из 2
**Осталось:** 0 (все pending captures обработаны)

---

## Кандидат #1

**Источник capture:** Трекер слотов (fleeting-notes.md, 3 мар 10:50)
**Сырой текст:** «Трекер слотов — это не просто таблица, а *система записи* того, какие впечатления, опыты и знания ты получаешь, чтобы видеть, как они заполняют пробелы в твоём развитии.»
**Классификация:** distinction (различение — определение понятия)

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию ## [D.100] Slot Tracker

**Совместимость:**
- **Результат:** уточняет
- **Проверено:**
  - `01B-distinctions.md` (нет дубликата)
  - `PD.FORM.028` (Impression Memory Belief — описывает процесс впечатлений, но не рабочий продукт трекера)
  - `04-work-products/` (нет WP для трекера впечатлений)
- **Конфликт:** нет. Capture уточняет существующее: PD.FORM.028 описывает процесс "впечатления → воспоминания → убеждения", а трекер — конкретный инструмент для управления впечатлениями (первая стадия процесса).

**Готовый текст (ready-to-commit):**

```markdown
## [D.100] Slot Tracker vs. Data Table

**Definition**: A **slot tracker** is a system for recording impressions, experiences, and knowledge acquisition to identify developmental gaps. A **data table** is a passive repository of information without developmental purpose.

**Distinction Test**:
- Does the artifact track developmental gaps and growth? (Yes → slot tracker; No → data table)
- Is the content actively used for self-reflection and planning? (Yes → slot tracker; No → data table)

| Slot Tracker | vs. | Data Table |
|--------------|-----|------------|
| Purpose: identify gaps in development | | Purpose: store information |
| Tracks: impressions, experiences, knowledge | | Stores: arbitrary data |
| Actively used for reflection | | Passively accumulates |
| Linked to developmental goals | | No developmental context |

**Typical Confusion**: "I have a spreadsheet of books I've read" (data table mistaken for developmental tracker), "I track my time" (accounting mistaken for slot tracking)

**Why It Matters**: Slot tracking enables gap analysis in development — showing which areas receive attention and which are neglected. A data table without developmental purpose provides no actionable insight.

**Related Items**:
- Formalization: [PD.FORM.028](../02-domain-entities/formalizations/PD.FORM.028-impression-memory-belief.md) — Impressions as first stage of experience processing
- Method: [PD.METHOD.001](../03-methods/PD.METHOD.001-time-accounting.md) — Time accounting as resource slot tracking
- Distinction: [D.016](#d016-invested-time-vs-spent-time) — Investment vs. spending

**SoTA**: `current` — derived from self-development engineering practice
- Revision criterion: Would change if evidence shows slot tracking does not correlate with developmental progress
```

**Вердикт:** accept
**Обоснование:** Различение чётко определяет понятие "трекер слотов" как инструмент для выявления пробелов в развитии. Связано с существующими понятиями (PD.FORM.028, PD.METHOD.001), не противоречит, уточняет. Попадает в bounded context PACK-personal (характеристики и состояния созидателя).

---

## Кандидат #2

**Источник capture:** Вечерняя ловушка (fleeting-notes.md, 3 мар 10:49)
**Сырой текст:** «*Вечерняя ловушка* — это когда автоматизмы берут верх над намерениями. Чем раньше ты распознаешь свой паттерн, тем проще его менять.»
**Классификация:** failure mode (режим ошибки — паттерн, когда усталость → автоматизм → пассивный режим вопреки намерениям)

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/05-failure-modes/PD.FAIL.045-evening-trap.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** совместим (расширяет существующее)
- **Проверено:**
  - `05-failure-modes/PD.FAIL.020-passive-leisure-default.md` — про дефолт на пассивный досуг, но не про конкретный вечерний паттерн
  - `05-failure-modes/PD.FAIL.034-acting-without-role-awareness.md` — про автоматизмы в работе, но не про переключение режимов
  - `01B-distinctions.md` — нет записи "Активное vs Пассивное впечатление" (capture #166 processed, но ещё не применён)
- **Конфликт:** нет. Связан с PD.FAIL.020 (пассивный досуг), но фокус другой: вечерний паттерн переключения, а не общий дефолт.

**Готовый текст (ready-to-commit):**

```markdown
---
id: PD.FAIL.045
name: Evening Trap
category: state-management
type: behavioral
severity: minor
status: active
summary: "Вечерняя ловушка: автоматизмы берут верх над намерениями — усталость → дефолт на пассивный режим вопреки запланированным активностям"
created: 2026-03-05
last_updated: 2026-03-05
related:
  violates: [PD.PRINC.031]
  applies_to: [PD.METHOD.006]
  related_to: [PD.FAIL.020]
---

# [PD.FAIL.045] Evening Trap

---

## Definition

The **evening trap** is a failure mode where automatisms override intentions. The agent plans active evening activities (learning, projects, social) but defaults to passive leisure (scrolling, TV, gaming) due to fatigue. The pattern: end of work → fatigue → automatisms activate → passive mode despite intentions.

---

## Error Type

**Type**: `behavioral` — state management failure; agent does not recognize energy state and pre-commit to low-energy alternatives

---

## Detection Test

**How this error manifests in speech/text:**

| Symptom | Example |
|---------|---------|
| Planned activity not done | "I wanted to read tonight but ended up scrolling" |
| Evening plans abandoned | "I had plans for the evening but was too tired" |
| Guilt after passive evening | "I wasted the evening again" |
| Pattern recognition | "This always happens after work" |
| No pre-commitment | "I'll decide what to do when I get home" |

**Test question**: Do you recognize your evening energy pattern and pre-commit to appropriate activities? If not — this failure mode is active.

---

## Why This Is an Error

| Aspect | Evening Trap (Default) | Pre-Committed Low-Energy Activity |
|--------|------------------------|----------------------------------|
| **Planning** | No energy-adjusted plan | Energy state acknowledged |
| **Execution** | Automatisms decide | Pre-commitment executed |
| **Outcome** | Passive mode, often regretted | Intentional low-energy active mode |
| **Recovery** | Surface (numbness) | Adequate (light active leisure) |
| **Examples** | TV, scrolling after planning to read | Pre-committed walk, light reading, conversation |

The error is not in being tired — fatigue is normal. The error is in not recognizing the pattern and failing to pre-commit to appropriate low-energy activities.

---

## Root Causes

| Cause | Description |
|-------|-------------|
| No energy pattern awareness | Agent does not track or recognize evening energy levels |
| No pre-commitment | Agent relies on in-the-moment decision-making when willpower is lowest |
| Automatisms as default | Passive options (phone, TV) are immediately accessible; active options require initiation |
| High-energy plans for low-energy state | Agent plans active evening activities without accounting for fatigue |

---

## Risk / Harm

| Risk | Description |
|------|-------------|
| **Chronic intention failure** | Repeated evening plan failures undermine self-trust |
| **Passive leisure default** | Reinforces PD.FAIL.020 (passive leisure as only leisure) |
| **Guilt accumulation** | Evening regret accumulates into self-criticism |
| **Lost development time** | Evenings could be used for light active leisure, but are consumed passively |

---

## Pattern → Antipattern

| Antipattern (Evening Trap) | Pattern (Energy-Adjusted Pre-Commitment) |
|----------------------------|------------------------------------------|
| Plan high-energy activity for evening | Recognize evening energy pattern (fatigue likely) |
| Arrive home fatigued | Pre-commit to low-energy active alternatives |
| Automatisms activate (phone, TV) | Execute pre-committed activity (light reading, walk, conversation) |
| Passive evening → guilt | Active evening → satisfaction |

---

## Related Items

| Type | Item | Relationship |
|------|------|--------------|
| Failure Mode | [PD.FAIL.020](./PD.FAIL.020-passive-leisure-default.md) | Passive leisure default — evening trap reinforces this pattern |
| Principle | [PD.PRINC.031](../01-domain-contract/01C-principles.md) | Productive State Primacy — energy state determines activity, not fixed plan |
| Method | [PD.METHOD.006](../03-methods/PD.METHOD.006-leisure-organization.md) | Leisure organization should account for evening energy patterns |
| Distinction | D.166 (pending) | Active vs. Passive Impression — evening trap defaults to passive |

---

## Detection Methods

| Method | When to Apply |
|--------|---------------|
| Evening energy audit | Track actual evening energy levels for 7 days |
| Intention vs. outcome log | Record evening plan vs. what actually happened for 7 days |
| Pattern recognition | Identify recurring evening trap triggers (work fatigue, decision fatigue) |

---

## Intervention

| Action | Description |
|--------|-------------|
| **Recognize pattern** | Acknowledge that evening fatigue is normal and predictable |
| **Pre-commit** | Before work day ends, decide on low-energy active alternative for evening |
| **Remove default access** | Increase friction for passive options (phone in another room, TV unplugged) |
| **Light active leisure list** | Maintain list of low-energy active options (walk, light reading, phone call to friend) |
| **Weekly reflection** | Review: did evening trap activate? If yes, adjust pre-commitment strategy |
```

**Вердикт:** accept
**Обоснование:** Чётко описанный failure mode с паттерном, симптомами, причинами и интервенцией. Связан с PD.FAIL.020 (пассивный досуг) и PD.PRINC.031 (Productive State Primacy), но фокусируется на конкретном вечернем паттерне. Попадает в bounded context PACK-personal (состояния, поведение созидателя).

---

## Сводка

| Метрика | Значение |
|---------|----------|
| Captures обработано | 2 |
| Всего кандидатов | 2 |
| Accept | 2 |
| Reject | 0 |
| Defer | 0 |
| Осталось в inbox | 0 |

