return {
	"stevearc/dressing.nvim",
	lazy = false,
	config = function()
		require("dressing").setup({
			mappings = false,
		})
	end,
}
