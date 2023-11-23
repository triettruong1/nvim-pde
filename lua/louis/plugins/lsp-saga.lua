return {
  "nvimdev/lspsaga.nvim",
  event = {"LspAttach"},
  config = function()
    require("lspsaga").setup()
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    {"<leader>pt",  ":Lspsaga peek_type_definition<CR>", desc = "[P]eek [T]ype Definition", },
    {"<leader>pd", ":Lspsaga peek_definition<CR>", desc = "[P]eek [D]eclaration", },
    {"K", ":Lspsaga hover_doc<CR>", desc = "hover doc", },
    {"<leader>fi", ":Lspsaga finder imp<CR>", desc ="[F]ind [I]mplementations", },
    {"<leader>ca", ":Lspsaga code_action<CR>", desc = "[C]ode [A]ctions", },
    {"<leader>fr", ":Lspsaga finder ref<CR>", desc = "[F]ind [R]erence", },
    {"<leader>dn", ":Lspsaga diagnostic_jump_next<CR>", desc = "[D]iagnostic Jump [N]ext" },
    {"<leader>dp", ":Lspsaga diagnostic_jump_prev<CR>", desc = "[D]iagnostic Jump [P]revious" },
  }
}
