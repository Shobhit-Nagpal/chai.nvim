local M = {}

M.colors = {
  -- Base colors
  black = "#010107",      -- Main background
  white = "#becfda",      -- Main text

  -- Grays
  gray1 = "#07273b",      -- Activity bar background
  gray2 = "#09334e",      -- Secondary background
  gray3 = "#0f1315",      -- Borders
  gray4 = "#4d6c80",      -- Line numbers
  gray5 = "#9fb6c6",      -- Secondary text
  gray6 = "#becfda",      -- Main text

  -- Theme colors
  primary = "#49ace9",    -- Primary blue
  secondary = "#1679b6",  -- Secondary blue
  accent = "#49e9a6",     -- Accent green
}

M.themes = {
  -- Base theme colors
  primary = "#49ace9",

  -- Text colors
  foreground = "#becfda",           -- Main text
  activeForeground = "#ffffff",     -- Active text
  secondaryForeground = "#9fb6c6",  -- Secondary text
  ignored = "#4d6c80",             -- Muted text
  border = "#0f1315",              -- Border color

  -- Background colors
  background = "#010107",          -- Main background
  activeBackground = "#07273b",    -- Active background
  lowBackground = "#09334e",       -- Secondary background
  lowActiveBackground = "#0c3f5f", -- Active secondary background
  lowBorder = "#0f1315",           -- Secondary border

  -- Syntax highlighting
  comment = "#dcdcdc",             -- Comments
  string = "#49e9a6",              -- Strings
  variable = "#e4b781",            -- Variables
  keyword = "#df769b",             -- Keywords
  number = "#7060eb",              -- Numbers
  boolean = "#df769b",             -- Booleans
  operator = "#df769b",            -- Operators
  func = "#16a3b6",                -- Functions
  constant = "#d5971a",            -- Constants
  class = "#e66533",               -- Classes
  interface = "#e66533",           -- Interfaces
  type = "#d67e5c",                -- Types
  builtin = "#df769b",             -- Built-in functions
  property = "#d67e5c",            -- Properties
  namespace = "#e66533",           -- Namespaces
  punctuation = "#df769b",         -- Punctuation
  decorator = "#df769b",           -- Decorators
  regex = "#49e9a6",               -- Regular expressions

  -- UI Colors
  error = "#e34e1c",               -- Error
  warning = "#e69533",             -- Warning
  info = "#49ace9",                -- Info
  hint = "#49e9a6",                -- Hint

  -- Additional colors
  green = "#16b673",               -- Success green
  cyan = "#49d6e9",                -- Cyan
  blue = "#49ace9",                -- Blue
  red = "#e34e1c",                 -- Red
  orange = "#e69533",              -- Orange
  yellow = "#e4b781",              -- Yellow
  magenta = "#df769b",             -- Magenta
}

return M
