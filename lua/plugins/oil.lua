return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup()
  end,
  keys = {
    {"=", "<cmd>Oil<CR>", desc = "Open parent directory"}
  }

}
