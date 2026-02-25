return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
        json = { "prettierd" },
        yaml = { "prettierd" },
      },
      format_on_save = function(bufnr)
        -- skip conform for specific languages
        local ignored = { "go" }
        if vim.tbl_contains(ignored, vim.bo[bufnr].filetype) then
          return
        end
        -- use LSP fallback
        return { timeout_ms = 3000, lsp_format = "fallback" }
      end,
    })
  end,
}
