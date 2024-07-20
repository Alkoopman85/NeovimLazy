-- vim specific options. loaded in lazy.lua

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

opt.mouse = "a"
opt.number = true

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
