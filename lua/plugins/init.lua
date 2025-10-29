return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "smoka7/hop.nvim",
    lazy = false,
    config = function()
      require('hop').setup()
    end,
  },

  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow"
  },

  {
    "hedyhli/outline.nvim",
    lazy = false,
    config = function()
      require("outline").setup {
        show_guides = true,
        show_numbers = true,
        show_relative_numbers = true,
      }
    end,
  },

  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    lazy = false,
    -- optionally, override the default options:
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
      require("cmp").setup {
        formatting = { format = require("tailwindcss-colorizer-cmp").formatter },
      }
    end,
  },


  --- From NVChad

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
