---
type: extraction-report
source: inbox-check
date: 2026-03-19
status: pending-review
processed: 2
remaining: 0
---

# Extraction Report (Inbox-Check)

**Дата:** 2026-03-19
**Источник:** DS-my-strategy/inbox/captures.md
**Обработано captures:** 2 из 2 pending
**Осталось:** 0 (все pending обработаны)

---

## Кандидат #1

**Источник capture:** Различение: Cognitive uncertainty (Enke & Graeber, 2023)
**Сырой текст:**
> Cognitive uncertainty (Enke & Graeber, 2023, NBER) — субъективно воспринимаемая неопределённость о том, какое действие оптимально. Это НЕ неопределённость о мире (что происходит?), а неопределённость о собственном мышлении (правильно ли я думаю?). При высокой сложности люди полностью игнорируют model uncertainty в действиях, хотя beliefs продолжают её отражать. Следствие для PD.STATE.008: ощущение «не знаю что делать» может быть не следствием незнания, а следствием cognitive uncertainty — мозг перегружен и не может выбрать из множества вариантов. Антидот: построение явной модели ситуации (что? кто? как связано?), которая снижает пространство интерпретаций.

**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию D.136

**Совместимость:**
- **Результат:** совместим
- **Проверено:**
  - 01A-bounded-context.md — попадает в scope (состояния и характеристики созидателя, когнитивное функционирование)
  - 01B-distinctions.md — дубликата нет (есть D.024 Cognitive Resonance, но это другое понятие)
  - PD.STATE.008 (шкала состояний) — упомянут в capture, совместим
  - PD.FORM.026 (масштабы внимания) — совместим, дополняет
  - CLAUDE.md — противоречий нет
- **Конфликт:** нет

**Готовый текст (ready-to-commit):**

~~~markdown
## [D.136] Cognitive Uncertainty

**Definition**: **Cognitive uncertainty** is subjectively perceived uncertainty about which action is optimal — not uncertainty about the world ("what's happening?"), but uncertainty about one's own thinking ("am I thinking correctly?"). **Epistemic uncertainty** is uncertainty about facts or the state of the world.

**Distinction Test**:
- Is the confusion about external information or about internal decision-making? (External → epistemic; internal → cognitive)
- Does the agent have enough information but can't choose the right action? (Yes → cognitive uncertainty; No → epistemic uncertainty)

| Cognitive Uncertainty | vs. | Epistemic Uncertainty |
|----------------------|-----|----------------------|
| Uncertainty about thinking process | ≠ | Uncertainty about facts |
| "I don't know how to decide" | | "I don't know what's happening" |
| Internal confusion with many options | | Missing external information |
| Requires model-building or decision framework | | Requires information gathering |

**Typical Confusion**: Believing "I need more information" when the real problem is "I can't process what I already know" — confusing cognitive overload for data deficit

**Why It Matters**: At high complexity, agents completely ignore model uncertainty in actions, even though their beliefs continue to reflect it (Enke & Graeber, 2023). The feeling of "I don't know what to do" may not be a lack of knowledge but cognitive uncertainty — the brain is overloaded and cannot choose among many options. Antidote: build an explicit model of the situation (what? who? how connected?) that reduces the interpretation space.

**Related Items**:
- State: [PD.STATE.008](../02-domain-entities/states/PD.STATE.008-productive-states-scale.md) — feeling "stuck" at lower states may signal cognitive uncertainty
- Formalization: [PD.FORM.026](../02-domain-entities/formalizations/PD.FORM.026-attention-time-scales.md) — loss of scale is often cognitive uncertainty about priorities
- Distinction: [D.024](#d024-cognitive-resonance-vs-reading-comprehension) — related but different: resonance is productive collision, uncertainty is paralyzing overload

**SoTA**: `current`
- Basis: Enke & Graeber (2023, NBER w31200) "Cognitive Uncertainty"
- Revision criterion: Would change if cognitive vs. epistemic uncertainty is shown to be the same mechanism in neuroscience
~~~

**Вердикт:** accept
**Обоснование:**
1. Кандидат проходит bounded context test (PD: состояния и характеристики созидателя)
2. Дубликата нет — D.024 (Cognitive Resonance) другое понятие
3. Связь с существующими сущностями обоснована (PD.STATE.008, PD.FORM.026)
4. Соответствует формату Pack (definition, test, table, confusion, why it matters, related, SoTA)
5. Источник SOTA — проверяемое исследование (NBER w31200, 2023)
6. Различение не попадает в downstream (не дидактика, не программа)
7. Не похож на паттерны из feedback-log.md
8. ID D.136 — следующий после D.135 (проверено)

---

## Кандидат #2

**Источник capture:** Нет ленивых людей — РП как дофамин
**Сырой текст:**
> «Нет ленивых, любой хочет делать РП, если получается. И отказаться от дела, если оно идет очень сложно. Это как наркотик. Взять из моего поста в телеграм.»
>
> Интерпретация:
> - «Лень» — не характеристика человека, а симптом неправильной настройки системы петель обратной связи
> - Выполнение РП (когда получается) активирует дофаминовую систему → человек хочет продолжать
> - Сложность без видимого результата → фрустрация → отказ (не лень, а рациональная реакция на отсутствие подкрепления)
> - Паттерн: настроить систему так, чтобы РП были «выполняемыми» (правильно декомпозированы, с критериями, с видимым прогрессом) → мотивация естественна

**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-personal
- **Файл:** pack/personal-development/01-domain-contract/01B-distinctions.md
- **Действие:** добавить секцию D.137

**Совместимость:**
- **Результат:** совместим, дополняет существующие
- **Проверено:**
  - 01A-bounded-context.md — попадает в scope (характеристики и состояния созидателя)
  - D.086 (Psychological vs. Engineering Language) — связано, но не дубликат (D.086 про язык описания, D.137 про суть феномена)
  - D.065 (Motivation vs. Intention) — связано через мотивацию, но не дубликат
  - D.005 (Work Product vs. Description) — связано через РП, но не дубликат
  - CLAUDE.md — противоречий нет
- **Конфликт:** нет

**Готовый текст (ready-to-commit):**

~~~markdown
## [D.137] Laziness as Trait vs. Laziness as System Signal

**Definition**: **Laziness as trait** (лень как свойство) is the belief that some people are inherently lazy — characterized by unwillingness to work. **Laziness as system signal** (лень как сигнал системы) is the understanding that "laziness" is not a character attribute, but a symptom of a poorly configured feedback loop system.

**Distinction Test**:
- Does the "lazy" person complete work products when they are achievable and provide visible results? (Yes → system signal; No → need more diagnosis)
- Does the refusal to work occur when tasks are ill-defined, without criteria, or lack visible progress? (Yes → system signal; trait explanation doesn't hold)

| Laziness as Trait | vs. | Laziness as System Signal |
|------------------|-----|--------------------------|
| Character attribute | ≠ | Symptom of feedback loop failure |
| "This person is lazy" | | "The task decomposition is wrong" |
| Blame-oriented | | System-oriented |
| Unchangeable | | Fixable through engineering |

**Typical Confusion**: "I'm lazy" — attributing lack of action to personal character when the real problem is missing task decomposition or absence of visible intermediate results

**Why It Matters**: No one is inherently lazy. Anyone wants to create work products if they can succeed. And anyone will refuse work if it's too difficult without visible results. Completing work products (when achievable) activates the dopamine system → the agent wants to continue. Complexity without visible results → frustration → withdrawal (not laziness, but a rational response to absence of reinforcement). Pattern: configure the system so that work products are "achievable" (properly decomposed, with criteria, with visible progress) → motivation emerges naturally.

**Related Items**:
- Distinction: [D.086](#d086-psychological-language-vs-engineering-language) — related: "I'm lazy" is psychological language; "I lack task decomposition" is engineering language
- Distinction: [D.005](#d005-work-product-vs-description) — work product clarity is critical for dopamine loop
- Distinction: [D.065](#d065-motivation-vs-intention) — motivation depends on seeing achievable results
- Formalization: [PD.FORM.048](../02-domain-entities/formalizations/PD.FORM.048-sustainable-productivity-loop.md) — sustainable productivity requires Result→Desire loop

**SoTA**: `hypothesis`
- Basis: Neuroscience of dopamine reward prediction (Schultz et al., 1997), observed pattern in personal development practice
- Revision criterion: Would change if "laziness" is shown to exist as a stable personality trait independent of task structure and feedback quality
~~~

**Вердикт:** accept
**Обоснование:**
1. Кандидат проходит bounded context test (PD: характеристики и состояния созидателя)
2. Дубликата нет — D.086 про язык описания, D.137 про суть феномена
3. Связь с существующими сущностями обоснована (D.086, D.005, D.065, PD.FORM.048)
4. Соответствует формату Pack (definition, test, table, confusion, why it matters, related, SoTA)
5. Источник SoTA — нейробиология дофамина (Schultz et al., 1997) + наблюдаемый паттерн
6. Различение не попадает в downstream (не дидактика, не программа)
7. Не похож на паттерны из feedback-log.md
8. ID D.137 — следующий после D.136

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
