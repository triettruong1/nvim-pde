return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		luasnip.filetype_extend("all", { "_" })
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,noinsert",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				-- confirm completion
				["<CR>"] = cmp.mapping.confirm({ select = true }),

				-- scroll up and down the documentation window
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
				["<C-o>"] = cmp.mapping.complete(), -- show completion suggestions
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),
			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text", -- show only symbol annotations
					maxwidth = 50,
					symbol_map = {
						Text = "",
						Method = "",
						Function = "󰡱",
						Constructor = "",
						Field = "",
						Variable = "󰫧",
						Class = "",
						Interface = "",
						Module = "",
						Property = "",
						Unit = "塞",
						Value = "",
						Enum = "",
						Keyword = "",
						Snippet = "",
						Color = "󰉦",
						File = "",
						Reference = "",
						Folder = "",
						EnumMember = "",
						Constant = "",
						Struct = "פּ",
						Event = "",
						Operator = "",
						TypeParameter = "",
					},
					ellipsis_char = "",
				}),
			},
		})
	end,
}
