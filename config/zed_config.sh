# ~/.config/zed/settings.json
echo '{
  "assistant": {
    "default_model": {
      "provider": "zed.dev",
      "model": "claude-3-7-sonnet-latest"
    },
    "version": "2"
  },
  "features": {
    "edit_prediction_provider": "zed"
  },
  "telemetry": {
    "diagnostics": false,
    "metrics": false
  },
  "editor": {
    "insertSpaces": false,
    "useTabs": true,
    "wordWrap": "on",
    "autoClosingBrackets": "never",
    "autoClosingQuotes": "never",
    "terminal": "ghostty"
  },
  "shell": {
    "program": "open -a Ghostty"
  },
  "autosave": "on_focus_change",
  "insertSpaces": false,
  "useTabs": true,
  "ui_font_size": 16,
  "buffer_font_size": 16,
  "format_on_save": "on",
  "theme": {
    "mode": "system",
    "light": "One Light",
    "dark": "One Dark"
  }
}' > ~/.config/zed/settings.json
