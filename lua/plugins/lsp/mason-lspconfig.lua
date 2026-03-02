local servers = {
  -- LSPs
  "lua_ls",
  "pyright",
  "ruff",
  { "gopls", depends = "go" },
  "html",
  "clangd",
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
  config = function()
    local ensure_installed = {}
    for _, entry in ipairs(servers) do
      if type(entry) == "table" then
        if vim.fn.executable(entry.depends) == 1 then
          table.insert(ensure_installed, entry[1])
        end
      else
        table.insert(ensure_installed, entry)
      end
    end
    require("mason-lspconfig").setup({ ensure_installed = ensure_installed })
  end,
}
