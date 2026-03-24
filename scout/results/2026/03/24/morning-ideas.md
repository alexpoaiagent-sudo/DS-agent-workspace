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

