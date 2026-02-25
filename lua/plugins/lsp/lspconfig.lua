return {
  "neovim/nvim-lspconfig",
  config = function()
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
      on_attach = function(client, bufnr)
        local group = vim.api.nvim_create_augroup("GoFormat_" .. bufnr, { clear = true })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = group,
          buffer = bufnr,
          callback = function()
            local range_params = vim.lsp.util.make_range_params(vim.api.nvim_get_current_win(), client.offset_encoding)
            local params = {
              textDocument = range_params.textDocument,
              range = range_params.range,
              context = {
                only = { "source.organizeImports" },
              },
            }
            local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
            for cid, res in pairs(result or {}) do
              for _, r in pairs(res.result or {}) do
                if r.edit then
                  local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
                  vim.lsp.util.apply_workspace_edit(r.edit, enc)
                end
              end
            end
            vim.lsp.buf.format({ async = false, id = client.id })
          end,
        })
      end,
    })
  end,
}
