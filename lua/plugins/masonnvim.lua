return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_enable = false,
        ensure_installed = {
          "emmet_language_server",
          "graphql",
          "jsonls",
          "lua_ls",
          "somesass_ls",
          "tailwindcss",
          "ts_ls",
        }
      })
    end
  },
  {
    -- "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- dependencies = {
    --   "mason-org/mason.nvim",
    -- },
    -- opts = {
    --   -- list of formatter and linter for mason to install
    --   ensure_installed = {
    --     "prettierd",
    --     "stylua",
    --     "eslint_d"
    --   }
    -- },
  }
}
