---------------- Core keymaps----------------
vim.keymap.set("n", "|", ":vsp<CR>")
vim.keymap.set("n", "-", ":sp<CR>")

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

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

-- vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

------------------------------------------------
