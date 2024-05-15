return {
	"jose-elias-alvarez/null-ls.nvim",
	-- Setup null-ls with eslint and combine with lsp-zero
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.code_actions.eslint_d,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.prettierd,
				null_ls.builtins.formatting.eslint_d,
				null_ls.builtins.formatting.prettier_eslint,
				null_ls.builtins.formatting.prettierd,
			},
		})
	end,
}
