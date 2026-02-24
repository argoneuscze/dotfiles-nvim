-- basics    
vim.o.number = true
vim.g.have_nerd_font = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.confirm = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

-- tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- set leader to <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- plugins
require "lazynvim"
require "theme"

