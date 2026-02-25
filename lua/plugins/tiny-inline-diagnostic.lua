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

    local signs = { Error = "●", Warn = "●", Info = "●", Hint = "●" }
    for type, icon in pairs(signs) do
      local hl = "Diagnostic" .. type
      vim.fn.sign_define("DiagnosticSign" .. type, { text = icon, texthl = hl, numhl = hl })
    end
    vim.diagnostic.config({ virtual_text = false, signs = true })
  end,
}
