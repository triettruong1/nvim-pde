return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "onsails/lspkind-nvim",
  },
  config = function()
    local branch_max_width = 40
    local branch_min_width = 10

    require("lualine").setup({
      theme = "auto",
      sections = {
        lualine_a = { 'filetype' },
        lualine_b = {},
        lualine_c = {
          {
            'filename',
            file_status = false,
            path = 1,
            fmt = function(output)
              return output
            end
          }
        },
        lualine_x = { 'diagnostics', "import" },
        lualine_y = { 'diff', {
          'branch',
          fmt = function(output)
            local win_width = vim.o.columns
            local max = branch_max_width
            if win_width * 0.25 < max then
              max = math.floor(win_width * 0.25)
            end
            if max < branch_min_width then
              max = branch_min_width
            end
            if max % 2 ~= 0 then
              max = max + 1
            end
            if output:len() >= max then
              return output:sub(1, (max / 2) - 1)
                  .. "..."
                  .. output:sub(-1 * ((max / 2) - 1), -1)
            end
            return output
          end,
        } },
        lualine_z = { 'progress', 'location' }
      },
    })
  end
}
