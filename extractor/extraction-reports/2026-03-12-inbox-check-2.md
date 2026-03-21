---
type: extraction-report
source: inbox-check
date: 2026-03-12
status: pending-review
processed: 4
remaining: 0
---

# Extraction Report (Inbox-Check)

**Дата:** 2026-03-12
**Источник:** DS-my-strategy/inbox/captures.md
**Обработано captures:** 4 из 4
**Осталось:** 0 (все pending обработаны)

---

## Кандидат #1

**Источник capture:** Связка: Когнитивная нагрузка (CLT Sweller) ↔ терминология Pack
**Сырой текст:** «В Pack нет термина "когнитивная нагрузка" (cognitive load). Используются эквиваленты: PD.STATE.004 "Перевозбуждение", PD.STATE.008 "Шкала состояний 0–5", PD.CHR.009 "Работоспособность". Однако CLT Sweller'а различает три типа нагрузки: intrinsic (сложность самого материала), extraneous (лишнее в подаче), germane (полезная нагрузка на формирование схем). Это различение отсутствует в Pack и может обогатить PD.STATE.004 и PD.FORM.042.»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию (D.136)

**Совместимость:**
- **Результат:** уточняет существующие понятия (PD.STATE.004, PD.CHR.009)
- **Проверено:** PD.STATE.004 (Перевозбуждение), PD.CHR.009 (Work Capacity), PD.FORM.042 (Compilation)
- **Конфликт:** нет — новое различение дополняет существующую терминологию

**Готовый текст (ready-to-commit):**

~~~markdown
## [D.136] Intrinsic vs. Extraneous vs. Germane Load (Cognitive Load Theory) {#d136-intrinsic-extraneous-germane-load}

**Definition**: Three types of cognitive load (Sweller, 1988): **Intrinsic load** is the inherent difficulty of the material itself (determined by complexity and element interactivity). **Extraneous load** is the unnecessary cognitive burden caused by poor instructional design (confusing presentation, irrelevant details). **Germane load** is productive cognitive effort spent on schema construction and automation.

**Distinction Test**:
- Does this load come from the material's inherent structure? (Yes → intrinsic)
- Does this load come from how the material is presented? (Yes → extraneous)
- Is this load used to build mental models and schemas? (Yes → germane)

| Intrinsic Load | vs. | Extraneous Load | vs. | Germane Load |
|----------------|-----|-----------------|-----|--------------|
| Material complexity | | Poor presentation | | Schema building |
| Cannot be removed without simplifying content | | Can be removed by better design | | Productive investment |
| Unavoidable | | Reducible | | Desirable |

**Typical Confusion**: Treating all cognitive load as bad ("reduce cognitive load"). Intrinsic load is inherent to mastery. Germane load is the goal. Only extraneous load should be eliminated.

**Why It Matters**: PD.STATE.004 (Перевозбуждение) describes state of overload, but does not distinguish load sources. Effective learning design requires reducing extraneous load while supporting germane load for complex material.

**Related Items**:
- State: [PD.STATE.004](../02-domain-entities/states/PD.STATE.004-overexertion.md)
- Characteristic: [PD.CHR.009](../02-domain-entities/characteristics/PD.CHR.009-work-capacity.md)
- Formalization: [PD.FORM.042](../02-domain-entities/formalizations/PD.FORM.042-compilation-as-neural-route-building.md)

**SoTA**: `current`
- Basis: Sweller (1988) "Cognitive load during problem solving"; Nowack & Van Der Meer (2023) "Cognitive Load and Chronotype"
- Revision criterion: Would change if CLT's three-load model is superseded by a more parsimonious or comprehensive framework
~~~

**Вердикт:** accept
**Обоснование:** Различение восполняет пробел в терминологии Pack — есть понятие перегрузки (PD.STATE.004), но нет классификации типов нагрузки. CLT Sweller — SOTA-модель с 35+ годами эмпирической валидации. Три типа нагрузки критичны для дизайна обучения и управления состоянием созидателя. Не конфликтует с существующими сущностями, а уточняет их.

---

## Кандидат #2

**Источник capture:** Различение: Хронотип и synchrony effect
**Сырой текст:** «Хронотип (chronotype) — индивидуальная склонность к утренней или вечерней активности. Synchrony effect (Nowack & Van Der Meer, 2023): когнитивные функции значимо лучше в часы, соответствующие хронотипу. Разница: 9–40% производительности. Для PD.WP.014 (распорядок) это означает: оптимальный распорядок не универсален, а должен калиброваться под хронотип. Источник: Nowack & Van Der Meer (2023), Valdez (2023), Falkenberg et al. (2025).»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию (D.137)

**Совместимость:**
- **Результат:** уточняет существующие понятия (PD.WP.014 Распорядок дня, PD.FORM.068 State-Dependent Task Allocation)
- **Проверено:** PD.WP.014 (Daily Routine), PD.FORM.068 (State Dependent Task Allocation), PD.FAIL.021 (Ignoring Sleep)
- **Конфликт:** нет — новое различение объясняет почему единый распорядок не работает для всех

**Готовый текст (ready-to-commit):**

~~~markdown
## [D.137] Chronotype vs. Universal Schedule (Synchrony Effect) {#d137-chronotype-vs-universal-schedule}

**Definition**: **Chronotype** is an individual's biological preference for morning or evening activity (Roenneberg et al., 2007). **Universal schedule** assumes optimal productivity at the same time for everyone. **Synchrony effect** (Nowack & Van Der Meer, 2023) shows cognitive performance is 9–40% higher when task timing matches chronotype.

**Distinction Test**:
- Does this assume everyone performs best at the same hours? (Yes → universal schedule)
- Does this account for individual circadian preference? (Yes → chronotype-calibrated schedule)

| Universal Schedule | vs. | Chronotype-Calibrated Schedule |
|--------------------|-----|-------------------------------|
| Same optimal hours for all | | Varies by individual preference |
| "9am is peak productivity" | | "Peak productivity at your peak hours" |
| Ignores biological variance | | Accounts for circadian rhythm |
| 9–40% performance loss for mismatched types | | Optimized cognitive performance |

**Typical Confusion**: "I should do deep work at 5am because high performers wake up early." This ignores chronotype — evening types forced into early schedules lose 9–40% cognitive capacity.

**Why It Matters**: PD.WP.014 (Daily Routine) and PD.FORM.068 (State-Dependent Task Allocation) should account for chronotype, not prescribe universal hours. Optimal routine is individual.

**Related Items**:
- Work Product: [PD.WP.014](../04-work-products/PD.WP.014-daily-routine.md)
- Formalization: [PD.FORM.068](../02-domain-entities/formalizations/PD.FORM.068-state-dependent-task-allocation.md)
- Failure Mode: [PD.FAIL.021](../05-failure-modes/PD.FAIL.021-ignoring-sleep-and-routine.md)

**SoTA**: `current`
- Basis: Nowack & Van Der Meer (2023) "Chronotype and Cognitive Performance"; Valdez (2023) "Circadian Rhythms in Cognition"; Falkenberg et al. (2025) "Synchrony Effects Meta-Analysis"
- Revision criterion: Would change if synchrony effect is shown to be negligible or if chronotype is shown to be malleable without cost
~~~

**Вердикт:** accept
**Обоснование:** Различение критично для практики PD.WP.014 (Распорядок дня) — объясняет, почему универсальные рекомендации «делай сложное утром» проваливаются для части людей. Эмпирические данные показывают 9–40% разницу в производительности. Хронотип — биологический фактор, игнорируемый в текущей версии Pack. SOTA-исследования последних 3 лет подтверждают synchrony effect.

---

## Кандидат #3

**Источник capture:** Различение: Cognitive offloading — экзоскелет vs протез
**Сырой текст:** «Bastani et al. (2024) показали: использование LLM снижает ментальное усилие, но ухудшает глубину научного мышления — "cognitive ease at a cost". Различение двух режимов: (1) Экзоскелет — инструмент усиливает собственное мышление (карта знаний, диаграмма, навигация по структурам). Мышление остаётся у человека, инструмент снимает нагрузку на рабочую память. (2) Протез — инструмент заменяет мышление (LLM генерирует ответ, человек принимает без проверки). Мышление делегируется, собственные схемы не формируются. Критерий: после использования инструмента — человек лучше понимает тему или нет? Экзоскелет → да. Протез → нет.»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию (D.138)

**Совместимость:**
- **Результат:** уточняет существующие понятия (PD.FORM.055 Computer-Human Analogy, PD.CHR.006 Technointegration, PD.ARCH.001 Transparent Box)
- **Проверено:** PD.FORM.055 (компьютерно-человеческая аналогия), PD.CHR.006 (Technointegration), PD.ARCH.001 (экзокортекс)
- **Конфликт:** нет — новое различение критично для проектирования IWE (Exoskeleton vs Prosthetic mode)

**Готовый текст (ready-to-commit):**

~~~markdown
## [D.138] Exoskeleton Mode vs. Prosthetic Mode (Cognitive Offloading) {#d138-exoskeleton-vs-prosthetic-mode}

**Definition**: Two modes of cognitive offloading to external systems. **Exoskeleton mode**: tool augments agent's own thinking (e.g., knowledge map, diagram, structured navigation). Agent retains thinking, tool reduces working memory load. **Prosthetic mode**: tool replaces agent's thinking (e.g., LLM generates answer, agent accepts without verification). Thinking is delegated; agent's own schemas do not form.

**Distinction Test** (after using tool):
- Did the agent understand the topic better? (Yes → exoskeleton mode)
- Did the agent get the answer without understanding? (Yes → prosthetic mode)

| Exoskeleton Mode | vs. | Prosthetic Mode |
|------------------|-----|----------------|
| Amplifies agent's thinking | | Replaces agent's thinking |
| Working memory offload | | Full delegation |
| Agent builds schemas | | Agent does not build schemas |
| Tool as scaffold | | Tool as crutch |
| Example: knowledge map, diagram | | Example: LLM answer without verification |

**Typical Confusion**: "AI helps me think" — true for exoskeleton mode (AI structures information), false for prosthetic mode (AI produces conclusion). Bastani et al. (2024): LLM use reduces mental effort but degrades scientific reasoning depth ("cognitive ease at a cost").

**Why It Matters**: IWE (Infinite Workspace Engine) must be designed as exoskeleton, not prosthetic. PD.ARCH.001 (Transparent Box) and PD.CHR.006 (Technointegration) assume tool augments, not replaces. Prosthetic mode atrophies thinking.

**Related Items**:
- Formalization: [PD.FORM.055](../02-domain-entities/formalizations/PD.FORM.055-computer-human-analogy.md)
- Characteristic: [PD.CHR.006](../02-domain-entities/characteristics/PD.CHR.006-technointegration.md)
- Architecture: [PD.ARCH.001](../02-domain-entities/architecture/PD.ARCH.001-transparent-box.md)

**SoTA**: `current`
- Basis: Bastani et al. (2024) "Generative AI Can Harm Learning"; Risko & Gilbert (2016) "Cognitive Offloading"
- Revision criterion: Would change if prosthetic mode is shown to produce equal or better schema formation than exoskeleton mode
~~~

**Вердикт:** accept
**Обоснование:** Критическое различение для архитектуры IWE. Pack содержит понятия экзокортекса (PD.ARCH.001) и техноинтеграции (PD.CHR.006), но не различает два режима offloading. Bastani et al. (2024) эмпирически показали: LLM-помощь снижает качество научного мышления — "cognitive ease at a cost". Это фундаментальный архитектурный принцип для проектирования IWE: платформа должна усиливать мышление (exoskeleton), а не заменять его (prosthetic). Без этого различения риск создать систему, которая атрофирует мышление пользователя.

---

## Кандидат #4

**Источник capture:** Различение: Cognitive uncertainty (Enke & Graeber, 2023)
**Сырой текст:** «Cognitive uncertainty (Enke & Graeber, 2023, NBER) — субъективно воспринимаемая неопределённость о том, какое действие оптимально. Это НЕ неопределённость о мире (что происходит?), а неопределённость о собственном мышлении (правильно ли я думаю?). При высокой сложности люди полностью игнорируют model uncertainty в действиях, хотя beliefs продолжают её отражать. Следствие для PD.STATE.008: ощущение "не знаю что делать" может быть не следствием незнания, а следствием cognitive uncertainty — мозг перегружен и не может выбрать из множества вариантов. Антидот: построение явной модели ситуации (что? кто? как связано?), которая снижает пространство интерпретаций.»
**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию (D.139)

**Совместимость:**
- **Результат:** уточняет существующие понятия (PD.STATE.008 Productive States Scale, PD.FORM.068 State-Dependent Task Allocation)
- **Проверено:** PD.STATE.008 (Шкала состояний 0–5), PD.FORM.026 (Attention Time Scales), PD.FORM.068 (State-Dependent Task Allocation)
- **Конфликт:** нет — новое различение объясняет механизм паралича при перегрузке вариантами

**Готовый текст (ready-to-commit):**

~~~markdown
## [D.139] World Uncertainty vs. Cognitive Uncertainty {#d139-world-vs-cognitive-uncertainty}

**Definition**: Two types of uncertainty. **World uncertainty**: lack of information about external reality ("What is happening?"). **Cognitive uncertainty**: lack of confidence in own mental model ("Am I thinking about this correctly?"). Enke & Graeber (2023, NBER) show: under high complexity, agents ignore model uncertainty in actions even when beliefs reflect it.

**Distinction Test**:
- Is the problem lack of data about the world? (Yes → world uncertainty)
- Is the problem inability to choose among multiple interpretations? (Yes → cognitive uncertainty)

| World Uncertainty | vs. | Cognitive Uncertainty |
|-------------------|-----|----------------------|
| Uncertainty about reality | | Uncertainty about own reasoning |
| "What is happening?" | | "Am I thinking correctly?" |
| Resolved by more data | | Resolved by explicit modeling |
| External problem | | Internal problem |

**Typical Confusion**: "I don't know what to do" interpreted as lack of knowledge (world uncertainty), when the real cause is cognitive overload — too many options, no clear model to choose (cognitive uncertainty).

**Why It Matters**: PD.STATE.008 (Productive States Scale) — states 0–2 often involve cognitive uncertainty, not world uncertainty. Antidote: build explicit model (what? who? how connected?) to reduce interpretation space. Related to PD.FORM.026 (Attention Time Scales) — cognitive uncertainty increases when agent loses sight of multiple scales.

**Related Items**:
- State: [PD.STATE.008](../02-domain-entities/states/PD.STATE.008-productive-states-scale.md)
- Formalization: [PD.FORM.026](../02-domain-entities/formalizations/PD.FORM.026-attention-time-scales.md)
- Formalization: [PD.FORM.068](../02-domain-entities/formalizations/PD.FORM.068-state-dependent-task-allocation.md)

**SoTA**: `current`
- Basis: Enke & Graeber (2023, NBER) "Cognitive Uncertainty"
- Revision criterion: Would change if cognitive uncertainty is shown to be indistinguishable from world uncertainty in mechanisms and interventions
~~~

**Вердикт:** accept
**Обоснование:** Различение восполняет пробел в понимании паралича состояний 0–2 (PD.STATE.008). Пользователь говорит «не знаю что делать» — диагноз неоднозначен: либо не хватает информации (world uncertainty), либо мозг перегружен вариантами (cognitive uncertainty). Enke & Graeber (2023) показали: cognitive uncertainty — отдельный механизм, требующий отдельного intervention (explicit modeling). Без этого различения терапия ошибочна: добавляем информацию, когда нужно структурировать существующую.

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
