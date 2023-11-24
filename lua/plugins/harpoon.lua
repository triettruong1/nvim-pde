return {
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		config = function()
			require("harpoon").setup()
		end,
		keys = {
			{ "<leader>a", ":lua require('harpoon.mark').add_file()<CR>", desc = "Harpoon add" },
			{ "<C-e>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Toggle harpoon list" },
			{ "<C-y>", ":lua require('harpoon.ui').nav_file(1)<CR>", desc = "Harpoon nav 1" },
			{ "<C-t>", ":lua require('harpoon.ui').nav_file(2)<CR>", desc = "Harpoon nav 2" },
			{ "<C-n>", ":lua require('harpoon.ui').nav_file(3)<CR>", desc = "Harpoon nav 3" },
			{ "<C-s>", ":lua require('harpoon.ui').nav_file(4)<CR>", desc = "Harpoon nav 4" },
		},
	},
}
