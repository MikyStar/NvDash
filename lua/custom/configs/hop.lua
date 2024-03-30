local hop = require("hop")

hop.setup()

local set = vim.keymap.set
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local nosilent_opts = { noremap = true, silent = false }

keymap("n", "<A-q>", "q", opts) -- Macro q remap
keymap("x", "<A-q>", "q", opts)
keymap("n", "?", "/", nosilent_opts)

keymap("x", "<leader><leader>w", "<cmd>HopWord<cr>", opts)
keymap("n", "<leader><leader>w", "<cmd>HopWord<cr>", opts)
keymap("n", "<leader><leader>l", "<cmd>HopLineStart<cr>", opts)
keymap("x", "<leader><leader>l", "<cmd>HopLineStart<cr>", opts)
keymap("n", "<leader><leader>W", "<cmd>HopWordMW<cr>", opts)

keymap(
	"o",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
	opts
)
keymap(
	"o",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = false })<cr>",
	opts
)

keymap("n", "<leader><leader>s", "<cmd>lua require'hop'.hint_patterns()<cr>", opts)

keymap("n", "<leader><leader>(", "<cmd>lua require'hop'.hint_patterns({}, '(')<cr>", opts)
keymap("n", "<leader><leader>)", "<cmd>lua require'hop'.hint_patterns({}, ')')<cr>", opts)
keymap("n", "<leader><leader>;", "<cmd>lua require'hop'.hint_patterns({}, ';')<cr>", opts)
keymap("n", "<leader><leader><", "<cmd>lua require'hop'.hint_patterns({}, '<')<cr>", opts)
keymap("n", "<leader><leader>>", "<cmd>lua require'hop'.hint_patterns({}, '>')<cr>", opts)

local directions = require('hop.hint').HintDirection
set('', 'f', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true
  })
end, {remap=true})
set('', 'F', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true
  })
end, {remap=true})
set('', 't', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true,
    hint_offset = -1
  })
end, {remap=true})
set('', 'T', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true,
    hint_offset = 1
  })
end, {remap=true})
