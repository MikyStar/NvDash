require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd(
	"BufWritePost",
	{
		callback = function()
			vim.lsp.buf.format { async = true }
		end,
	}
)