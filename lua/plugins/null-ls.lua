return {
  "nvimtools/none-ls.nvim",
  -- Setup null-ls with eslint and combine with lsp-zero
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    local root_has_file = function(files)
      return function(utils)
        return utils.root_has_file(files)
      end
    end

    local eslint_root_files = { ".eslintrc", ".eslintrc.js", ".eslintrc.json" }
    local prettier_root_files = { ".prettierrc", ".prettierrc.js", ".prettierrc.json" }

    null_ls.setup({
      sources = {
        require("none-ls.code_actions.eslint_d"),
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.formatting.eslint_d").with({
          condition = function(utils)
            local has_eslint = root_has_file(eslint_root_files)(utils)
            local has_prettier = root_has_file(prettier_root_files)(utils)
            return has_eslint and not has_prettier
          end,
        }),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd.with({
          condition = root_has_file(prettier_root_files),
        }),
      },

    })
  end,
}
