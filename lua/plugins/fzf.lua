return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-mini/mini.icons" },
  lazy = false,
  keys = {
    { "<leader>fB", "<cmd>FzfLua builtin<CR>", desc = "Fzf Builtin commands" },
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find files" },
    { "<leader>fa", "<cmd>FzfLua blines<CR>", desc = "Find buffer lines" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "Live grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Buffers" },
    { "<leader>fR", "<cmd>FzfLua oldfiles<CR>", desc = "Recent files" },
    { "<leader>fu", "<cmd>FzfLua undotree<CR>", desc = "Undo tree" },
    { "<leader>fr", "<cmd>FzfLua lsp_references<CR>", desc = "LSP References" },
    { "<leader>fd", "<cmd>FzfLua lsp_document_diagnostics<CR>", desc = "LSP Document diagnostics" },
    { "<leader>fD", "<cmd>FzfLua lsp_workspace_diagnostics<CR>", desc = "LSP Workspace diagnostics" },
    { "<leader>fs", "<cmd>FzfLua lsp_document_symbols<CR>", desc = "LSP Document symbols" },
    { "<leader>fS", "<cmd>FzfLua lsp_live_workspace_symbols<CR>", desc = "LSP Workspace symbols" },
  },
  opts = {
    winopts = { preview = { layout = "vertical", vertical = "right:50%" } },
  },
  config = function(_, opts)
    local fzf = require("fzf-lua")
    fzf.setup(opts)
    fzf.register_ui_select()
  end,
}
