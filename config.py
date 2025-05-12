
config.load_autoconfig(False)

c.url.start_pages = ["http://192.168.1.238:8085"]
c.url.default_page = "http://192.168.1.238:8085"

c.completion.web_history.max_items = 1000
c.completion.cmd_history_max_items = 500
c.completion.height = "30%"
c.completion.shrink = True

c.fonts.default_family = "Anonymous Pro Minus"
c.fonts.default_size = "11pt"

config.source("theme_mocha.py")

config.bind(",t", "spawn --userscript ~/.config/qutebrowser/toggle_theme.sh")
config.bind(",w", "spawn --userscript ~/.config/qutebrowser/toggle_waybar.sh")
config.bind(",h", "open file:///home/braydenchaffee/.config/qutebrowser/cheatsheet.html")
config.set("colors.webpage.darkmode.enabled", True)

# Optional: tweak image rendering to not invert
config.set("colors.webpage.darkmode.policy.images", "smart")
config.set("colors.webpage.darkmode.threshold.foreground", 150)
config.set("colors.webpage.darkmode.threshold.background", 205)

