return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    animate = { enabled = true },
    dashboard = { enabled = true },
    explorer = {
      finder = "explorer",
      enabled = true,
      layout = {
        cycle = false,
      }
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
        }
      }
    },
    input = {
      -- your input picker configuration comes here
      -- or leave it empty to use the default settings
    },
    statuscolumn = {
      -- your statuscolumn configuration comes here
      -- or leave it empty to use the default settings
    },
    terminal = {
      -- your terminal configuration comes here
      -- or leave it empty to use the default settings
    }
  },
  keys = {
    { "<C-b>",      function() require("snacks").explorer() end,        desc = "Snacks Explorer" },
    { "<leader>sd", function() require("snacks").dashboard() end,       desc = "Snacks Dashboard" },
    { "<leader>lz", function() require("snacks").lazygit.open() end,    desc = "Lazygit" },
    { "<leader>tt", function() require("snacks").terminal.toggle() end, desc = "Terminal" },
  }
}
