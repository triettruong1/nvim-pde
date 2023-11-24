return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{"<leader>ff", ":Telescope find_files<CR>", desc = "[F]ind [F]iles"},
			{"<leader>fw", ":Telescope live_grep<CR>", desc = "[F]ind [W]ords w Grep"},
			{"<C-p>", ":Telescope git_files<CR>", desc = "Find in git files"},
		},
		config = function()
			require("telescope").setup()
		end
	}
}
