-- basics
vim.o.number = true
vim.g.have_nerd_font = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.confirm = true
vim.o.winborder = "rounded"

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

-- tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- set leader to <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- custom commands
vim.api.nvim_create_user_command("ConfigEdit", "execute 'e '  stdpath('config')", {})

-- keymaps
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
vim.keymap.set("n", "<C-s>", vim.lsp.buf.hover, { desc = "LSP Hover documentation" })
