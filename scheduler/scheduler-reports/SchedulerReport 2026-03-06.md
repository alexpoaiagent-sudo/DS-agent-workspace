---
type: scheduler-report
date: 2026-03-06
week: W10
agent: Синхронизатор
---

# Отчёт планировщика: 06 марта 2026

## 🔴 Критический сбой — требуется внимание

> **Замечания:** strategist morning не запустился; Mac оффлайн в 02:18 — данные собраны, не запушены; 

## Ожидаемые задачи

| # | Агент | Задача | Расписание |
|---|-------|--------|------------|
| 1 | Синхронизатор | Сканирование кода | ежедневно |
| 2 | Синхронизатор | Отчёт неудовлетворённых | ежедневно |
| 3 | Синхронизатор | Проекция Pack | после сканирования |
| 4 | Стратег | Утренний (план дня / подготовка) | ежедневно 04:00 |
| 5 | Экстрактор | Проверка входящих | каждые 3ч (07-23) |
| 6 | Наблюдатель | Синхронизация заметок | каждые 2 мин |

## Результаты

| # | Задача | Статус | Время | Детали |
|---|--------|--------|-------|--------|
| 1 | Сканирование кода | **✅** | 02:18:57 | SKIP: memory/checklists.md (unchanged);SKIP: memory/navigation.md (unchanged);SKIP: memory/MEMORY.md (unchanged); |
| 2 | Отчёт неудовлетворённых | **✅** | 03:36:31 | done: total=469, helpful=21, unsatisfied=62, triaged=19 |
| 3 | Проекция Pack | **✅** | (авто) | SKIP: memory/MEMORY.md (unchanged) |
| 4 | Стратег утренний | **❌ НЕ ЗАПУЩЕН** | — | маркер отсутствует |
| 8 | Проверка входящих | **✅** | посл.: 09:08:09 (75317 сек назад) | интервальный |
| 9 | Синхронизация заметок | **✅ АКТИВЕН** | каждые 2 мин | наблюдатель launchd |

## Синхронизация с GitHub

| Скрипт | Лог | Статус |
|--------|-----|--------|
| Планировщик (сканирование) | scheduler-2026-03-06.log | **ОШИБКА** |
| Стратег | 2026-03-06.log (strategist/) | **ОШИБКА** |

## Ошибки и предупреждения

- [2026-03-06 02:18:53] WARN: pull --rebase failed
- [2026-03-06 02:18:54] WARN: git push failed
- [2026-03-06 02:18:54] WARN: Note-Review Step 10 may have failed — bold notes did not decrease (4 → 4)
- [2026-03-06 02:18:54] WARN: cleanup pull --rebase failed
- [2026-03-06 02:18:56] WARN: cleanup push failed
- [2026-03-06 03:36:31] [scheduler] WARN: template-sync failed (will retry next dispatch)
- [2026-03-06 03:53:06] [reindex] ERROR: ingest.ts failed
- Fatal error: NeonDbError: Error connecting to database: TypeError: fetch failed
-   sourceError: TypeError: fetch failed
- [2026-03-06 03:53:06] [scheduler] WARN: reindex failed (will retry next dispatch)
- [2026-03-06 04:09:29] [scheduler] WARN: template-sync failed (will retry next dispatch)
- [2026-03-06 04:20:27] [reindex] ERROR: ingest.ts failed
- Fatal error: TypeError: fetch failed
- [2026-03-06 04:20:27] [scheduler] WARN: reindex failed (will retry next dispatch)
- [2026-03-06 06:03:25] [scheduler] WARN: template-sync failed (will retry next dispatch)- [2026-03-06 02:18:53] WARN: pull --rebase failed
- error: failed to push some refs to 'https://github.com/TserenTserenov/DS-my-strategy.git'
- [2026-03-06 02:18:54] WARN: git push failed
- [2026-03-06 02:18:54] WARN: Note-Review Step 10 may have failed — bold notes did not decrease (4 → 4)
- [2026-03-06 02:18:54] WARN: cleanup pull --rebase failed
- error: failed to push some refs to 'https://github.com/TserenTserenov/DS-my-strategy.git'
- [2026-03-06 02:18:56] WARN: cleanup push failed

**Что делать:**
- **push failed:** Mac был оффлайн. Данные собраны локально. Запусти `cd ~/IWE/DS-my-strategy && git pull --rebase && git push` для синхронизации.
- **pull --rebase failed:** Нет сети или конфликт. Проверь `git status` в DS-my-strategy. Если конфликт — разреши вручную.
## Ссылки на логи

| Лог | Путь |
|-----|------|
| Планировщик | `/Users/tserentserenov/logs/synchronizer/scheduler-2026-03-06.log` |
| Стратег | `/Users/tserentserenov/logs/strategist/2026-03-06.log` |
| Сканирование | `/Users/tserentserenov/logs/synchronizer/code-scan-2026-03-06.log` |
