return {
	{
		-- "ful1e5/onedark.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	local onedark = require("onedark")
		-- 	onedark.setup({
		-- 		transparent = true,
		-- 	})
		-- end,
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			local github = require("github-theme")
			github.setup({})
			vim.cmd("colorscheme github_dark_tritanopia")
		end,
	},
	{
		-- "scottmckendry/cyberdream.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	require("cyberdream").setup({
		-- 		-- Recommended - see "Configuring" below for more config options
		-- 		transparent = true,
		-- 		italic_comments = true,
		-- 		hide_fillchars = true,
		-- 		borderless_telescope = false,
		-- 		terminal_colors = true,
		-- 	})
		-- 	vim.cmd("colorscheme cyberdream") -- set the colorscheme
		-- end,
	},
	{
		-- "neanias/everforest-nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	local everforest = require("everforest")
		-- 	everforest.setup({
  --       background = "soft",
  --       ui_contrast = "high",
  --       diagnostic_text_highlight = true,
  --       float_style = "dim",
  --       inlay_hints_background = "dimmed"
		-- 	})
		--
		-- 	everforest.load()
		-- end,
	},
	{
		-- "Mofiqul/vscode.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	local vscode = require("vscode")
		-- 	vscode.setup({})
		--
		-- 	vscode.load()
		-- end,
	},
	{
		-- "catppuccin/nvim",
		-- priority = 1000,
		-- config = function()
		-- 	local catppuccin = require("catppuccin")
		-- 	catppuccin.setup({
		-- 		flavour = "macchiato",
  --       transparent_background = true, -- disables setting the background color.
		-- 	})
		--
		-- 	catppuccin.load()
		-- end,
	},
	{
		-- "nyoom-engineering/oxocarbon.nvim",
		-- config = function()
		-- 	vim.cmd("colorscheme oxocarbon")
		-- end,
	},
	{
		-- "mcchrish/zenbones.nvim",
		-- priorty = 1000,
		-- dependencies = "rktjmp/lush.nvim",
		-- config = function()
		-- 	vim.cmd("colorscheme forestbones")
		-- end,
	},
}
