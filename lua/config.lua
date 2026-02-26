-- general
vim.o.number = true
vim.g.have_nerd_font = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.confirm = true
vim.o.winborder = "rounded"
vim.o.scrolloff = 10
vim.o.inccommand = "split"
vim.o.undofile = true
vim.o.cursorline = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })

-- tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.breakindent = true

-- splits
vim.o.splitright = true
vim.o.splitbelow = true
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- set leader to <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- custom commands
vim.api.nvim_create_user_command("ConfigEdit", "execute 'e '  stdpath('config')", {})
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- LSP
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grt")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grr")
vim.keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", { desc = "LSP Definition" })
vim.keymap.set("n", "gD", "<cmd>FzfLua lsp_typedefs<CR>", { desc = "LSP Type definition" })
vim.keymap.set("n", "gr", "<cmd>FzfLua lsp_references<CR>", { desc = "LSP References" })
vim.keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", { desc = "LSP Implementation" })
vim.keymap.set("n", "<leader>ca", "<cmd>FzfLua lsp_code_actions<CR>", { desc = "LSP Code actions" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
vim.keymap.set("n", "<C-s>", vim.lsp.buf.hover, { desc = "LSP Hover" })
