return {
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		config = function()
			require("harpoon").setup()
		end,
		keys = {
			{
				"<leader>a",
				":lua require('harpoon.mark').add_file()<CR>",
				desc = "Harpoon add",
				silent = true,
			},
			{
				"<C-e>",
				":lua require('harpoon.ui').toggle_quick_menu()<CR>",
				desc = "Toggle harpoon list",
				silent = true,
			},
			{ "<C-y>", ":lua require('harpoon.ui').nav_file(1)<CR>", desc = "Harpoon nav 1", silent = true },
			{ "<C-t>", ":lua require('harpoon.ui').nav_file(2)<CR>", desc = "Harpoon nav 2", silent = true },
			{ "<C-n>", ":lua require('harpoon.ui').nav_file(3)<CR>", desc = "Harpoon nav 3", silent = true },
			{ "<C-s>", ":lua require('harpoon.ui').nav_file(4)<CR>", desc = "Harpoon nav 4", silent = true },
		},
	},
}
