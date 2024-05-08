local wezterm = require 'wezterm'

return {
    font = wezterm.font 'Maple Mono SC NF',
    color_scheme = 'github_dark',
    font_size = 16,
    window_close_confirmation = 'NeverPrompt',
    window_background_opacity = 0.85,
    window_decorations = "INTEGRATED_BUTTONS|RESIZE",
    window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
    enable_scroll_bar = false,
    scrollback_lines = 100000,
}
