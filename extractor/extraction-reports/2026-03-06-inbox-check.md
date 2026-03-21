---
type: extraction-report
source: inbox-check
date: 2026-03-06
status: pending-review
processed: 4
remaining: 0
---

# Extraction Report (Inbox-Check)

**Дата:** 2026-03-06
**Источник:** DS-my-strategy/inbox/captures.md
**Обработано captures:** 4 из 4
**Осталось:** 0 (все pending обработаны)

---

## Кандидат #1

**Источник capture:** Различение: Первый слот саморазвития (расширенная версия, v2)
**Сырой текст:** «Первый слот саморазвития — это когда ты сознательно называешь одно конкретное действие, которое начнёшь делать прямо завтра, чтобы развиваться. [...] Первый слот — это время + действие + короткая рефлексия о препятствиях и ресурсах, которая потом питает твои следующие циклы развития.»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию D.084

**Совместимость:**
- **Результат:** совместим, расширяет
- **Проверено:** 01B-distinctions.md (D.001-D.099), bounded-context.md
- **Конфликт:** нет

**Готовый текст (ready-to-commit):**

```markdown
## [D.084] First Slot of Self-Development vs. Habitual Activity

**Definition**: **First slot of self-development** is the conscious naming of one specific action that the agent will start doing tomorrow for development: time + action + brief reflection on obstacles and resources. **Habitual activity** is a recurring action performed automatically without conscious commitment to initiation.

**Distinction Test**:
- Is there a conscious commitment to start tomorrow? (Yes → first slot)
- Is there reflection on obstacles and resources? (Yes → first slot)
- Is it the first time initiating this practice? (Yes → first slot)

| First Slot | vs. | Habitual Activity |
|------------|-----|-------------------|
| Conscious naming | | Automatic performance |
| Tomorrow as initiation point | | Already ongoing |
| Reflection on obstacles/resources | | No explicit reflection |
| Creates new practice | | Maintains existing practice |
| "I will start reading 10 pages of book X tomorrow at 9:00" | | "I read every morning" |

**Why This Distinction Matters**:

The first slot is the entry threshold into practice. Without the conscious commitment to a specific first slot, development remains abstract ("I should develop"). The first slot transforms intention into action.

**Common Confusion**: Treating the first slot as merely "planning" — the first slot is not just a plan, it includes reflection on what might prevent action and what resources are available, creating a feedback loop for future slots.

**Components of First Slot**:
1. **Time**: specific temporal slot (tomorrow, at 9:00, etc.)
2. **Action**: concrete practice (not abstract "develop", but "read 10 pages of book X")
3. **Reflection**: brief assessment of obstacles (what might prevent?) and resources (what will help?)

**Related**: PD.METHOD.002 (Learner Method), PD.PRINC.030 (Continuous Reflash), PD.FAIL.009 (Inability to Sustain Long-Term Learning)

**FPF Parent Concept**: U.Method (the first slot is the initiation point of method performance)
```

**Вердикт:** accept
**Обоснование:** Различение имеет clear boundary (первый слот ≠ привычка), операциональное определение (3 компонента), применимо к методам обучения. Попадает в bounded context PACK-personal (механизм начала практики саморазвития). Нет дубликатов в существующих 99 различениях.

---

## Кандидат #2

**Источник capture:** Failure mode: Ловушка «жизни полегче» (расширенная версия, v2)
**Сырой текст:** «Ловушка "жизни полегче" — выбор удобства сейчас ценой успеха потом. [...] Лёгкость — это не отсутствие проблем, а ясность в действиях. [...] Ловушка: выбор "лёгкого" (нет усилий) вместо "ясного" (понятно что делать).»
**Классификация:** failure mode

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/05-failure-modes/PD.FAIL.045-easy-life-trap.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** совместим, дополняет
- **Проверено:** PD.FAIL.001-044, PD.PRINC.001-032, bounded-context.md
- **Конфликт:** нет (близко к FAIL.032 Careerist Trap, но другое основание — не позиционные средства, а комфорт)

**Готовый текст (ready-to-commit):**

```markdown
---
id: PD.FAIL.045
name: Easy Life Trap
category: decision-failure
type: strategic
severity: major
status: active
summary: "Выбор удобства сейчас ценой успеха потом; смешение «лёгкого» (нет усилий) с «ясным» (понятно что делать)"
created: 2026-03-06
last_updated: 2026-03-06
related:
  violates: [PD.PRINC.004]
  applies_to: [PD.METHOD.008]
---

# [PD.FAIL.045] Easy Life Trap

---

## Definition

The trap of "easier life" — choosing convenience now at the cost of success later. The agent conflates "easy" (no effort required) with "clear" (clarity of action). The trap: choosing the easy path (avoid effort) instead of the clear path (understandable what to do, even if effortful).

---

## Error Type

**Type**: `strategic` — failure in long-term decision-making; prioritizes short-term comfort over long-term outcomes

---

## Detection Test

**How this error manifests in speech/text:**

| Symptom | Example |
|---------|---------|
| Avoiding upfront effort | "Let's do the quick solution for now, we'll fix it later" |
| Short-term optimization | "I don't have time to set up infrastructure, I'll just do it manually" |
| Comfort-seeking framing | "This approach is too complex, let's keep it simple" (when complexity is necessary) |
| Postponing hard decisions | "We'll decide the architecture later, let's just start coding" |
| Conflating ease with clarity | "This is easier" (meaning: requires less effort now) when clarity is needed |

**Test question**: Is the agent choosing the path that requires less effort now, even if it creates more problems later? If yes — this failure mode is active.

---

## Why This Is an Error

| Aspect | Easy Path (Trap) | Clear Path (Correct) |
|--------|------------------|----------------------|
| **Effort now** | Low (convenient) | Higher (investment) |
| **Effort later** | High (technical debt, rework) | Low (maintenance) |
| **Clarity** | Often unclear what will happen | Clear what to do, even if effortful |
| **Long-term** | Accumulates problems | Prevents problems |
| **Example** | Skip infrastructure, code manually | Build infrastructure, automate |

**Key Distinction**: Ease ≠ Clarity
- **Ease** = absence of effort (comfort now)
- **Clarity** = understanding of action (even if effort required)

Choosing ease over clarity is choosing short-term comfort over long-term success.

---

## Root Causes

| Cause | Description |
|-------|-------------|
| Short-term vs long-term optimization | Agent optimizes for immediate comfort, not future outcomes (violates ZP.4) |
| Effort aversion | Upfront effort feels like a cost; future effort is discounted (hyperbolic discounting) |
| Lack of architectural thinking | Agent does not see the long-term consequences of "easy" choices |
| Conflation of ease and clarity | Agent does not distinguish between "low effort" and "clear path" |

---

## Risk / Harm

| Risk | Description |
|------|-------------|
| **Technical debt accumulation** | "Easy" solutions accumulate into unmaintainable systems |
| **Rework cycles** | Avoiding upfront design leads to repeated rework |
| **Capability ceiling** | Easy solutions cannot scale; agent hits capability limit early |
| **Strategic failure** | Easy choices in critical moments lead to non-recoverable positions |

---

## Related Items

| Type | Item | Relationship |
|------|------|--------------|
| Principle | [PD.PRINC.004](../01-domain-contract/01A-bounded-context.md) | Long-term thinking principle — violated by this FM |
| Method | [PD.METHOD.008](../03-methods/PD.METHOD.008-strategizing.md) | Strategizing should prevent easy-life trap |
| Distinction | [D.017](../01-domain-contract/01B-distinctions.md#d017-strategizing-vs-planning) | Strategizing (long-term) vs Planning (short-term) |
| Failure Mode | [PD.FAIL.022](PD.FAIL.022-fatal-strategic-error.md) | Easy-life trap can lead to fatal strategic error |

---

## Detection Methods

| Method | When to Apply |
|--------|---------------|
| Effort horizon audit | Ask: are you optimizing effort for this week or this year? |
| Technical debt review | Identify "quick fixes" that became permanent |
| Architectural gate | Before major decisions: will this scale? What is the long-term cost? |

---

## Antidote

**Principle**: Remember that convenience now costs more than success later.

**Practice**:
1. Distinguish **ease** (low effort) from **clarity** (understandable action)
2. Apply **architectural thinking**: what are the long-term consequences of this choice?
3. Choose **clear over easy** — even if clarity requires more upfront effort
4. Use **ArchGate** (CLAUDE.md §5) for major architectural decisions

**Related FPF Principle**: ZP.4 (Optimize for long-term, not short-term)

---

**Parent Concept (SPF)**: U.FailureMode (типичное нарушение принципов с наблюдаемыми симптомами)
```

**Вердикт:** accept
**Обоснование:** Чёткое различение (ease ≠ clarity), clear detection test, соответствует формату FM (definition, detection, root causes, risks, antidote). Попадает в bounded context PACK-personal (стратегические решения созидателя). Нет дубликата среди существующих 44 FM. Связано с ZP.4 и ArchGate.

---

## Кандидат #3

**Источник capture:** Трекер слотов
**Сырой текст:** «Трекер слотов — это не просто таблица, а *система записи* того, какие впечатления, опыты и знания ты получаешь, чтобы видеть, как они заполняют пробелы в твоём развитии.»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию D.085

**Совместимость:**
- **Результат:** уточняет
- **Проверено:** 01B-distinctions.md (D.001-D.099), bounded-context.md, WP.001-016
- **Конфликт:** нет (связано с D.162 "Трекер слотов vs Система публикации" из captures.md строка 148, но то различение ещё не формализовано)

**Готовый текст (ready-to-commit):**

```markdown
## [D.085] Slot Tracker vs. Simple Table

**Definition**: **Slot tracker** is a recording system that captures what impressions, experiences, and knowledge the agent is acquiring, allowing the agent to see how they fill gaps in development. **Simple table** is a data structure without the interpretation layer — just rows and columns.

**Distinction Test**:
- Does it show gaps in development? (Yes → slot tracker)
- Does it connect entries to developmental goals? (Yes → slot tracker)
- Is it just storing data without interpretation? (Yes → simple table)

| Slot Tracker | vs. | Simple Table |
|--------------|-----|--------------|
| Recording system | | Data structure |
| Shows gaps in development | | Just lists entries |
| Connected to developmental goals | | No connection to purpose |
| Interpretation: "what am I missing?" | | No interpretation |
| Example: "I have no active leisure slots this week" | | Example: "Monday: work, Tuesday: work, ..." |

**Why This Distinction Matters**:

A slot tracker is not just a table — it is a **system of recording** with an interpretation layer. Without interpretation ("am I filling gaps?"), it degrades into a simple table that accumulates data but provides no insight.

**Common Confusion**: Treating a slot tracker as merely a scheduling tool or table — missing the reflective/interpretive function that makes it useful for development.

**Components of Slot Tracker**:
1. **Recording**: capturing impressions, experiences, knowledge acquired
2. **Gap detection**: identifying what is missing (developmental blind spots)
3. **Developmental context**: connecting entries to goals or priorities

**Related**: PD.METHOD.008 (Strategizing — uses slot tracker to monitor gaps), PD.WP.005 (Dissatisfaction List — identified through gap detection), PD.PRINC.030 (Continuous Reflash)

**FPF Parent Concept**: U.Work (slot tracker is a work product with epistemic function)
```

**Вердикт:** accept
**Обоснование:** Различение имеет clear boundary (трекер слотов ≠ простая таблица), операциональное определение (3 компонента), применимо к методам саморазвития. Попадает в bounded context PACK-personal (инструмент рефлексии о пробелах развития). Нет дубликатов.

---

## Кандидат #4

**Источник capture:** Вечерняя ловушка
**Сырой текст:** «Вечерняя ловушка — это когда автоматизмы берут верх над намерениями. Чем раньше ты распознаешь свой паттерн, тем проще его менять.»
**Классификация:** failure mode

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/05-failure-modes/PD.FAIL.046-evening-trap.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** совместим, расширяет
- **Проверено:** PD.FAIL.001-044, PD.STATE.001-007, bounded-context.md, 01B-distinctions.md (D.166-167 из captures.md строки 166-180 про "Активное vs Пассивное впечатление")
- **Конфликт:** нет (связано с FAIL.020 Passive Leisure Default, но другое — не дефолт на пассивность, а переключение из активного в пассивное)

**Готовый текст (ready-to-commit):**

```markdown
---
id: PD.FAIL.046
name: Evening Trap
category: state-failure
type: behavioral
severity: minor
status: active
summary: "Паттерн, когда автоматизмы берут верх над намерениями вечером — переключение из активного режима в пассивное потребление"
created: 2026-03-06
last_updated: 2026-03-06
related:
  violates: [PD.PRINC.031]
  applies_to: [PD.METHOD.006, PD.METHOD.009]
---

# [PD.FAIL.046] Evening Trap

---

## Definition

The evening trap is a behavioral pattern where automatisms override intentions in the evening. The agent plans active evening activities (reading, creative work, active leisure) but defaults to passive consumption (scrolling feeds, watching videos, gaming). The earlier the agent recognizes this pattern, the easier it is to change.

---

## Error Type

**Type**: `behavioral` — automatic behavior pattern that displaces intentional activity

---

## Detection Test

**How this error manifests in speech/text:**

| Symptom | Example |
|---------|---------|
| Planned vs actual evening | "I planned to read, but ended up scrolling social media" |
| Energy collapse | "I'm too tired in the evening for anything productive" |
| Passive default | "I just want to relax after work" (relax = passive consumption) |
| Guilt after evening | "I wasted the evening again" |
| Cannot recall evening | "I don't remember what I did last night" |

**Test question**: Does the agent consistently fail to execute active evening plans, defaulting to passive consumption instead? If yes — this failure mode is active.

---

## Why This Is an Error

| Aspect | Evening Trap (Error) | Intentional Evening (Correct) |
|--------|----------------------|-------------------------------|
| **Mode** | Automatic | Intentional |
| **Activity** | Passive consumption | Active impression or low-energy active |
| **Energy** | Depleted → passive | Managed → appropriate activity for state |
| **Outcome** | Guilt, wasted time | Satisfaction, progress |
| **Pattern** | Automatism overrides intention | Intention executed or consciously deferred |

**Key Problem**: The evening trap is not about choosing passive leisure per se — it is about **automatism overriding intention**. The agent loses agency in the evening.

---

## Root Causes

| Cause | Description |
|-------|-------------|
| Energy depletion | By evening, productive state is low — agent lacks energy for active tasks |
| Passive options are friction-free | Phone, TV, social media require zero initiation effort; active tasks require setup |
| No evening state management | Agent does not plan activities appropriate to evening energy level |
| Transition automatism | Default evening routine is passive; breaking it requires conscious effort |

---

## Risk / Harm

| Risk | Description |
|------|-------------|
| **Impression poverty** | Evenings are significant time — passive consumption produces weak impressions |
| **Loss of evening productivity** | Some creative/learning work is possible in evening if energy is managed |
| **Guilt accumulation** | Repeated pattern of "wasted evenings" erodes self-trust |
| **Reinforces automatism** | Each repetition strengthens the automatic evening pattern |

---

## Related Items

| Type | Item | Relationship |
|------|------|--------------|
| Principle | [PD.PRINC.031](../01-domain-contract/01C-principles.md) | Productive State Primacy — evening should match state |
| Method | [PD.METHOD.006](../03-methods/PD.METHOD.006-leisure-organization.md) | Leisure organization should include evening practices |
| Method | [PD.METHOD.009](../03-methods/PD.METHOD.009-planning.md) | Planning should account for evening energy level |
| Failure Mode | [PD.FAIL.020](PD.FAIL.020-passive-leisure-default.md) | Related but different — FAIL.020 is about all leisure, FAIL.046 is about evening automatism |
| Distinction | D.167 (from captures) | Активное vs Пассивное впечатление (related, not yet formalized) |

---

## Detection Methods

| Method | When to Apply |
|--------|---------------|
| Evening audit | Review last 7 evenings: planned vs actual |
| Pattern recognition | Ask: is there a recurring evening automatism? |
| Energy-activity match | Check: are evening activities matched to evening energy level? |

---

## Antidote

**Principle**: The earlier you recognize your pattern, the easier it is to change.

**Practice**:
1. **Recognize the pattern** — evening energy is lower, automatism is stronger
2. **Plan evening activities for evening state** — not high-energy tasks, but low-energy active tasks (light reading, note review, low-intensity leisure)
3. **Create friction for passive options** — remove phone from bedroom, use website blockers
4. **Create ease for active options** — prepare book, set up environment before evening
5. **Accept lower productivity** — evening is not for peak work, but can be for low-energy active tasks

**Related Method**: PD.METHOD.006 (Leisure Organization) — includes planning evening leisure at appropriate energy level

---

**Parent Concept (SPF)**: U.FailureMode (типичное нарушение принципов с наблюдаемыми симптомами)
```

**Вердикт:** accept
**Обоснование:** Чёткое определение (автоматизм vs намерение вечером), clear detection test, соответствует формату FM. Попадает в bounded context PACK-personal (управление состоянием и досугом). Не дубликат FAIL.020 (пассивный досуг вообще ≠ вечерний паттерн). Связано с принципом Productive State Primacy.

---

## Сводка

| Метрика | Значение |
|---------|----------|
| Captures обработано | 4 |
| Всего кандидатов | 4 |
| Accept | 4 |
| Reject | 0 |
| Defer | 0 |
| Осталось в inbox | 0 |

**Готовность:** Все 4 кандидата готовы к применению (accept). Ожидаю одобрения пользователя для записи в PACK-personal.
