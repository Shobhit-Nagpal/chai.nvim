local chai_themes = require("chai.palette").themes

local active = {
  fg = chai_themes.foreground,
}

local inactive = {
  fg = chai_themes.secondaryForeground,
  bg = chai_themes.lowBackground,
}

local M = {
  -- whole bar background
  fill = {
    bg = chai_themes.activeBackground,
  },

  -- inactive tab
  background = inactive,

  -- inactive tab separator
  separator = {
    fg = chai_themes.activeBackground,
    bg = inactive.bg,
  },

  -- active tab separator
  separator_selected = {
    fg = chai_themes.activeBackground,
  },

  buffer_selected = {
    fg = active.fg,
  },

  -- top-right
  tab = {
    bg = chai_themes.activeBackground,
  },
  tab_selected = active,
  tab_separator = {
    fg = chai_themes.activeBackground,
    bg = chai_themes.activeBackground,
  },
  tab_separator_selected = {
    fg = chai_themes.activeBackground,
  },

  -- <-, ->
  trunc_marker = {
    bg = chai_themes.activeBackground,
  },

  -- tab close icon
  tab_close = {
    bg = chai_themes.activeBackground,
  },

  -- bar close icon
  close_button = inactive,

  -- tab number
  numbers = inactive,

  -- modified dot
  modified = {
    bg = inactive.bg,
  },

  -- duplicated prefix text
  duplicate = {
    fg = chai_themes.ignored,
    bg = inactive.bg,
  },

  pick = {
    bg = inactive.bg,
  },

  -- diagnostic start
  diagnostic = inactive,
  hint = inactive,
  hint_diagnostic = inactive,
  info = inactive,
  info_diagnostic = inactive,
  warning = inactive,
  warning_diagnostic = inactive,
  error = inactive,
  error_diagnostic = inactive,
  -- diagnostic end
}

-- mode = 'buffers', keep same colors
M.separator_visible = M.separator
M.buffer_visible = inactive
M.close_button_visible = M.close_button
M.numbers_visible = M.numbers
M.modified_visible = M.modified
M.duplicate_visible = M.duplicate
M.pick_visible = M.pick
M.diagnostic_visible = M.diagnostic
M.hint_visible = M.hint
M.hint_diagnostic_visible = M.hint_diagnostic
M.info_visible = M.info
M.info_diagnostic_visible = M.info_diagnostic
M.warning_visible = M.warning
M.warning_diagnostic_visible = M.warning_diagnostic
M.error_visible = M.error
M.error_diagnostic_visible = M.error_diagnostic

return M
