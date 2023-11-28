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
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local vscode = require("vscode")
			vscode.setup({
				transparent = true,
			})

			vscode.load()
		end,
	},
}
