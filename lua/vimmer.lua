vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.wrap = true
vim.opt.scrolloff = 5

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>r", function()
    vim.cmd("reg")
end, {})
