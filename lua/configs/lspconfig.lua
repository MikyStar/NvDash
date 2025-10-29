require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"tsserver",
	"clangd",
	"tailwindcss",
	"eslint",
	"pyright",
	"rust_analyzer"
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
