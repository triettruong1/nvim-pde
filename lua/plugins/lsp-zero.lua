return {
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/nvim-cmp" },
			{ "L3MON4D3/LuaSnip" },
			{
				"williamboman/mason.nvim",
				config = function()
					require("mason").setup()
				end,
			},
			{
				"williamboman/mason-lspconfig.nvim",
				config = function()
					local lsp_zero = require("lsp-zero")
					lsp_zero.on_attach(function(client, bufnr)
						lsp_zero.default_keymaps({ buffer = bufnr })
					end)
					require("mason-lspconfig").setup({
						ensure_installed = {
							"csharp_ls",
							"tsserver",
						},
						handlers = {
							lsp_zero.default_setup,
						},
					})
				end,
			},
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.setup()
			lsp_zero.setup_servers({ "rust_analyzer", "tsserver" })

			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
				filetypes = {
					".cs",
					".cshtml",
					".cshtml.css",
				},
			})

			require("lspconfig").tsserver.setup({
				filetypes = {
					".tsx",
					".ts",
					".js",
					".jsx",
				},
			})
		end,
	},
}
