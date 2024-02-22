return {
	{
		-- "navarasu/onedark.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	local onedark = require("onedark")
		-- 	onedark.setup({
		-- 		style = "darker",
		-- 	})
		-- 	onedark.load()
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
	-- {
	-- 	"catppuccin/nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local catppuccin = require("catppuccin")
	-- 		catppuccin.setup({
	-- 			flavour = "macchiato",
	-- 		})
	--
	-- 		catppuccin.load()
	-- 	end,
	-- },
	{
		-- "nyoom-engineering/oxocarbon.nvim",
		-- config = function()
		-- 	vim.cmd("colorscheme oxocarbon")
		-- end,
	},
	{
		"mcchrish/zenbones.nvim",
		priorty = 1000,
		dependencies = "rktjmp/lush.nvim",
		config = function()
			vim.cmd("colorscheme zenbones")
			vim.cmd("colorscheme forestbones")
		end,
	},
}
