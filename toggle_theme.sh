#!/bin/bash

THEME_STATE_FILE="$HOME/.config/qutebrowser/theme_toggle_state"
current=$(cat "$THEME_STATE_FILE" 2>/dev/null || echo "mocha")

if [[ "$current" == "mocha" ]]; then
  next="latte"
else
  next="mocha"
fi

echo "$next" >"$THEME_STATE_FILE"

# Launch Qutebrowser command page to reload theme
xdg-open "qute://command/config-source%20theme_${next}.py"
