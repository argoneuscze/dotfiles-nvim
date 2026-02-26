local servers = {
  -- LSPs
  "lua_ls",
  "pyright",
  "ruff",
  "gopls",
  "html",
  "cssls",
  "vtsls",
}

return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    "saghen/blink.cmp",
  },
  opts = {
    ensure_installed = servers,
  },
}
