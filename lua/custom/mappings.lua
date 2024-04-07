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
    ["<C-p>"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },

    ["<leader>gn"] = { "<cmd> Gitsigns next_hunk <CR>", "Git next hunk" },
    ["<leader>gp"] = { "<cmd> Gitsigns prev_hunk <CR>", "Git previous hunk" },
  },
  v = {
    [">"] = { ">gv", "indent"},

    ["<S-Down>"] = { ":m '>+1<CR>gv=gv" },
    ["<S-Up>"] = { ":m '<-2<CR>gv=gv" },
  },
}

-- more keybinds!

return M
