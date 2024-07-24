vim.g.mapleader = " "
vim.opt.conceallevel = 2

vim.cmd("set number")

vim.cmd("set nowrap")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")

vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" })

