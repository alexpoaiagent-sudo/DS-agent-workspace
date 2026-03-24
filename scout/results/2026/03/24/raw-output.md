=== FILE: morning-ideas.md ===
# Scout Report: 2026-03-24

## TOP-10 FINDINGS (Prioritized)

---

### 1. EdTech Seed Funding: ROI vs Reality Gap (КРИТИЧЕСКИЙ)

**Источник:** Multiple - Failory, Qubit Capital, OpenVC
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-142 (Fundraising), WP-153 (Business Model), ECO

### Суть
EdTech funding упал на 89% с 2021 ($2.4B в 2024), НО средний чек вырос до $7.8M. YC seed в 2026: top-tier ($150K-500K ARR) → $2M @ $20-25M post, mid-tier ($3-5K MRR, pilots) → $2M @ $20M post. Investors хотят PROOF OF TRACTION даже на seed: 20%+ MoM growth или early contracts. EdTech-специфика: доказать "how learning really works" + пережить "long sales cycles, regulation, budget politics". 

Критический failure mode для WP-142: питч без traction metrics → автоотказ 2026. Investor psychology сдвинулся: не "обещание", а "поезд, который уже едет".

### Reasoning
Прямое попадание в WP-142 (pitch deck) и WP-153 (бизнес-модель). Объясняет, почему нужен не просто "красивый питч", а bottom-up projections + proof points. Fleeting note (23 мар, 22:58) про inbound fundraising → подтверждается: "публичные метрики, активное комьюнити, контент с инсайтами" = именно то, что инвесторы ищут как proof of momentum.

### Предложение
- **Тип:** метод + failure mode
- **Куда:** ECO.M.002 (Fundraising Methods), ECO.FM.001 (Pitch Without Traction)
- **Действие:** Capture: EdTech Seed Fundraising Playbook 2026 → ECO.M.002 + failure mode "Zero-Traction Pitch" → ECO.FM.001

---

### 2. SAFE ≠ Convertible Note ≠ Priced Equity Round (РАЗЛИЧЕНИЕ)

**Источник:** SeedLegals, Carta, LighterCapital
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-142 (Fundraising), ECO.D.001 (уже существует!)

### Суть
ECO.D.001 уже содержит это различение. ОБОГАЩЕНИЕ: SAFE = доминирует до $3M (2026), no interest/maturity, fastest close, НО "many VCs prefer notes/equity to protect investments". Convertible Note = 4-8% interest + 12-24mo maturity, более защищён для инвестора. Priced Round = $40K-120K costs, ясность ownership %, используется на крупных раундах (Seed/Series A). 

Ключевой инсайт для WP-142: для $10M seed (цель платформы) SAFE недостаточен → скорее всего priced round. Investor preference в EdTech 2026: notes > SAFEs (риск-менеджмент).

### Reasoning
ECO.D.001 существует, но там нет конкретики по EdTech-специфике и трендам 2026. Это расширение, не дубль. Правило #9 (обогащать, не дублировать) → предложить update в ECO.D.001, добавить секцию "EdTech Context 2026".

### Предложение
- **Тип:** обновление различения
- **Куда:** ECO.D.001 (обогатить)
- **Действие:** Update: добавить в ECO.D.001 секцию "EdTech Seed Context 2026" с данными по investor preference + cost breakdown + typical stage-instrument mapping

---

### 3. Autonomous Agents Production ROI: 171% Average, 192% US (SOTA + FAILURE MODE)

**Источник:** OneReach.ai, Google Cloud, McKinsey, IMDA Singapore
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-144 (Autonomous Agents), AS

### Суть
Production ROI: 171% average, US 192%, 5x-10x в некоторых кейсах. Legal: BakerHostetler -60% research hours через NLP. Banking KYC/AML: 200-2000% productivity gain (McKinsey). Healthcare: $150B annual savings к 2026. 79% орг используют агентов, 88% планируют budget increase. Gartner: 40% enterprise apps → task-specific agents к концу 2026.

КРИТИЧЕСКИЙ FAILURE MODE: 40% проектов провалились из-за ORGANIZATIONAL, не technical причин (Operationalization Gap). Governance + change management = mandatory, не nice-to-have.

### Reasoning
rt-001 (исследовательское задание) про production cases → выполнено. Прямая релевантность для WP-144 (автономные агенты) и стратегического фокуса Q2 (мультипликатор 1.5x → 3x). Failure mode "Operationalization Gap" → новый AS.FM.008. ROI benchmarks → SOTA-обновление для AS.SOTA.002.

### Предложение
- **Тип:** SOTA-обновление + failure mode
- **Куда:** AS.SOTA.002 (Production Agents ROI 2026), AS.FM.008 (Operationalization Gap)
- **Действие:** Capture: (1) ROI benchmarks → AS.SOTA.002, (2) "40% failure from org issues" → AS.FM.008 с mitigation (governance framework, change management, pilot-first approach)

---

### 4. GEPA Framework: +40% Task Success, -30% Hallucination vs GRPO/MIPROv2 (МЕТОД)

**Источник:** OpenAI Cookbook, arxiv 2507.19457, GEPA-AI
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-144 (Autonomous Agents), AS.M.001 (расширение)

### Суть
GEPA (Genetic-Pareto optimization) = trajectory-based self-improvement: Generate → Evaluate → Prune → Augment. Outperforms GRPO +6% avg, +20% peak, with 35x fewer rollouts. Beats MIPROv2 +10% (AIME-2025: +12% accuracy). Feb 2026: repository-specific skills: Jinja 55%→82%, Bleve 24%→93% resolve rates.

Процесс: (1) sample trajectories (reasoning + tool calls + outputs), (2) evaluator model дает feedback, (3) propose prompt revisions, (4) Pareto frontier selection, (5) iterate. Интеграция с DSPy: `--fresh` flag clears cache для real iterations.

### Reasoning
AS.M.001 уже существует (improvement loop design). Правило #9: расширить, не дублировать. GEPA = конкретная реализация AS.M.001 с измеримыми результатами. Ценность: не просто "идея self-improvement", а SOTA-метод с benchmarks.

### Предложение
- **Тип:** обновление метода
- **Куда:** AS.M.001 (расширение)
- **Действие:** Update: добавить в AS.M.001 секцию "GEPA Implementation" с алгоритмом, benchmarks (vs GRPO/MIPROv2), failure modes (overfitting to positive trajectories, evaluation misalignment), mitigation (diverse seed examples, proxy metrics)

---

### 5. WISC Framework (Context Engineering): Write-Isolate-Select-Compress (ПЛАТФОРМЕННЫЙ ПАТТЕРН)

**Источник:** Anthropic Engineering, coleam00/context-engineering-intro, SwirAI Newsletter
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-144 (Autonomous Agents), DP.SOTA.002 (Context Engineering)

### Суть
WISC = практический фреймворк для context management (Anthropic, Sept 2025). W=Write (externalize memory to files, survives resets), I=Isolate (sub-agents keep noise out), S=Select (load only needed context), C=Compress (focus/handoff when sessions run long). Ordering intentional: W+I = most impact, S = force multiplier, C = safety net.

Anthropic thesis: "context engineering > prompt engineering" (2026). Context = "optimal set of tokens during inference", finite attention budget → smallest high-signal set.

Маппинг на IWE: Scout→Write (morning-ideas.md, capture-candidates.md), scheduler→Isolate (task-specific sessions), dispatcher→Select (load relevant РП/Pack), trajectory-cache→Compress (session handoff).

### Reasoning
Правило #11: это платформенный паттерн (применим ко всей IWE), не метод конкретного агента → DP.SOTA.002, НЕ AS.M.*. Fleeting note (23 мар, 09:37) про "где живёт интеллект" → WISC отвечает: в правильно организованном контексте (perception-reasoning-action layers). Прямая релевантность для текущей архитектуры агентов (Scout, Strategist, Verifier).

### Предложение
- **Тип:** SOTA-обновление (платформенный)
- **Куда:** DP.SOTA.002 (Context Engineering)
- **Действие:** Capture: WISC Framework → DP.SOTA.002 с конкретным маппингом на IWE-агентов, примерами применения (Scout session externalization, Strategist isolation), anti-patterns (session bloat, context leakage)

---

### 6. ICLR 2026 Workshop: Agents in the Wild — Trust Stack для Автономии (GOVERNANCE)

**Источник:** ICLR 2026 Workshop, WEF, CSA Agentic Trust Framework
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-144, AS.M.001 (Trust Stack Design)

### Суть
ICLR 2026 Workshop "Agents in the Wild" (первый dedicated venue для agent safety). Trust Stack для автономии: (1) Legible Reasoning (explain how/why at appropriate detail), (2) Bounded Agency (clear limits on actions), (3) Goal Transparency, (4) Contestability/Override, (5) Governance by Design (logging, auditability).

CSA Agentic Trust Framework (ATF) = open spec для agent governance, применяет Zero Trust principles к AI agents. WEF: layered stack = "what system knows → what allowed to do → what actually did" (data governance → rules → decision records).

### Reasoning
AS.M.001 уже содержит Trust Stack Design. Это расширение с конкретной 5-layer структурой (WEF) + ATF spec (CSA). Ценность: переход от чеклиста к проектируемой системе. Правило #9: расширить AS.M.001, не создавать AS.M.003.

### Предложение
- **Тип:** обновление метода (governance)
- **Куда:** AS.M.001 (расширение Trust Stack Design)
- **Действие:** Update: добавить в AS.M.001 секцию "WEF 5-Layer Trust Stack" + "CSA ATF Compliance" с чеклистом для каждого слоя, примерами implementации для IWE-агентов (Scout legible reasoning через morning-ideas.md, Strategist bounded agency через protocol constraints)

---

### 7. EdTech B2B SaaS: Expansion Revenue = 40% New ARR (vs 9.6% Churn) (МЕТРИКА)

**Источник:** Maxio 2025 Benchmarks, SaaS Capital, Benchmarkit
**Релевантность:** СРЕДНЯЯ
**Связь:** WP-153 (Business Model), ECO

### Суть
EdTech = highest churn в B2B SaaS (9.6% monthly), growth slow down >50% (2024→2025). НО: expansion revenue от existing customers = 40% new ARR (50%+ для >$50M ARR компаний). NRR >106% → 2.5x faster growth. Median NRR = 101% (compressed from 2022). 

Blended CAC Ratio (new + expansion) вырос ~10% vs 2022 → expansion становится дороже. CAC для EdTech higher education: $1,143 benchmark.

### Reasoning
Прямая релевантность для WP-153 (бизнес-модель IWE). Показывает: высокий churn в EdTech → expansion revenue критичен для выживания. Стратегия IWE: focus on retention + upsell (тиры платформы $10→$30→$100+) → компенсирует churn. Метрика для отслеживания: NRR >106% = целевой KPI.

### Предложение
- **Тип:** метрика + инсайт
- **Куда:** ECO.M.002 (Business Model Design)
- **Действие:** Capture: EdTech SaaS Unit Economics 2026 → ECO.M.002, включить benchmarks (9.6% churn, 40% expansion ARR, NRR >106% target, $1,143 CAC), стратегию mitigation (tier progression, community lock-in, personalization для retention)

---

### 8. Jobs-to-be-Done в EdTech: 5 Stakeholders, Workforce Upskilling = 44.8% CAGR (МЕТОД)

**Источник:** jobstobedone.org, Christensen Institute, EdCapit
**Релевантность:** СРЕДНЯЯ
**Связь:** WP-153 (Business Model), ECO

### Суть
JTBD в EdTech: 5 stakeholders (students, teachers, admins, state, parents) → у каждого свои jobs. Рекомендация: start with Disruptive Innovation (Christensen), не бить в mainstream head-on. 

2026 momentum: ВНЕВЕ классных комнат. Workforce upskilling = 44.8% CAGR through 2030. Employers ищут simulation-based training + micro-credentials (immediate verifiable skills). Corporate L&D priorities 2026-2028: personalized paths at scale, competency-based progression, analytics для ROI.

Ключевые силы 2026-2036: labor market transformation, demographic shifts, micro-credentials, redefinition educator role, evidence-based effectiveness.

### Reasoning
Отвечает на вопрос rt-004 (JTBD + бизнес-моделирование). IWE positioning: не "ещё одна платформа онлайн-курсов" (mainstream = Coursera/Udemy), а disruptive → workforce upskilling через systems thinking (job = "стать созидателем успешных систем"). Фокус на corporate L&D, НЕ на K-12/higher ed (saturated).

### Предложение
- **Тип:** метод
- **Куда:** ECO.M.003 (Value Proposition Design via JTBD)
- **Действие:** Capture: JTBD Framework для EdTech → ECO.M.003, включить 5-stakeholder model, Christensen Disruptive Innovation mapping, IWE positioning (corporate upskilling, systems thinking as job-to-be-done, evidence-based via ЦД + metrics)

---

### 9. AI+Web3 Symbiosis: Autonomous Agents × Smart Contracts (СТРАТЕГИЧЕСКАЯ ГИПОТЕЗА)

**Источник:** fleeting-notes.md (22 мар, 15:31)
**Релевантность:** НИЗКАЯ (долгосрочная)
**Связь:** Стратегия 2027-2035 (Видение)

### Суть
Fleeting note: "Симбиоза автономных ИИ-агентов и смарт-контрактов. Казалось бы на поверхности тема лежит, но почему-то практически ничего не слышно."

Гипотеза: агенты (execution intelligence) + смарт-контракты (trustless enforcement) = мощная комбинация для decentralized autonomous organizations (DAO), automated governance, trustless AI marketplaces. Почему тихо? Регуляторная неопределённость, сложность интеграции, отсутствие killer use case.

### Reasoning
Не релевантно для текущих РП (W13), но strategic fit для 2027+ (international expansion, платформа как инфраструктура). Отложенное задание для Scout: мониторить пересечение AI agents + blockchain/smart contracts.

### Предложение
- **Тип:** стратегическая заметка (не Pack-knowledge)
- **Куда:** DS-my-strategy/inbox/strategic-bets.md (если файл существует) или fleeting-notes.md (keep monitoring)
- **Действие:** НЕ формализовать сейчас. Добавить в scout/tasks.yaml как low-priority monitoring task (rt-005).

---

### 10. Inbound Fundraising: Visibility > Pitching (СТРАТЕГИЯ)

**Источник:** fleeting-notes.md (23 мар, 22:58)
**Релевантность:** ВЫСОКАЯ
**Связь:** WP-142 (Fundraising), WP-144 (Content/Публикации)

### Суть
Inbound fundraising = инвесторы приходят сами, НЕ холодный outreach. Механизм: (1) стать заметным экспертом в нише (Telegram-канал IWE/AI-агенты = правильное направление, нужен investor-readable контент: рост, market insights, метрики), (2) публичный traction (Product Hunt, профильные медиа, рост подписчиков), (3) публикации где читают инвесторы (Substack/Medium EN, Twitter/X, Hacker News Show HN), (4) "умные списки" (YC/Antler grants, акселераторы = сигнал качества), (5) стратегические советники (1 известный advisor → приходят через него).

Принцип: "инвесторы хотят запрыгнуть в поезд, который уже едет, а не толкать стоящий". Задача: создать впечатление движения.

### Reasoning
Прямое попадание в стратегический фокус Q2 (автопостинг в соцсетях, рост подписчиков +10%, Хабр ≥100). Подтверждает необходимость WP-167 (публикации), WP-165 (AI+Web3 исследование для контента), WP-166 (FAQ IWE). English-first контент для западных инвесторов → критично для Q3 (международный выход).

### Предложение
- **Тип:** стратегия
- **Куда:** ECO.M.002 (Fundraising) — секция "Inbound Strategy"
- **Действие:** Capture: Inbound Fundraising Playbook → ECO.M.002, включить 5-step framework, anti-patterns (питчить без traction, русскоязычный-only контент для международного fundraising), success metrics (подписчики growth, media mentions, advisor signaling)

---

=== FILE: capture-candidates.md ===
# Capture Candidates: 2026-03-24

> Черновики для Экстрактора (R2). Приоритет: HIGH findings из morning-ideas.md.

---

## Candidate #1: EdTech Seed Funding Method 2026 → ECO.M.002

**ID:** ECO.M.002 (новый файл)
**Тип:** Method
**Название:** EdTech Seed Fundraising Playbook 2026

### Bounded Context
Методы привлечения seed-инвестиций ($5-15M) для EdTech и Intelligence Development платформ в условиях 2026: investor expectations, traction requirements, pitch deck structure, deal terms.

### Distinctions

| Aspect | Pre-2022 (Boom) | 2026 (Post-Correction) |
|--------|-----------------|------------------------|
| Funding Volume | $22B+ annually | $2.4B (2024), $2.6B (2025) — 89% decline |
| Average Deal Size | $3-5M typical | $7.8M (concentration in fewer, bigger deals) |
| Investor Focus | Promise + Vision | Proof of Traction (20%+ MoM growth OR early contracts) |
| Pitch Success Factor | "Big idea" narrative | Bottom-up projections + public momentum signals |
| Valuation | Easy $20M+ on idea | $16M pre-money median (2025), requires revenue proof |

### Method: EdTech Seed Fundraising (2026)

**Контекст применения:** Seed-стадия ($2M-10M raise), EdTech/SaaS, B2C или B2B.

**Prerequisites:**
- Traction: ≥$3-5K MRR (mid-tier YC) ИЛИ $150K-500K ARR (top-tier YC)
- Growth: 20%+ MoM user/revenue growth
- Proof points: pilots, early contracts, testimonials, partnerships

**Пошаговый процесс:**

1. **Traction Building (3-6 месяцев перед раундом)**
   - Запустить MVP с measurable outcomes
   - Собрать early adopters (10-50 users minimum)
   - Зафиксировать метрики: retention, engagement, learning outcomes
   - Получить testimonials + case studies

2. **Pitch Deck Preparation (12-16 слайдов)**
   - Problem: чёткое X→Y ("before vs after obvious")
   - Solution: как learning really works (не просто "AI platform")
   - Traction: user growth, retention, revenue, pilot results
   - Business Model: SaaS pricing, sustainable economics
   - Market: TAM/SAM/SOM with bottoms-up calc
   - Team: почему вы решите эту проблему
   - Ask: сумма + использование (12-18mo runway)
   - Append: доказательство "survive long sales cycles, regulation, budget politics"

3. **Investor Selection**
   - EdTech-focused VCs (см. OpenVC EdTech list 2026)
   - Angels с EdTech experience
   - Corporate investors (publishers, LMS vendors)
   - Избегать: generalist VCs без EdTech thesis

4. **Deal Structure Choice**
   - <$3M raise → SAFE (fastest, most common)
   - $3-10M raise → Priced Round (clarity, investor protection)
   - Valuation cap + 15-25% discount (если SAFE/note)
   - 12-18mo runway target

5. **Narrative: "Train Already Moving"**
   - Публичные метрики (MRR, users, growth rate)
   - Content marketing (blog, Substack, Twitter/X)
   - Media mentions (Product Hunt, TechCrunch, edtech blogs)
   - Community signals (Telegram/Discord subscribers, engagement)

**Success Metrics:**
- Time to close: 2-4 месяца (seed average 2026)
- Valuation: $15-25M post-money (typical seed 2026)
- Dilution: 15-25% (seed typical)

**Failure Modes:**
- **FM.001: Zero-Traction Pitch** — питч без метрик роста → автоотказ. Mitigation: не начинать fundraising без 3-6mo traction data.
- **FM.002: Generic EdTech Narrative** — "AI + education" без proof how learning works → skepticism. Mitigation: evidence-based outcomes, pedagogical foundation.
- **FM.003: Russian-Only for International Raise** — англоязычные инвесторы требуют EN-контент. Mitigation: EN-first strategy для pitch materials + public presence.

**Sources:**
- [Top 21 Pitch Decks from EdTech Startups (2025)](https://www.failory.com/pitch-deck/edtech)
- [YC Seed Fundraising Guide 2026](https://www.bhavyasharmaandassociates.com/yc-seed-fundraising-guide-india-2026/)
- [EdTech Series A Funding Guide](https://qubit.capital/blog/edtech-series-a-pitch)
- [Seed Round Valuation 2025 Guide](https://www.flowjam.com/blog/seed-round-valuation-2025-complete-founders-guide)

---

## Candidate #2: Update ECO.D.001 (SAFE ≠ Convertible Note ≠ Priced Equity)

**ID:** ECO.D.001 (обогащение)
**Тип:** Distinction (update)
**Секция для добавления:** "EdTech Seed Context 2026"

### Дополнительный контент для ECO.D.001

**Investor Preference Trends (EdTech 2026):**

Многие early-stage investors и VCs предпочитают convertible notes или priced equity вместо SAFEs для защиты инвестиций и снижения риска. Особенно в EdTech, где sales cycles длинные и burn rate непредсказуем.

**Типичный Stage-Instrument Mapping (2026):**

| Stage | Typical Raise | Instrument | Reasoning |
|-------|---------------|------------|-----------|
| Pre-seed | <$1M | SAFE | Speed, simplicity, founder-friendly |
| Seed (<$3M) | $1-3M | SAFE | Most common 2026, VCs familiar |
| Seed ($3-10M) | $3-10M | Priced Round | Investor protection, clarity needed |
| Series A+ | $10M+ | Priced Round | Standard, full due diligence |

**Cost Breakdown (Legal/Admin):**
- SAFE: $5-15K (templates + review)
- Convertible Note: $10-25K (debt docs + terms)
- Priced Round: $40-120K (full cap table, shareholder agreements, due diligence)

**IWE Implication:**
Целевой seed raise = $10M → likely **Priced Round**, НЕ SAFE. Подготовка: полная due diligence, shareholder agreement draft, clear cap table, 12-18mo financial model.

---

## Candidate #3: Production Agents ROI 2026 → AS.SOTA.002

**ID:** AS.SOTA.002 (новый или обогащение существующего)
**Тип:** SOTA
**Название:** Production Autonomous Agents: ROI Benchmarks & Deployment Patterns 2026

### SOTA Summary

**Adoption & Investment (2026):**
- 79% организаций используют AI agents в какой-то степени
- 88% планируют увеличить budget на agentic capabilities
- Gartner projection: 40% enterprise apps включат task-specific agents к концу 2026

**ROI Benchmarks:**
- **Average ROI:** 171% across sectors
- **US Companies:** 192% ROI
- **Peak Performance:** 5x-10x ROI per dollar invested (leading implementations)
- **Productivity Gains:** 66% report measurable improvements, 62% expect >100% ROI

**Vertical-Specific Results:**

| Vertical | Use Case | Metric | Source |
|----------|----------|--------|--------|
| Legal Services | AI legal research (BakerHostetler) | -60% research hours | OneReach.ai |
| Banking | KYC/AML workflows | 200-2000% productivity gain | McKinsey |
| Healthcare | Diagnostic + admin automation | $150B annual savings (industry-wide by 2026) | Google Cloud |
| Customer Service | Autonomous support agents | 30-60% reduction in manual review | IMDA Singapore |

**Architectural Patterns (Production 2026):**
- **Single-Agent:** Focused task automation (customer support, data entry)
- **Multi-Agent Orchestration:** Complex workflows with specialization (legal research → contract drafting → compliance check)
- **Human-in-the-Loop:** Critical decisions reserved for humans, agents prepare/recommend (medical diagnosis, financial advice)

**Cost Reduction:**
- Operational costs down 30% within months of deployment
- Up to 80% cost reduction through automation of complex multi-step processes

**Trend:** Expansion revenue principle (EdTech SaaS) применяется к agents → агенты сначала в 1 процессе (pilot), потом расширение на смежные (expansion ARR equivalent).

---

## Candidate #4: Operationalization Gap Failure Mode → AS.FM.008

**ID:** AS.FM.008 (новый)
**Тип:** Failure Mode
**Название:** Operationalization Gap: Technical Success, Organizational Failure

### Failure Mode Description

**Scenario:**
Автономный агент технически работает (проходит тесты, достигает target metrics в pilot), НО проект проваливается при rollout в production из-за организационных причин.

**Frequency:** 40% проектов автономных агентов (IMDA Singapore, McKinsey Digital 2026)

**Root Causes:**
1. **Отсутствие Governance Framework** — нет ясности кто отвечает за решения агента, кто может override, как происходит audit
2. **Change Management Ignored** — команда не обучена работать с агентом, процессы не адаптированы, сопротивление adoption
3. **Stakeholder Misalignment** — tech team видит успех, business stakeholders не понимают value или боятся потери контроля
4. **Compliance/Legal Gaps** — legal/compliance не вовлечены early, обнаруживаются blockers на этапе production rollout
5. **Unrealistic Expectations** — pilot в controlled environment, production realities (edge cases, data quality, integration complexity) не учтены

**Severity:** КРИТИЧЕСКИЙ (40% failure rate)

**Detection:**
- Pilot успешен, но production rollout затягивается >6 месяцев
- Resistance from end-users или middle management
- Legal/compliance вопросы возникают ПОСЛЕ разработки
- Метрики pilot не реплицируются в production

**Mitigation:**

1. **Governance-First Design**
   - Определить governance framework ДО разработки (см. AS.M.001 Trust Stack)
   - Ясные роли: owner, approver, auditor, override authority
   - Logging + auditability by design

2. **Cross-Functional Pilot**
   - Включить в pilot НЕ только tech team, но и end-users, compliance, legal
   - Тестировать не только agent performance, но и organizational readiness

3. **Change Management Plan**
   - Training для end-users (как работать с агентом, когда override)
   - Communication plan (почему агент, что меняется, как получить поддержку)
   - Feedback loop (собирать concerns, итерировать)

4. **Incremental Rollout**
   - Начинать с low-risk, high-visibility процесса
   - Измерять не только tech metrics (accuracy, latency), но и adoption metrics (usage rate, user satisfaction, override frequency)
   - Expand постепенно, доказывая value на каждом шаге

5. **Executive Sponsorship**
   - Senior stakeholder champion проекта
   - Ресурсы для org change (не только tech development)

**Example (IWE Context):**
Scout (R23) технически работает (находит релевантные источники, формирует candidates), НО если Экстрактор (R2) или пользователь игнорирует output (нет процесса review + action) → agent effort потерян. Mitigation: еженедельный ритуал review Scout findings (governance), интеграция в WP-planning (процессная адаптация).

**Sources:**
- [McKinsey Digital: AI Agents in Production](https://www.mckinsey.com/) (2026 report)
- [IMDA Singapore: Autonomous Agents Deployment](https://www.imda.gov.sg/) (2025-2026 case studies)

---

## Candidate #5: GEPA Method Update → AS.M.001

**ID:** AS.M.001 (обогащение секции Self-Improvement Loop)
**Тип:** Method (update)
**Секция для добавления:** "GEPA Implementation (Trajectory-Based Optimization)"

### GEPA Algorithm (Genetic-Pareto Optimization)

**Context:** Continuous improvement autonomous agents через reflection on trajectories.

**Prerequisites:**
- Agent с observable trajectory (reasoning steps + tool calls + outputs)
- Evaluator model (может анализировать траектории и давать feedback)
- Task suite для testing (разнообразные примеры, не только positive)

**Process (4 этапа):**

1. **Generate Trajectories**
   - Запустить агента на task suite
   - Собрать полные trajectories: inputs → reasoning → tool calls → intermediate outputs → final result
   - Сохранить execution traces (DSPy cache или custom logging)

2. **Evaluate**
   - Evaluator model анализирует каждую траекторию
   - Формирует written feedback: что сработало, что нет, почему
   - Оценивает по multiple criteria (accuracy, efficiency, reasoning quality)

3. **Prune**
   - Отбрасывает низкокачественные траектории
   - Выбирает Pareto frontier: траектории, которые лучше других по хотя бы 1 критерию и не хуже по остальным
   - Избегает overfitting на только positive examples (см. FM.001)

4. **Augment**
   - Формирует prompt revisions на основе feedback
   - Тестирует новые prompts на held-out set
   - Обновляет agent prompt если improvement подтверждён
   - Итерирует (loop back to Generate)

**Benchmarks (2026):**
- vs GRPO: +6% average performance, +20% peak, with **35x fewer rollouts**
- vs MIPROv2: +10% average, +12% на AIME-2025 (mathematical reasoning)
- Repository-specific skills (Feb 2026): Jinja 55%→82%, Bleve 24%→93% resolve rates

**Integration with DSPy:**
```python
# Example: clearing cache for real iterations
dspy.configure(
    experimental=True,
    cache_strategy="none"  # or use --fresh flag in CLI
)
```

**Failure Modes:**

**FM.001: Overfitting to Positive Trajectories**
- Scenario: GEPA trained только на успешных траекториях → agent learns "what worked" but not "what to avoid"
- Consequence: Brittle performance, fails on edge cases
- Mitigation: Include failure trajectories in training set, diverse seed examples, explicitly model "anti-patterns"

**FM.002: Evaluation Function Misalignment**
- Scenario: Evaluator model оптимизирует proxy metric (e.g., "reasoning length"), не true objective (e.g., "correct answer")
- Consequence: Agent produces длинные, impressive-looking, но неправильные ответы
- Mitigation: Multi-metric evaluation (accuracy + efficiency + reasoning quality), human-in-the-loop для alignment check, cross-validation evaluators

**FM.003: Insufficient Iteration Budget**
- Scenario: GEPA прерывается рано (1-2 итерации) → не достигает Pareto frontier
- Consequence: Suboptimal prompt, missed improvement opportunity
- Mitigation: Минимум 5-10 iterations, early stopping только при plateau (3+ iterations без improvement)

**適用 (IWE Context):**
- Scout (R23): trajectories = source scan → relevance eval → candidate formation. GEPA для улучшения relevance filters.
- Strategist (R1): trajectories = context read → analysis → РП proposals. GEPA для alignment с user priorities.

**Sources:**
- [GEPA: Reflective Prompt Evolution (arxiv 2507.19457)](https://arxiv.org/abs/2507.19457)
- [OpenAI Cookbook: Self-Evolving Agents](https://cookbook.openai.com/examples/partners/self_evolving_agents/autonomous_agent_retraining)
- [GEPA AI Optimization Guide](https://www.comet.com/site/blog/gepa-ai-optimization/)
- [Awesome Self-Evolving Agents Survey](https://github.com/EvoAgentX/Awesome-Self-Evolving-Agents)

---

## Candidate #6: WISC Framework → DP.SOTA.002

**ID:** DP.SOTA.002 (обогащение или новый, если SOTA.002 не существует)
**Тип:** SOTA (Platform-Level)
**Название:** WISC Framework: Context Engineering for Multi-Agent Systems

### SOTA: Context Engineering Transition (2026)

**Thesis (Anthropic, Sept 2025):**
"Context Engineering > Prompt Engineering" для AI agents. LLMs constrained by finite attention budget → context engineering = finding smallest possible set of high-signal tokens for desired outcome.

**WISC Framework (Practical Implementation):**

Ordering intentional — prioritize по impact:

1. **W = Write (Externalize Memory)**
   - **Что:** Agent's state/memory сохраняется в files, survives context resets
   - **Зачем:** Sessions имеют token limits → reset неизбежен. Externalized memory = continuity.
   - **IWE Mapping:** Scout → morning-ideas.md + capture-candidates.md (findings persist across sessions)
   - **Anti-pattern:** Keeping все в chat history → bloat, eventual truncation, loss of critical info

2. **I = Isolate (Sub-Agent Partitioning)**
   - **Что:** Separate agents для research/exploration vs execution → keep noise out of main session
   - **Зачем:** Research generates много irrelevant tokens. Main agent context должен быть focused.
   - **IWE Mapping:** scheduler.sh → isolated sessions для каждой task (strategist, scout, verifier не мешают друг другу)
   - **Anti-pattern:** Single monolithic agent для всех задач → context pollution, confusion between tasks

3. **S = Select (Load Only Needed Context)**
   - **Что:** Подгружать в context только релевантные файлы/данные для текущей задачи
   - **Зачем:** Token budget finite → loading everything = wasted tokens on irrelevant info
   - **IWE Mapping:** dispatcher/router → определяет какой Pack/РП релевантен, загружает только его
   - **Anti-pattern:** "Load all Packs at session start" → 100K+ tokens upfront, мало места для actual work

4. **C = Compress (Focus or Handoff)**
   - **Что:** Когда session runs long → compress context (summary/focus) ИЛИ handoff to fresh session
   - **Зачем:** Long sessions accumulate cruft → performance degradation, repetition, errors
   - **IWE Mapping:** Trajectory cache → сжатие прошлых iterations, handoff между Strategy/Execution sessions
   - **Anti-pattern:** Letting session run до 200K tokens → agent "forgets" early context, starts repeating

**Technical Implementation (IWE Agents):**

| Agent | Write | Isolate | Select | Compress |
|-------|-------|---------|--------|----------|
| Scout | morning-ideas.md | Dedicated session (scheduler) | Only scout/tasks.yaml + sources.yaml | Handoff после 10 findings |
| Strategist | strategy.md updates | Morning session (scheduler) | MEMORY.md + DayPlan + active РП | Weekly compress (archive old strategies) |
| Verifier | verification-reports/ | Post-artifact session | Target artifact + Pack эталон | One-shot (не accumulate context) |
| Executor | РП файлы (code/docs) | Task-specific (linear-sync, Day Open/Close) | РП-specific files only | Commit → reset |

**Metrics for WISC Effectiveness:**
- **Token Efficiency:** Useful output tokens / Total context tokens consumed
- **Session Longevity:** Tasks completed before hitting context limits
- **Information Retention:** Critical info preserved across resets (externalized) vs lost

**SOTA Convergence (2026):**
- LangChain, Anthropic Cookbook, DSPy все converge на context engineering patterns
- Long-context models (Claude 3.5 Sonnet 500K, GPT-4 Turbo 128K) НЕ решают проблему → attention dilution at scale
- KV cache reuse, sliding window attention = inference optimizations, НЕ context strategy replacements

**Sources:**
- [Anthropic: Effective Context Engineering for AI Agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
- [WISC Framework (coleam00/context-engineering-intro)](https://github.com/coleam00/context-engineering-intro/tree/main/use-cases/ai-coding-wisc-framework)
- [State of Context Engineering 2026 (SwirAI Newsletter)](https://www.newsletter.swirlai.com/p/state-of-context-engineering-in-2026)

---

## Candidate #7: WEF 5-Layer Trust Stack → AS.M.001 (Update)

**ID:** AS.M.001 (обогащение секции Trust Stack Design)
**Тип:** Method (governance)
**Секция для добавления:** "WEF 5-Layer Trust Stack + CSA ATF"

### WEF Trust Stack for Autonomous Agents (2026)

**Context:** Designing trustworthy autonomous agents для production deployment (regulatory compliance, enterprise governance, public trust).

**5 Layers (WEF "How to Design for Trust in the Age of AI Agents", Feb 2026):**

1. **Legible Reasoning**
   - Agent может объяснить how/why пришёл к результату
   - Appropriate level of detail (не "black box", не overwhelming verbosity)
   - **IWE Implementation:** Scout → reasoning field in findings (почему источник релевантен, какой критерий сработал)
   - **Checklist:** ☑ Can agent produce explanation on demand? ☑ Is explanation at right abstraction level for audience?

2. **Bounded Agency**
   - Clear limits on what agent can do, decide, recommend
   - Fail-safe mechanisms (cannot exceed bounds even under adversarial prompting)
   - **IWE Implementation:** Strategist → bounded to strategy.md updates + proposal formation, НЕ может commit code или менять production config
   - **Checklist:** ☑ Documented action boundaries? ☑ Technical enforcement (not just policy)? ☑ Monitoring for boundary violations?

3. **Goal Transparency**
   - Agent's objectives ясны stakeholders (пользователь, operator, regulator)
   - Alignment проверяемый (goal matches stated purpose)
   - **IWE Implementation:** Each agent role (R1-R23) имеет explicit goal в CLAUDE.md (R1=strategy, R2=extract, R23=scout)
   - **Checklist:** ☑ Written goal statement? ☑ Goal aligned с user interest? ☑ Goal conflicts disclosed?

4. **Contestability & Override**
   - Humans могут challenge agent decision
   - Override mechanism доступен (не требует developer intervention)
   - **IWE Implementation:** Пользователь может отклонить Scout findings (feedback loop), override Strategist proposals, reject Verifier report
   - **Checklist:** ☑ User-accessible override? ☑ Override logged (audit trail)? ☑ Agent learns from overrides (feedback incorporation)?

5. **Governance by Design (Logging & Auditability)**
   - Все agent actions logged
   - Audit trail доступен для review
   - Compliance-ready (GDPR, SOC2, etc.)
   - **IWE Implementation:** Scout outputs → scout/results/YYYY/MM/DD/, Strategist → strategy.md (git history), Verifier → verification-reports/
   - **Checklist:** ☑ Immutable logs? ☑ Retention policy defined? ☑ Access controls (who can audit)? ☑ Compliance mapping (which regs apply)?

**CSA Agentic Trust Framework (ATF):**

Open governance specification (Cloud Security Alliance, Feb 2026). Применяет Zero Trust principles к AI agents:
- **Never Trust, Always Verify** — agent actions verified даже если agent "trusted"
- **Least Privilege** — agent имеет minimum permissions для task
- **Assume Breach** — design for scenario where agent compromised/misaligned

**Progressive Governance (T0 → T4):**

| Autonomy Level | Safeguards | Example (IWE) |
|----------------|------------|---------------|
| T0 (No Autonomy) | Full human approval every action | Verifier reports → пользователь решает accept/reject |
| T1 (Supervised) | Human approves categories of actions | Scout findings → пользователь reviews batch weekly |
| T2 (Constrained) | Agent acts within bounded domain | Strategist updates strategy.md автоматически, НО не меняет РП statuses |
| T3 (Guided) | Agent acts, human reviews periodically | Scheduler runs agents ночью, пользователь reviews утром |
| T4 (Full Autonomy) | Agent acts, human audits retroactively | (IWE not at T4 yet — goal for Phase 3) |

Safeguards пропорциональны autonomy level. T4 требует all 5 layers WEF Trust Stack fully implemented.

**IWE Audit (Current State):**

| Layer | Scout (R23) | Strategist (R1) | Verifier (R22) | Status |
|-------|-------------|-----------------|----------------|--------|
| Legible Reasoning | ✅ (reasoning field) | ✅ (analysis in output) | ✅ (report format) | GOOD |
| Bounded Agency | ✅ (only writes to scout/) | ⚠️ (can write strategy.md, MEMORY.md — wide scope) | ✅ (read-only + report) | NEED REVIEW (Strategist) |
| Goal Transparency | ✅ (explicit in prompt) | ✅ (explicit in prompt) | ✅ (explicit in prompt) | GOOD |
| Contestability | ⚠️ (feedback loop exists, but not formalized) | ⚠️ (user can ignore, but no structured rejection process) | ✅ (user decides accept/reject verification) | NEED FORMALIZATION |
| Governance/Logging | ✅ (scout/results/ immutable) | ⚠️ (git history, но strategy.md mutable) | ✅ (verification-reports/ immutable) | ACCEPTABLE |

**Action Items (IWE Trust Stack Improvement):**
1. Formalize feedback loop for Scout (structured rejection + reasoning capture)
2. Narrow Strategist scope (separate strategy-writing from MEMORY-updating — разные роли?)
3. Add override logging (когда пользователь отклоняет agent output, записывать причину)

**Sources:**
- [WEF: How to Design for Trust in the Age of AI Agents](https://www.weforum.org/stories/2026/02/how-to-design-for-trust-in-the-age-of-ai-agents/)
- [CSA Agentic Trust Framework](https://cloudsecurityalliance.org/blog/2026/02/02/the-agentic-trust-framework-zero-trust-governance-for-ai-agents)
- [ICLR 2026 Workshop: Agents in the Wild](https://agentwild-workshop.github.io/)

---

=== END ===
