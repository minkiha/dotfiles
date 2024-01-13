local M = {}

-- Diasble some default mappings
M.disabled = {}

-- My custom mappings
M.abc = {
  n = {
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true }},
  }
}

return M
