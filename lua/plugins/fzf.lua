return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-mini/mini.icons" },
  lazy = false,
  keys = {
    { "<leader>fd", "<cmd>FzfLua builtin<CR>", desc = "Fzf Builtin commands" },
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Fzf Find files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "Fzf Live grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Fzf Buffers" },
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
