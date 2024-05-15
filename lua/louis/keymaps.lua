vim.g.mapleader = " "
---------------- Core keymaps----------------
vim.keymap.set("n", "|", "<cmd>vsp<CR>")
vim.keymap.set("n", "-", "<cmd>sp<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

------------- Split keymaps -------------
vim.keymap.set("n", "<C-h>", "<C-w><left>")
vim.keymap.set("n", "<C-j>", "<C-w><down>")
vim.keymap.set("n", "<C-k>", "<C-w><up>")
vim.keymap.set("n", "<C-l>", "<C-w><right>")

-- Resizing
vim.keymap.set("n", "˙", "<C-w>>")
vim.keymap.set("n", "∆", "<C-w>-")
vim.keymap.set("n", "˚", "<C-w>+")
vim.keymap.set("n", "¬", "<C-w><")
-----------------------------------------

vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>")

-- vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Working with buffers
vim.keymap.set("n", "<leader>x", "<cmd>bp <Bar> bd #<CR>")

------------------------------------------------

-- LSP

vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
