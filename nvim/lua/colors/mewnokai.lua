-- ~/.config/nvim/lua/colors/moonokai.lua
vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "mewnokai"

local set = vim.api.nvim_set_hl

-- Background and foreground
set(0, "Normal", { fg = "#C592FF", bg = "#100D23" })
set(0, "Cursor", { fg = "#100D23", bg = "#00FF9C", reverse = false })
set(0, "CursorLine", { bg = "#1A162F" })
set(0, "CursorColumn", { bg = "#1A162F" })

-- Comments, Keywords, Identifiers, etc.
set(0, "Comment", { fg = "#484144", italic = true })
set(0, "Constant", { fg = "#AE81FF" })
set(0, "String", { fg = "#E6DB74" })
set(0, "Identifier", { fg = "#F92672" })
set(0, "Statement", { fg = "#FF4082" })
set(0, "PreProc", { fg = "#66D9EF" })
set(0, "Type", { fg = "#A6E22E" })
set(0, "Special", { fg = "#FD971F" })

-- Line number, statusline, etc.
set(0, "LineNr", { fg = "#504A70" })
set(0, "StatusLine", { fg = "#C592FF", bg = "#1A162F" })
set(0, "Visual", { bg = "#3E2D67" })

-- MatchParen, Search highlights
set(0, "MatchParen", { fg = "#FF0080", bold = true })
set(0, "Search", { fg = "#100D23", bg = "#FFE792", bold = true })

-- Diagnostics (for LSP)
set(0, "DiagnosticError", { fg = "#F44747" })
set(0, "DiagnosticWarn", { fg = "#FF8800" })
set(0, "DiagnosticInfo", { fg = "#66D9EF" })
set(0, "DiagnosticHint", { fg = "#A6E22E" })

