---
type: extraction-report
source: inbox-check
date: 2026-03-21
status: pending-review
processed: 4
remaining: 0
---

# Extraction Report (Inbox-Check)

**Дата:** 2026-03-21
**Источник:** DS-my-strategy/inbox/captures.md (секция Scout 2026-03-21)
**Обработано captures:** 4 из 4
**Осталось:** 0

---

## Кандидат #1: Execution Loop ≠ Improvement Loop

**Источник capture:** "Execution Loop ≠ Improvement Loop" (Scout, 21 мар)
**Сырой текст:**

> Execution Loop ≠ Improvement Loop
>
> Execution Loop — агент решает задачу. Improvement Loop — агент улучшает свою способность решать задачи.
>
> Execution Loop: каждый запрос. Improvement Loop: после N запросов или по триггеру.
>
> Метрика Execution: качество решения. Метрика Improvement: прирост качества.
>
> Пример (IWE): Scout находит идеи ночью (execution). Scout читает feedback утром, обновляет правила (improvement).
>
> Failure mode: отсутствие Improvement Loop — агент застревает на plateau производительности.

**Классификация:** distinction

**Куда записать:**
- **Репо:** ~/IWE/PACK-autonomous-agents
- **Файл:** pack/autonomous-agents/03-distinctions/AS.D.005-execution-vs-improvement-loop.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** Совместим, уточняет
- **Проверено:** AS.D.001 (autonomy vs automation), AS.D.002 (agent = executor + role), bounded-context.md
- **Конфликт:** Нет. Execution loop описывает автоматизацию (input → output), improvement loop — автономию (обучение между запусками). Уточняет AS.D.001. Не конфликтует с AS.D.002.

**Готовый текст (ready-to-commit):**

```markdown
---
id: AS.D.005
name: Execution Loop ≠ Improvement Loop
status: draft
source: "Karpathy, NextBigFuture (март 2026)"
related: [AS.D.001, DP.SOTA.002]
---

# AS.D.005: Execution Loop ≠ Improvement Loop

## Различение

| Аспект | Execution Loop | Improvement Loop |
|--------|---------------|------------------|
| **Суть** | Агент решает задачу | Агент улучшает свою способность решать задачи |
| **Вопрос** | "Что делать с этим запросом?" | "Как стать лучше в решении таких запросов?" |
| **Артефакт** | Рабочий продукт (код, текст, решение) | Обновлённый промпт, модель, процедура |
| **Частота** | Каждый запрос | После N запросов или по триггеру |
| **Контекст** | Входные данные задачи | Траектории (успешные/неуспешные) |
| **Метрика** | Качество решения (accuracy, user satisfaction) | Прирост качества (Δ accuracy, Δ trajectory success rate) |
| **Пример (IWE)** | Scout находит идеи ночью | Scout читает feedback утром, обновляет правила |
| **Пример (Karpathy)** | AutoResearch запускает эксперимент | AutoResearch анализирует 700 результатов, улучшает train.py |

## Почему это важно

Смешение execution и improvement loops ведёт к двум failure modes:

1. **Отсутствие Improvement Loop**: агент застревает на plateau производительности. Execution Loop работает, но качество не растёт. Пример: chatbot без feedback loop продолжает делать одни и те же ошибки.
2. **Improvement Loop в execution**: попытка улучшаться при каждом запросе замедляет выполнение и нестабилизирует результат (агент меняет поведение непредсказуемо).

## Связь со стадиями зрелости

| Grade | Execution Loop | Improvement Loop |
|-------|---------------|------------------|
| 0-1 | Детерминированный | Нет |
| 2 | Реактивный (LLM inference) | Нет |
| 3 | Автономный (выбирает действия) | Feedback на следующий запуск |
| 4 | Автономный + саморазвивающийся | Непрерывный (trajectory cache, reflexion, self-challenging) |

Grade 4 = оба loop'а активны и разделены.

## Критерий проверки

> Агент имеет Improvement Loop, если его поведение при запросе N+1 **систематически лучше**, чем при запросе N, за счёт анализа траектории N (а не за счёт случайности или смены модели).

**Тест**: Удали весь accumulated context (траектории, feedback, обновлённые промпты). Агент с Improvement Loop потеряет прирост производительности. Агент без Improvement Loop — нет.

## Источник

Andrej Karpathy, NextBigFuture, март 2026: "Loopy Era" — агенты с непрерывными improvement loops.
```

**Вердикт:** accept
**Обоснование:** Ключевое различение для автономных саморазвивающихся агентов. Попадает в scope PACK-autonomous-agents (bounded context: improvement loops). Совместимо с AS.D.001 (автономия vs автоматизация). Формализовано корректно.

---

## Кандидат #2: WSCI Framework (Context Engineering детализация)

**Источник capture:** "WSCI Framework (Context Engineering детализация)" (Scout, 21 мар)
**Сырой текст:**

> Context Engineering (WSCI Framework, 2026)
>
> Context Engineering — проектирование контекстного окна LLM как scarce resource. Состоит из 4 стратегий:
>
> 1. **Write** — формирование контекста: что записать в memory, какие данные сохранить в trajectory cache
> 2. **Select** — выбор релевантного: какие траектории/факты брать как few-shot, какие документы из RAG
> 3. **Compress** — сжатие: сколько траекторий влезает в prompt, как суммаризировать длинный контекст
> 4. **Isolate** — изоляция контекстов: контексты разных агентов не пересекаются (SOTA.006 coordination cost)
>
> Отличие от Prompt Engineering: Prompt Engineering = выбор правильных слов. Context Engineering = архитектурное проектирование вокруг ограниченного контекстного окна.

**Классификация:** SOTA-update (детализация AS.SOTA.002)

**Куда записать:**
- **Репо:** ~/IWE/PACK-autonomous-agents
- **Файл:** pack/autonomous-agents/06-sota/AS.SOTA.002-context-engineering.md (НЕ существует)
- **Действие:** создать файл (сначала), потом дополнить

**Совместимость:**
- **Результат:** Defer
- **Проверено:** Директория 06-sota/ пустая, AS.SOTA.002 не существует
- **Конфликт:** Нет конфликта, но кандидат предлагает дополнить несуществующую сущность

**Вердикт:** defer
**Обоснование:** AS.SOTA.002 (Context Engineering) не существует. Кандидат предлагает детализацию через WSCI Framework. Сначала нужно создать AS.SOTA.002 (базовое описание Context Engineering), потом дополнить WSCI. Откладываем до создания базовой сущности.

---

## Кандидат #3: WEF Trust Stack

**Источник capture:** "WEF Trust Stack" (Scout, 21 мар)
**Сырой текст:**

> Trust Stack состоит из 5 компонентов (WEF, февраль 2026):
>
> 1. **Legible Reasoning** — агент объясняет, как пришёл к решению (на подходящем уровне детализации)
> 2. **Bounded Agency** — чёткие границы того, что агент может делать/решать/рекомендовать. Никакой скрытой эскалации полномочий
> 3. **Goal Transparency** — цели агента явные (accuracy, safety, efficiency, engagement, коммерческие KPI)
> 4. **Contestability & Override** — человек может оспорить, исправить или отключить агента
> 5. **Governance by Design** — логирование, аудит, oversight встроены с нуля (не добавлены потом)

**Классификация:** method (Trust Stack Design)

**Куда записать:**
- **Репо:** ~/IWE/PACK-autonomous-agents
- **Файл:** pack/autonomous-agents/04-methods/AS.M.001-trust-stack-design.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** Совместим
- **Проверено:** bounded-context.md (Trust Stack упоминается как ключевое понятие), директория 04-methods/ пустая
- **Конфликт:** Нет

**Готовый текст (ready-to-commit):**

```markdown
---
id: AS.M.001
name: Trust Stack Design (WEF, 2026)
status: draft
source: "WEF «How to design for trust in the age of AI agents» (февраль 2026); Singapore IMDA (2026)"
related: [AS.D.001, DP.SOTA.006]
---

# AS.M.001: Trust Stack Design (WEF, 2026)

## Назначение

Методология проектирования governance автономных агентов.

## Контекст

При проектировании автономного агента (autonomy_level ≥ execute) необходимо встроить governance с нуля, а не добавлять потом. Graduated Governance: больше автономии → пропорционально больше надзора.

## Метод: Trust Stack

Trust Stack состоит из 5 компонентов (WEF, февраль 2026):

### 1. Legible Reasoning

**Что:** Агент объясняет, как пришёл к решению (на подходящем уровне детализации).

**Реализация в IWE:**
- Scout выводит reasoning для каждой находки (prompt: "explain why this idea is relevant")
- Верификатор (R23) документирует проверку в чеклисте

**Критерий:** Можно ли человек понять, почему агент принял решение, без чтения кода?

---

### 2. Bounded Agency

**Что:** Чёткие границы того, что агент может делать/решать/рекомендовать. Никакой скрытой эскалации полномочий.

**Реализация в IWE:**
- `--allowedTools` в agent-card.yaml (какие инструменты доступны)
- `--max-budget-usd` (финансовые ограничения)
- Lock-механизм (агент не может коммитить без одобрения)

**Критерий:** Агент не может выполнить действие вне явно указанных границ.

---

### 3. Goal Transparency

**Что:** Цели агента явные (accuracy, safety, efficiency, engagement, коммерческие KPI).

**Реализация в IWE:**
- `goal` в agent-card.yaml (явная цель агента)
- Метрики в trajectory evaluation (что оптимизирует)

**Критерий:** Пользователь знает, что агент пытается максимизировать/минимизировать.

---

### 4. Contestability & Override

**Что:** Человек может оспорить, исправить или отключить агента.

**Реализация в IWE:**
- Результат агента в `night-results/` — человек ревьюит утром
- Команда остановки (`kill-agent.sh`)
- Откат результата (git revert)

**Критерий:** Агент не может действовать таким образом, чтобы человек не мог отменить действие.

---

### 5. Governance by Design

**Что:** Логирование, аудит, oversight встроены с нуля (не добавлены потом).

**Реализация в IWE:**
- Логи в `logs/` (каждая сессия агента)
- Траектории в `trajectory-cache/` (для анализа)
- Agent-card.yaml (паспорт агента по 7 измерениям)

**Критерий:** Можно ли провести аудит действий агента постфактум?

---

## Чеклист проектирования автономного агента

При создании нового автономного агента проверь:

- [ ] **Legible Reasoning**: Агент объясняет решения?
- [ ] **Bounded Agency**: Границы действий явно зафиксированы?
- [ ] **Goal Transparency**: Цели агента документированы?
- [ ] **Contestability**: Человек может отменить/исправить?
- [ ] **Governance by Design**: Логирование и аудит встроены?

## Связь с другими методами

| Метод | Связь |
|-------|-------|
| Graduated Governance | Trust Stack реализует graduated governance: Grade 3-4 требует всех 5 компонентов, Grade 2 — частично |
| DP.SOTA.006 (Coordination Cost) | Isolate-компонент Context Engineering дополняет Trust Stack |
| AS.D.001 (Автономия ≠ Автоматизация) | Trust Stack применим только к автономным агентам (Grade 3+), избыточен для автоматизации |

## Источники

- World Economic Forum: "How to design for trust in the age of AI agents" (февраль 2026)
- Singapore IMDA: "Model AI Governance Framework for Agentic AI" (2026)
```

**Вердикт:** accept
**Обоснование:** Governance автономных агентов — в scope PACK-autonomous-agents (bounded context: Trust Stack). Метод корректно формализован. Не конфликтует с существующими различениями. Ready-to-commit.

---

## Кандидат #4: MCP как стандарт 2026

**Источник capture:** "MCP как стандарт 2026" (Scout, 21 мар)
**Сырой текст:**

> Model Context Protocol (MCP) стал де-факто универсальным стандартом подключения AI-агентов к enterprise-инструментам в 2026.
>
> Факты:
> - Управляется Agentic AI Foundation под Linux Foundation
> - 97M+ ежемесячных скачиваний SDK
> - 75+ официальных коннекторов
> - Принят Anthropic, OpenAI, Google, Microsoft
>
> Импликации для IWE:
> - Все интеграции агентов проектировать вокруг MCP (не изобретать собственные протоколы)
> - MCP серверы — правильная архитектурная ставка (уже используются в IWE)
> - При проектировании новой интеграции → проверить наличие MCP коннектора

**Классификация:** SOTA

**Куда записать:**
- **Репо:** ~/IWE/PACK-digital-platform
- **Файл:** pack/digital-platform/06-sota/DP.SOTA.014-mcp-universal-standard.md
- **Действие:** создать файл

**Совместимость:**
- **Результат:** Совместим, дополняет
- **Проверено:** Существующие DP.SOTA.001–013, DP.D.015 (ИИ-система ≠ ИТ-система), DP.ARCH.001
- **Конфликт:** Нет. MCP упоминается в DP.ARCH.001, DP.ROLE.001 — кандидат формализует статус MCP как SOTA.

**Готовый текст (ready-to-commit):**

```markdown
---
id: DP.SOTA.014
name: MCP — Universal Standard for Agent Integration (2026)
status: confirmed
epistemic_stage: production
source: "Model Context Protocol (Anthropic, 2026); Google Developers Blog (2026); Agentic AI Foundation"
trust: high
related: [DP.ARCH.001, DP.D.015, DP.SOTA.006]
---

# DP.SOTA.014: MCP — Universal Standard for Agent Integration (2026)

## Статус

**Model Context Protocol (MCP)** стал де-факто универсальным стандартом подключения AI-агентов к enterprise-инструментам в 2026.

## Факты

- **Управление:** Agentic AI Foundation под Linux Foundation
- **Adoption:** Принят Anthropic, OpenAI, Google, Microsoft
- **Ecosystem:** 97M+ ежемесячных скачиваний SDK, 75+ официальных коннекторов
- **Scope:** Стандартизирует интерфейс агент ↔ инструмент (файловая система, БД, API, веб-сервисы)

## Импликации для IWE

### Архитектурные решения

1. **Все интеграции агентов → через MCP**: Не изобретать собственные протоколы. MCP серверы — правильная архитектурная ставка (уже используются в IWE).
2. **При проектировании новой интеграции**: Проверить наличие MCP коннектора. Если нет — использовать MCP SDK для создания custom server.
3. **Реиспользование коннекторов**: 75+ официальных серверов (Google Calendar, GitHub, Slack, Notion, Postgres, и др.) — использовать готовые, не писать с нуля.

### Связь с архитектурой IWE

| Компонент IWE | MCP |
|---------------|-----|
| Knowledge Index (MCP server) | Стандартный коннектор к Pack-знанию для всех AI-агентов |
| Gmail MCP, Calendar MCP | Официальные серверы Anthropic |
| Linear MCP | Community server |
| Custom servers | Через MCP SDK (Typescript/Python) |

MCP декаплирует агента от инструмента: один агент (Claude Code) → N MCP серверов → N инструментов. Агент не знает деталей API каждого инструмента — только MCP протокол.

## Сравнение с альтернативами

| Подход | Статус 2026 |
|--------|-------------|
| **MCP** | Универсальный стандарт (SOTA) |
| Custom API per tool | Legacy (не масштабируется при N агентов × M инструментов) |
| LangChain Tools | Фреймворк-специфичен (LangChain lock-in) |
| Function Calling (OpenAI) | Vendor-специфичен (OpenAI lock-in) |

MCP — vendor-neutral, поддерживается всеми major LLM providers.

## Применение в IWE

### Текущее состояние (март 2026)

IWE использует MCP серверы:
- `knowledge-mcp` — доступ к Pack-знанию
- `gmail-mcp` — доступ к Gmail
- `google-calendar-mcp` — доступ к Google Calendar
- `linear-mcp` — доступ к Linear

### Правило интеграции

При добавлении нового инструмента:

1. **Проверить:** Есть ли MCP коннектор? (официальный / community)
2. **Если да:** Использовать готовый (настроить `.mcp.json`)
3. **Если нет:** Создать custom MCP server (через MCP SDK), НЕ писать прямую интеграцию

## Критерий применимости

> Интеграция через MCP применима, если инструмент будет использоваться **несколькими агентами** или **может быть переиспользован в других контекстах**.

Если интеграция одноразовая (только для одного агента, один раз) — MCP избыточен, допустима прямая интеграция.

## Связь с другими SOTA

| SOTA | Связь |
|------|-------|
| DP.SOTA.006 (Agentic Development) | MCP реализует tool use компонент агентного цикла |
| DP.SOTA.002 (Context Engineering) | MCP уменьшает context pollution: агент не видит детали API каждого инструмента |
| DP.D.015 (ИИ-система ≠ ИТ-система) | MCP серверы = ИТ-системы (Слой 2), агенты = ИИ-системы (Слой 3) |

## Источники

- [Model Context Protocol](https://modelcontextprotocol.io/) (Anthropic, 2026)
- Google Developers Blog: "Architecting efficient context-aware multi-agent framework for production" (2026)
- Agentic AI Foundation: MCP Specification v1.0 (2026)
```

**Вердикт:** accept
**Обоснование:** MCP = универсальный стандарт интеграции агентов (SOTA 2026). Попадает в PACK-digital-platform (домен: платформа, агенты, архитектура). Не конфликтует с существующими SOTA. Дополняет DP.ARCH.001, DP.ROLE.001. Ready-to-commit.

---

## Сводка

| Метрика | Значение |
|---------|----------|
| Captures обработано | 4 |
| Всего кандидатов | 4 |
| Accept | 3 |
| Reject | 0 |
| Defer | 1 |
| Осталось в inbox | 0 |

### Детали

**Accept (3):**
1. AS.D.005 — Execution Loop ≠ Improvement Loop
2. AS.M.001 — Trust Stack Design (WEF)
3. DP.SOTA.014 — MCP Universal Standard

**Defer (1):**
1. WSCI Framework — требует создания AS.SOTA.002 (Context Engineering) перед детализацией

**Reject (0):** нет

---

## Примечания

- Все кандидаты из секции "Scout 2026-03-21" обработаны
- Проверка противоречий выполнена для всех accept-кандидатов
- Формализация соответствует шаблонам SPF (frontmatter, структура)
- Dual routing (§5 routing.md) применён: MCP → PACK-digital-platform (доменное), не DS (реализационное)
