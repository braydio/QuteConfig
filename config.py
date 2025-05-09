# config.py
config.load_autoconfig(False)

# Home page
c.url.start_pages = ["http://192.168.1.238:8085"]
c.url.default_page = ["http://192.168.1.238:8085"]

# Autocomplete & completion settings
c.completion.web_history_max_items = 1000
c.completion.cmd_history_max_items = 500
c.completion.height = "30%"
c.completion.shrink = True

# Fonts
c.fonts.default_family = "Anonymous Pro Minus"
c.fonts.default_size = "11pt"

# Load Catppuccin Mocha theme by default
config.source("theme_mocha.py")

# Theme toggle key (Mocha ↔ Latte)
config.bind(",t", "spawn --userscript ~/.config/qutebrowser/toggle_theme.sh")

# Toggle Waybar theme
config.bind(",w", "spawn --userscript ~/.config/qutebrowser/toggle_waybar.sh")

# Nav to cheatsheet page
config.bind(",h", "open file:///home/braydenchaffee/.config/qutebrowser/cheatsheet.html")

