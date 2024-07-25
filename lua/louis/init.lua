require("louis.keymaps")
require("louis.options")
if vim.lsp.inlay_hint then
  vim.keymap.set("n", "<leader>L",
    function()
      if vim.lsp.inlay_hint.is_enabled() then
        vim.lsp.inlay_hint.enable(false, { bufnr })
      else
        vim.lsp.inlay_hint.enable(true, { bufnr })
	end
    end)
end
