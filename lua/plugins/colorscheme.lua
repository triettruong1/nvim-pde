return {
  {
    -- "sainnhe/gruvbox-material",
    -- priority = 1000,
    -- config = function()
    --   vim.cmd("set background=dark")
    --   vim.cmd("let g:gruvbox_material_background = 'soft'")
    --   vim.cmd("let g:gruvbox_material_transparent_background = 2")
    --   vim.cmd('colorscheme gruvbox-material')
    -- end
  },
  {
    -- "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    -- config = function()
    --   require("gruvbox").setup({
    --     transparent_mode = true
    --   })
    --
    --   vim.cmd("colorscheme gruvbox")
    -- end
  },
  {
    -- "rebelot/kanagawa.nvim",
    -- config = function()
    --   local kanagawa = require('kanagawa')
    --   kanagawa.setup({
    --     transparent = true, -- do not set background color
    --     theme = "dragon",
    --   })
    --   vim.cmd("colorscheme kanagawa-dragon")
    -- end,
    -- opts = {
    --   transparent = true,
    -- }
  },
  {
    -- "olimorris/onedarkpro.nvim",
    -- priority = 1000, -- Ensure it loads first
    -- config = function()
    --   require("onedarkpro").setup({
    --     options = {
    --       transparency = true,
    --       cursorline = true,
    --       lualine_transparency = true, -- Center bar transparency?
    --     }
    --   })
    --
    --   vim.cmd('colorscheme onedark')
    -- end
  },
  {
    -- "ful1e5/onedark.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   local onedark = require("onedark")
    --   onedark.setup({
    --     transparent = true,
    --   })
    -- end,
  },
  {
    -- "projekt0n/github-nvim-theme",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   local github = require("github-theme")
    --   github.setup({})
    --   vim.cmd("colorscheme github_dark_tritanopia")
    -- end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options

        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,

        extensions = {
          telescope = true,
          notify = true,
          mini = true,
        },
      })

      vim.cmd("colorscheme cyberdream") -- set the colorscheme
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

      vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopePreviewTitle', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = 'none' })
    end,
  },
  {
    -- "neanias/everforest-nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   local everforest = require("everforest")
    --   everforest.setup({
    --     background = "hard",
    --     transparent_background_level = 0,
    --     ui_contrast = "high",
    --     italics = true,
    --     diagnostic_text_highlight = true,
    --     diagnostic_line_highlight = true,
    --     float_style = "dim",
    --     inlay_hints_background = "dimmed"
    --   })
    --
    --   everforest.load()
    -- end,
  },
  {
    -- "Mofiqul/vscode.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   local vscode = require("vscode")
    --   vscode.setup({
    --     transparent = true,
    --     italic_comments = true,
    --     underline_links = true,
    --     disable_nvimtree_bg = true,
    --   })
    --
    --   vscode.load()
    -- end,
  },
  {
    -- "catppuccin/nvim",
    -- priority = 1000,
    -- config = function()
    -- 	local catppuccin = require("catppuccin")
    -- 	catppuccin.setup({
    -- 		flavour = "macchiato",
    --       transparent_background = true, -- disables setting the background color.
    -- 	})
    --
    -- 	catppuccin.load()
    -- end,
  },
  {
    -- "nyoom-engineering/oxocarbon.nvim",
    -- config = function()
    --   vim.cmd("colorscheme oxocarbon")
    -- end,
  },
  {
    -- 'wuelnerdotexe/vim-enfocado',
    -- config = function()
    --   vim.cmd("colorscheme enfocado")
    --   vim.cmd("let g:enfocado_style = 'neon'")
    -- end
  },
  {
    -- "mellow-theme/mellow.nvim",
    -- config = function()
    --   local palette = {
    --     background = "#353539",
    --     foreground = "#CAC9DD",
    --     red = "#F591B2",
    --     green = "#9DC6AC",
    --     lightYellow = "#F0C5A9",
    --     lightPurple = "#B9AEDA",
    --     lightPink = "#ECAAD6",
    --     orange = "#f77943",
    --   }
    --
    --   vim.g.mellow_highlight_overrides = {
    --     -- Basic UI
    --     Normal = { fg = palette.foreground, bg = "#131314" },
    --
    --     -- Text and code
    --     Comment = { fg = palette.green, italic = true },
    --     Keyword = { fg = palette.orange, bold = true },
    --     Function = { fg = palette.orange, bold = true },
    --     String = { fg = palette.green },
    --     Variable = { fg = palette.orange },
    --
    --     -- Error and warnings
    --     Error = { fg = palette.red, bold = true },
    --     WarningMsg = { fg = palette.lightYellow },
    --
    --     -- Additional elements
    --     Type = { fg = palette.orange, bold = true },
    --     Constant = { fg = palette.orange },
    --     Identifier = { fg = palette.foreground },
    --     Statement = { fg = palette.orange },
    --     PreProc = { fg = palette.lightYellow }
    --   }
    --
    --   vim.g.mellow_bold_functions = true
    --   vim.g.mellow_bold_variables = true
    --   vim.cmd("colorscheme mellow")
    -- end,
    -- priority = 1000,
  },
  {
    -- "mcchrish/zenbones.nvim",
    -- priorty = 1000,
    -- dependencies = "rktjmp/lush.nvim",
    -- config = function()
    --   vim.g.kanagawabones_transparent_background = true
    --   vim.cmd("colorscheme kanagawabones")
    -- end
  },
}
