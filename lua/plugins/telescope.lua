return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<leader>ff", ":Telescope find_files<CR>", desc = "[F]ind [F]iles", silent = true },
			{ "<leader>fw", ":Telescope live_grep<CR>", desc = "[F]ind [W]ords w Grep", silent = true },
			{ "<leader>fr", ":Telescope lsp_references<CR>", desc = "[F]ind [R]eferences", silent = true },
			{ "<C-p>", ":Telescope git_files<CR>", desc = "Find in git files", silent = true },
			{ "<leader><space>", ":Telescope buffers<CR>", desc = "Find buffers", silent = true },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
				},
			})
		end,
	},
}
