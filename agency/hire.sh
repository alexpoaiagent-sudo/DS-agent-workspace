#!/bin/bash
# hire.sh — поиск и найм агентов DS-агентства
#
# Ищет по двум источникам:
#   1. Наши агенты (DS-agent-workspace/agency/agents/)
#   2. Библиотека agency-agents (179 агентов, ~/Github/agency-agents/)
#
# Использование:
#   hire.sh list                    # Предметные области
#   hire.sh show <область>          # Агенты в области
#   hire.sh search <ключевое слово> # Поиск по всем агентам
#   hire.sh hire <категория/агент>  # Нанять агента
#   hire.sh our                     # Только наши агенты

AGENCY_DIR="$(cd "$(dirname "$0")" && pwd)"
OUR_AGENTS="$AGENCY_DIR/agents"
EXTENDED_DIR="$HOME/Github/agency-agents"

# Цвета
BOLD="\033[1m"
GREEN="\033[32m"
CYAN="\033[36m"
YELLOW="\033[33m"
RESET="\033[0m"

case "${1:-}" in

    "our")
        echo -e "${BOLD}🏠 Наши агенты DS-агентства:${RESET}"
        echo ""
        for f in "$OUR_AGENTS"/*.md; do
            [ -f "$f" ] || continue
            name=$(basename "$f" .md)
            desc=$(grep "^description:" "$f" 2>/dev/null | head -1 | sed 's/description: //')
            emoji=$(grep "^emoji:" "$f" 2>/dev/null | head -1 | sed 's/emoji: //')
            echo -e "  ${GREEN}${emoji:-•} $name${RESET} — $desc"
        done
        echo ""
        echo -e "Нанять: ${CYAN}hire.sh hire-our <slug>${RESET}"
        ;;

    "hire-our")
        SLUG="${2:?Укажи slug агента (например: vk-coffee-analyst)}"
        AGENT_FILE="$OUR_AGENTS/$SLUG.md"

        if [ ! -f "$AGENT_FILE" ]; then
            echo "❌ Агент не найден: $SLUG"
            echo "Доступные: $(ls $OUR_AGENTS/*.md | xargs -n1 basename | sed 's/.md//' | tr '\n' ' ')"
            exit 1
        fi

        echo -e "${GREEN}✅ Агент нанят: $SLUG${RESET}"
        echo ""
        cat "$AGENT_FILE"
        ;;

    "list")
        echo -e "${BOLD}📋 Предметные области агентства:${RESET}"
        echo ""
        echo -e "  ${GREEN}[наши]${RESET}        DS-агентство (6 агентов)"
        echo -e "  engineering   Разработка (23 агента)"
        echo -e "  design        Дизайн (8 агентов)"
        echo -e "  marketing     Маркетинг (27 агентов)"
        echo -e "  sales         Продажи (8 агентов)"
        echo -e "  product       Продукт (5 агентов)"
        echo -e "  project-management  Менеджмент (6 агентов)"
        echo -e "  testing       Тестирование/QA (8 агентов)"
        echo -e "  specialized   Специализированные (27 агентов)"
        echo -e "  support       Поддержка (6 агентов)"
        echo -e "  academic      Академические (5 агентов)"
        echo -e "  game-development  Геймдев (5 агентов)"
        echo -e "  spatial-computing Пространственные вычисления (6 агентов)"
        echo -e "  paid-media    Платная реклама (7 агентов)"
        echo ""
        echo -e "${BOLD}Итого: 185+ агентов${RESET}"
        ;;

    "show")
        AREA="${2:?Укажи предметную область}"

        if [ "$AREA" = "наши" ] || [ "$AREA" = "our" ]; then
            bash "$0" our
            exit 0
        fi

        AREA_DIR="$EXTENDED_DIR/$AREA"
        if [ ! -d "$AREA_DIR" ]; then
            echo "❌ Область не найдена: $AREA"
            echo "Доступные: $(ls $EXTENDED_DIR | grep -v -E 'README|LICENSE|hire|scripts|examples|integrations' | tr '\n' ' ')"
            exit 1
        fi

        echo -e "${BOLD}👥 Агенты: $AREA${RESET}"
        echo ""
        for f in "$AREA_DIR"/*.md; do
            [ -f "$f" ] || continue
            name=$(basename "$f" .md)
            desc=$(grep -m1 "^description:" "$f" 2>/dev/null | sed 's/description: //')
            echo -e "  ${CYAN}$name${RESET}"
            [ -n "$desc" ] && echo -e "    $desc"
        done
        echo ""
        echo -e "Нанять: ${CYAN}hire.sh hire $AREA/<агент>${RESET}"
        ;;

    "search")
        KEYWORD="${2:?Укажи ключевое слово}"
        echo -e "${BOLD}🔍 Поиск: «$KEYWORD»${RESET}"
        echo ""

        # Поиск по нашим агентам
        OUR_RESULTS=$(grep -r -i "$KEYWORD" "$OUR_AGENTS" --include="*.md" -l 2>/dev/null)
        if [ -n "$OUR_RESULTS" ]; then
            echo -e "${GREEN}🏠 Наши агенты:${RESET}"
            echo "$OUR_RESULTS" | while read -r f; do
                echo "  $(basename $f .md)"
            done
            echo ""
        fi

        # Поиск по библиотеке
        EXT_RESULTS=$(grep -r -i "$KEYWORD" "$EXTENDED_DIR" --include="*.md" -l 2>/dev/null | grep -v README | grep -v CONTRIBUTING)
        if [ -n "$EXT_RESULTS" ]; then
            echo -e "${CYAN}📚 Библиотека агентов:${RESET}"
            echo "$EXT_RESULTS" | sed "s|$EXTENDED_DIR/||" | while read -r f; do
                echo "  $f"
            done
        fi

        if [ -z "$OUR_RESULTS" ] && [ -z "$EXT_RESULTS" ]; then
            echo "Ничего не найдено по запросу «$KEYWORD»"
            echo "Попробуй: hire.sh list"
        fi
        ;;

    "hire")
        AGENT_PATH="${2:?Укажи путь к агенту (категория/агент)}"
        FULL_PATH="$EXTENDED_DIR/$AGENT_PATH"

        # Добавить .md если нет
        [[ "$FULL_PATH" != *.md ]] && FULL_PATH="$FULL_PATH.md"

        if [ ! -f "$FULL_PATH" ]; then
            echo "❌ Агент не найден: $AGENT_PATH"
            echo "Поиск: hire.sh search <ключевое слово>"
            exit 1
        fi

        AGENT_NAME=$(basename "$FULL_PATH" .md)
        echo -e "${GREEN}✅ Агент нанят: $AGENT_NAME${RESET}"
        echo ""
        cat "$FULL_PATH"
        ;;

    *)
        echo -e "${BOLD}DS-агентство — найм ИИ-агентов${RESET}"
        echo ""
        echo "Использование:"
        echo "  hire.sh list                     # Предметные области (185+ агентов)"
        echo "  hire.sh our                      # Наши агенты (6)"
        echo "  hire.sh show <область>           # Агенты в области"
        echo "  hire.sh search <ключевое слово>  # Поиск по всем агентам"
        echo "  hire.sh hire <область/агент>     # Нанять из библиотеки"
        echo "  hire.sh hire-our <slug>          # Нанять нашего агента"
        echo ""
        echo "Примеры:"
        echo "  hire.sh search telegram"
        echo "  hire.sh show marketing"
        echo "  hire.sh hire marketing/marketing-instagram-curator"
        echo "  hire.sh hire-our vk-coffee-analyst"
        exit 1
        ;;
esac
