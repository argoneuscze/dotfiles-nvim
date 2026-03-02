local servers = {
  -- LSPs
  "lua_ls",
  "basedpyright",
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
    local installed = {}
    for _, entry in ipairs(servers) do
      if type(entry) == "table" then
        if vim.fn.executable(entry.depends) == 1 then
          table.insert(installed, entry[1])
        end
      else
        table.insert(installed, entry)
      end
    end
    require("mason-lspconfig").setup({
      ensure_installed = installed,
      automatic_enable = installed,
    })
  end,
}
