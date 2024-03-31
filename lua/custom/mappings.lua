---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-e>"] = { "5<C-e>" },
    ["<C-y>"] = { "5<C-y>" },

    ["<S-Down>"] = { ":m .+1<CR>==" },
    ["<S-Up>"] = { ":m .-2<CR>==" },

    ["<leader>sv"] = { "<cmd> vsplit <CR>" },
    ["<leader>sh"] = { "<cmd> split <CR>" },

    ["<leader>ww"] = { "<cmd> lua require('nvim-window').pick()<CR>" },
  },
  v = {
    [">"] = { ">gv", "indent"},

    ["<S-Down>"] = { ":m '>+1<CR>gv=gv" },
    ["<S-Up>"] = { ":m '<-2<CR>gv=gv" },
  },
}

-- more keybinds!

return M
