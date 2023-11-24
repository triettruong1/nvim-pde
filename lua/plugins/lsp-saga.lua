return {
  "nvimdev/lspsaga.nvim",
  event = {"LspAttach"},
  config = function()
    require("lspsaga").setup({
      definition = {
        keys = {
          edit = 'o',
          vsplit = 'v',
          split = 'h',
        }
      }
    })
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    {"gd",  ":Lspsaga goto_definition<CR>", desc = "[G]o to definition", },
    {"gD", ":Lspsaga goto_type_definition<CR>", desc = "[G]o to type definition", },
    {"<leader>pd", ":Lspsaga peek_definition<CR>", desc = "[P]eek [D]eclaration", },
    {"<leader>pD",  ":Lspsaga peek_type_definition<CR>", desc = "[P]eek [T]ype Definition", },
    {"K", ":Lspsaga hover_doc<CR>", desc = "hover doc", },
    {"<leader>fi", ":Lspsaga finder imp<CR>", desc ="[F]ind [I]mplementations", },
    {"<leader>ca", ":Lspsaga code_action<CR>", desc = "[C]ode [A]ctions", },
    {"<leader>fr", ":Lspsaga finder ref<CR>", desc = "[F]ind [R]erence", },
    {"<leader>dn", ":Lspsaga diagnostic_jump_next<CR>", desc = "[D]iagnostic Jump [N]ext" },
    {"<leader>dp", ":Lspsaga diagnostic_jump_prev<CR>", desc = "[D]iagnostic Jump [P]revious" },
  }
}
