#!/bin/bash

THEME_FILE=~/.config/qutebrowser/theme_toggle_state

state=$(cat "$THEME_FILE" 2>/dev/null || echo "mocha")
next="latte"
[[ "$state" == "latte" ]] && next="mocha"

echo "$next" >"$THEME_FILE"

echo ":config-source theme_${next}.py" | socat - ~/.qutebrowser/qutebrowser-*.fifo
