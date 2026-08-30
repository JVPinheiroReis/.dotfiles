-- Options are automatically loaded before lazy.nvim startup.
require("config.remote_clipboard").setup()

vim.g.autoformat = true

vim.opt.relativenumber = false
vim.opt.laststatus = 0

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
