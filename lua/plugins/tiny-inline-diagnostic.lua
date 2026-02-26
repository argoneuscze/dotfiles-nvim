return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      options = {
        show_source = {
          enabled = true,
        },
        multilines = {
          enabled = true,
        },
        enable_on_insert = true,
      },
    })

    vim.diagnostic.config({
      virtual_text = false,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "●",
          [vim.diagnostic.severity.WARN] = "●",
          [vim.diagnostic.severity.INFO] = "●",
          [vim.diagnostic.severity.HINT] = "●",
        },
        numhl = {
          [vim.diagnostic.severity.ERROR] = "ErrorMsg",
          [vim.diagnostic.severity.WARN] = "WarningMsg",
          [vim.diagnostic.severity.INFO] = "InfoMsg",
          [vim.diagnostic.severity.HINT] = "HintMsg",
        },
      },
      severity_sort = true,
    })
  end,
}
