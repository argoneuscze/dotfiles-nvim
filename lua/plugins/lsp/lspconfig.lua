return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Lua
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              "vim",
            },
          },
        },
      },
    })

    -- Python
    vim.lsp.config("pyright", {
      settings = {
        pyright = {
          -- Using Ruff's import organizer
          disableOrganizeImports = true,
        },
        python = {
          analysis = {
            -- Ignore all files for analysis to exclusively use Ruff for linting
            ignore = { "*" },
          },
        },
      },
    })

    -- Go
    vim.lsp.config("gopls", {
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          gofumpt = true,
        },
      },
    })
    -- TODO add LspAttach for the goimports (maybe an augroup too)
  end,
}
