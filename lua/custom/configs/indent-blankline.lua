local highlight = {
  "RainbowCyan",
  "RainbowBlue",
  "RainbowViolet",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
end)

require("ibl").setup { indent = { highlight = highlight } }
