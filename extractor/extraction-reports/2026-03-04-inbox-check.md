---
type: extraction-report
source: inbox-check
date: 2026-03-04
status: pending-review
processed: 2
remaining: 0
---

# Extraction Report (Inbox-Check)

**Дата:** 2026-03-04
**Источник:** DS-my-strategy/inbox/captures.md
**Обработано captures:** 2 из 2
**Осталось:** 0 (все pending captures обработаны)

---

## Кандидат #1

**Источник capture:** Трекер слотов (line 407, fleeting-notes.md 3 мар 10:50)
**Сырой текст:** «Трекер слотов — это не просто таблица, а *система записи* того, какие впечатления, опыты и знания ты получаешь, чтобы видеть, как они заполняют пробелы в твоём развитии.»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию (новое различение D.103)

**Совместимость:**
- **Результат:** уточняет — расширяет понимание tracker как системы, не просто артефакта
- **Проверено:** 01B-distinctions.md (D.001-D.102), 00-pack-manifest.md (bounded context)
- **Конфликт:** нет — термин "slot" упоминается в контексте "protected daily slot" (D.086), но не как tracker

**Готовый текст (ready-to-commit):**

```markdown
## [D.103] Slot Tracker as Recording System vs. Slot Tracker as Table

**Definition**: **Slot tracker as recording system** (трекер слотов как система записи) is a continuous practice of capturing impressions, experiences, and knowledge to observe how they fill gaps in one's development. **Slot tracker as table** is just the artifact (spreadsheet, document) — the tool without the method.

**Distinction Test**:
- Does the person track *to observe development gaps*? (→ recording system, method)
- Is it just a table without systematic recording? (→ artifact only, no method)

| Slot Tracker as System | vs. | Slot Tracker as Table |
|------------------------|-----|----------------------|
| Continuous practice | | Static artifact |
| Captures: impressions + experiences + knowledge | | Empty/sporadic rows |
| Purpose: observe gaps in development | | Purpose: storage |
| Method (U.Method) | | Tool (artifact) |

**Typical Confusion**: "I created a tracker" (tool) conflated with "I track slots" (method), "I have a table" (artifact) conflated with "I observe what I'm learning" (systematic practice)

**Why It Matters**: Creating a tracker artifact without the recording practice is [PD.FAIL.005](../05-failure-modes/PD.FAIL.005-tool-confused-with-method.md) — tool confused with method. The value is not in the table, but in the continuous capture and reflection that reveals where you're learning and where you're stagnating.

**Related Items**:
- Distinction: [D.001](01B-distinctions.md#d001-method-vs-tool) — method vs. tool (parent distinction)
- Failure Mode: [PD.FAIL.005](../05-failure-modes/PD.FAIL.005-tool-confused-with-method.md) — tool confused with method
- Method: [PD.METHOD.003](../03-methods/PD.METHOD.003-systematic-slow-reading.md) — captures impressions during reading
- Work Product: [PD.WP.003](../04-work-products/PD.WP.003-educational-notes.md) — notes created at cognitive resonance

**SoTA**: `current`
- Revision criterion: Would change if slot tracking proves ineffective for observing development gaps

---
```

**Вердикт:** accept
**Обоснование:**
- Bounded context: fits PD scope (practices of creator, observation methods, self-development)
- Type: correct (distinction between method and artifact, extends D.001)
- No duplicate: checked D.001-D.102, no existing slot tracker distinction
- Ontology: parent concept U.Method (distinction about method vs. tool)
- Not governance: no — it's a conceptual distinction, not a task or deadline

---

## Кандидат #2

**Источник capture:** Вечерняя ловушка (line 418, fleeting-notes.md 3 мар 10:49)
**Сырой текст:** «*Вечерняя ловушка* — это когда автоматизмы берут верх над намерениями. Чем раньше ты распознаешь свой паттерн, тем проще его менять.»
**Классификация:** failure mode

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/05-failure-modes/PD.FAIL.044-evening-trap.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** уточняет — связан с PD.FAIL.020 (Passive Leisure Default) и capture line 166-182 (Active vs Passive Impression), но фокус на вечернем паттерне автоматизмов
- **Проверено:** 05-failure-modes/*.md (FAIL.001-FAIL.043), 01B-distinctions.md (D.166 упоминает вечернюю ловушку как контекст)
- **Конфликт:** нет — FAIL.020 описывает пассивный досуг по умолчанию, но не вечерний паттерн автоматизмов

**Готовый текст (ready-to-commit):**

```markdown
---
id: PD.FAIL.044
name: Evening Trap
category: attention-failure
type: methodological
severity: moderate
status: active
summary: "Вечерняя ловушка — автоматизмы берут верх над намерениями в вечернее время; переключение из активного режима в пассивный из-за истощения энергии"
created: 2026-03-04
last_updated: 2026-03-04
related:
  violates: [PD.PRINC.030, PD.PRINC.031]
  applies_to: [PD.METHOD.006]
---

# [PD.FAIL.044] Evening Trap

---

## Definition

Evening trap (вечерняя ловушка) — a recurring pattern where automatisms override intentions in the evening. The agent enters the evening with intentions (e.g., "I'll work on my project tonight") but defaults to passive activities (scrolling, watching content) because active practices require energy the agent no longer has.

**Core pattern**: Evening → Energy depleted → Automatisms activated → Intentions abandoned

---

## Error Type

**Type**: `methodological` — failure to account for energy dynamics when planning active practices

---

## Detection Test

**How this error manifests in speech/text:**

| Symptom | Example |
|---------|---------|
| Evening intention, passive reality | "I planned to write tonight, but I just scrolled instead" |
| Repeated evening pattern | "Every night I plan to work on X, but I never do" |
| Evening guilt | "I wasted the evening again" |
| Morning planning, evening failure | Plans active evening work without energy management |
| Unrecognized automatism | "I don't know what happened, I just ended up watching videos" |

**Test question**: Does the agent repeatedly plan active practices for evening hours, then default to passive activities? If yes — evening trap is active.

---

## Why This Is an Error

| Aspect | With Energy Management | Without (Evening Trap) |
|--------|----------------------|----------------------|
| **Evening planning** | Accounts for energy state | Assumes same energy as morning |
| **Active practices** | Scheduled for peak energy times | Scheduled for depleted times |
| **Automatisms** | Recognized and managed | Unrecognized, take over |
| **Result** | Intentions realized | Intentions abandoned |

The error is not in passive activities themselves — it's in planning active practices for a time when energy is insufficient, setting up inevitable failure.

---

## Root Causes

| Cause | Description |
|-------|-------------|
| Energy state ignored | Agent does not track or account for energy dynamics across the day |
| Automatisms unrecognized | Agent is unaware of default patterns that activate when energy is low |
| Active = Passive confusion | Agent treats active practices (writing, creating) as no more demanding than passive (watching, scrolling) |
| Morning planning bias | Plans made in the morning (high energy) assume evening energy will be the same |

---

## Risk / Harm

| Risk | Description |
|------|-------------|
| **Chronic intention failure** | Repeated evening failures erode trust in one's own plans |
| **Active impression poverty** | Only passive impressions accumulated in evening hours (largest discretionary time block) |
| **Identity conflict** | Agent sees self as "someone who will work on X" but behavior contradicts identity |
| **Guilt accumulation** | Each evening trap reinforces "I'm lazy" narrative instead of "my planning is wrong" |

---

## Related Items

| Type | Item | Relationship |
|------|------|--------------|
| Failure Mode | [PD.FAIL.020](PD.FAIL.020-passive-leisure-default.md) | Related — passive leisure default, but not time-specific |
| Distinction | D.166 (Active vs Passive Impression) | Context — evening trap causes shift from active to passive impressions |
| Principle | [PD.PRINC.031](../01-domain-contract/01C-principles.md) | Violates Productive State Primacy — planning ignores state |
| Method | [PD.METHOD.006](../03-methods/PD.METHOD.006-leisure-organization.md) | Should account for energy when organizing leisure |

---

## Detection Methods

| Method | When to Apply |
|--------|---------------|
| Weekly evening audit | Review last 7 evenings — how many times did intentions match actions? |
| Energy state tracking | Track energy level at evening start (18:00-20:00) — consistently low = trap active |
| Automatism identification | Ask: what do I *actually* do in evenings vs. what I plan to do? |

---

## Resolution

### Correct Interpretation

**Diagnostic**: The agent consistently fails to realize evening intentions not because of "laziness" but because active practices require energy that is no longer available.

### Intervention

| Action | Description |
|--------|-------------|
| **Shift active to morning/day** | Reschedule active practices (writing, creating, learning) to times when energy is available |
| **Accept evening state** | Plan low-energy or passive practices for evenings — or plan nothing and allow rest |
| **Identify automatisms** | Write down: "When evening arrives and I'm tired, I automatically X" — awareness breaks pattern |
| **Energy-aware planning** | When planning active work, check: will I have energy at that time? If no — reschedule |

### Method

1. **Energy inventory** (weekly): Track energy level at 3 times daily (morning, midday, evening) for 1 week
2. **Automatism naming**: Write down current evening automatism: "When evening arrives, I automatically..."
3. **Reschedule active** (one-time): Move all recurring active evening tasks to morning/midday slots
4. **Evening policy** (install): "Evenings are for low-energy or passive activities only"

**Success criterion**: After 2 weeks, evening intention-action mismatch drops below 20% (max 1 failure per 5 days).

---

## Examples

### Example 1: Writer

**Before (trap active)**:
- Plan: "I'll write 500 words every evening after work"
- Reality: Arrives home at 19:00, scrolls social media, watches videos until 23:00
- Result: No writing, guilt accumulates

**After (trap resolved)**:
- Recognition: "I have no writing energy at 19:00"
- Reschedule: Writing moved to 06:00-07:00 (before work)
- Evening: Passive leisure accepted — reading, light walks, socializing
- Result: Writing happens, no guilt

### Example 2: Learner

**Before (trap active)**:
- Plan: "I'll study programming 2 hours every evening"
- Reality: Opens laptop, browses tutorials, closes after 20 minutes, watches YouTube
- Result: No learning, "I'm not disciplined enough"

**After (trap resolved)**:
- Recognition: "Active learning needs energy I don't have at 20:00"
- Reschedule: Study slot moved to weekday lunch break (12:00-13:00) + Saturday morning (09:00-11:00)
- Evening: Passive learning allowed (watch tech talks, read blogs) — no guilt
- Result: Learning happens, sustainable

---

## Notes

This failure mode is structural, not motivational. The agent does not lack willpower — the agent lacks energy-aware planning. Automatisms are not enemies — they are defaults that activate when energy is unavailable for conscious choice. The resolution is not "try harder in the evening" but "stop planning active work for low-energy times."

---
```

**Вердикт:** accept
**Обоснование:**
- Bounded context: fits PD scope (attention management, failure modes, practices)
- Type: correct (failure mode — pattern of behavior leading to non-realization)
- No duplicate: checked FAIL.001-043, no evening trap FM exists (FAIL.020 is related but different focus)
- Ontology: parent concept U.Method (failure mode in applying method)
- Not governance: no — it's a recurring pattern, not a task or deadline
- Related to existing capture: line 166-182 (Active vs Passive Impression) mentions evening trap as context, this capture formalizes the trap itself

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

**Следующий шаг:** Пользователь должен рассмотреть отчёт в интерактивной сессии («review extraction report»), одобрить/отклонить кандидатов, после чего KE запишет в Pack и закоммитит.
