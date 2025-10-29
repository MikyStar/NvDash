-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

--------------------------------------------------------------------

M.base46 = {
	theme = "radium",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

--------------------------------------------------------------------

local handle = io.popen "pwd"
local pwd = handle:read()

local pwdLine = pwd
local spaceToFill = (52 - string.len(pwd))
for i = 0, spaceToFill do
  if i % 2 == 0 then
    pwdLine = pwdLine .. " "
  else
    pwdLine = " " .. pwdLine
  end
end

M.nvdash = {
	load_on_startup = true,

	header = {
      "                                                     ",
			" ███╗   ██╗██╗   ██╗██████╗  █████╗ ███████╗██╗  ██╗ ",
			" ████╗  ██║██║   ██║██╔══██╗██╔══██╗██╔════╝██║  ██║ ",
			" ██╔██╗ ██║██║   ██║██║  ██║███████║███████╗███████║ ",
			" ██║╚██╗██║╚██╗ ██╔╝██║  ██║██╔══██║╚════██║██╔══██║ ",
			" ██║ ╚████║ ╚████╔╝ ██████╔╝██║  ██║███████║██║  ██║ ",
			" ╚═╝  ╚═══╝  ╚═══╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ",
      "                                                     ",
      pwdLine,
      "                                                     ",
      "                                                     ",
    },

	buttons = {
		{ txt = "󰈚  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
		{ txt = "  Find File", keys = "ff",  cmd ="Telescope find_files" },
		{ txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
		{ txt = "  Bookmarks", keys = "ma", cmd = "Telescope marks" },
		{ txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
	},
}

--------------------------------------------------------------------

M.ui = {
	cmp = {
		abbr_maxwidth = 60,
    -- for tailwind, css lsp etc
    format_colors = {
			lsp = true,
			icon = "󱓻" },
	},

	tabufline = {
		show_numbers = true,
	},
}

return M
