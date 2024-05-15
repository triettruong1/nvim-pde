return {
	"nvimdev/lspsaga.nvim",
	event = { "LspAttach" },
	config = function()
		require("lspsaga").setup({
			definition = {
				keys = {
					edit = "o",
					vsplit = "v",
					split = "h",
				},
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "gd", "<cmd>Lspsaga goto_definition<CR>", desc = "[G]o to definition" },
		{ "gD", "<cmd>Lspsaga goto_type_definition<CR>", desc = "[G]o to type definition" },
		{ "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", desc = "[P]eek [D]eclaration" },
		{ "<leader>pD", "<cmd>Lspsaga peek_type_definition<CR>", desc = "[P]eek [T]ype Definition" },
		{ "K", "<cmd>Lspsaga hover_doc<CR>", desc = "hover doc" },
		{ "<leader>fi", "<cmd>Lspsaga finder imp<CR>", desc = "[F]ind [I]mplementations" },
		{ "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc = "[C]ode [A]ctions" },
		{ "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "[D]iagnostic Jump [N]ext" },
		{ "<leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "[D]iagnostic Jump [P]revious" },
	},
}
