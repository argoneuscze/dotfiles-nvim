local servers = {
  -- LSPs
  "lua_ls",
  "pyright",
  "ruff",
  "vtsls",
  "gopls",
}

return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = servers,
      automatic_enable = false,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    for _, server in ipairs(servers) do
      vim.lsp.config(server, {
        capabilities = capabilities,
      })
      vim.lsp.enable(server)
    end
  end,
}
