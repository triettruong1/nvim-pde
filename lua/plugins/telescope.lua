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
			{ "<C-p>", ":Telescope git_status<CR>", desc = "See changed files", silent = true },
			{ "<leader><space>", ":Telescope buffers<CR>", desc = "Find buffers", silent = true },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					hidden = true,
					prompt_prefix = "   ",
					selection_caret = "  ",
					entry_prefix = "  ",

					sorting_strategy = "ascending",
					layout_strategy = "horizontal",

					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.55,
							results_width = 0.8,
						},
						vertical = {
							mirror = false,
						},
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},

					filename_first = {
						reverse_directories = true,
					},
				},
			})
		end,
	},
}
