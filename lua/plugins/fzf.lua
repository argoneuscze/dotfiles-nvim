return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-mini/mini.icons" },
  keys = {
    { "<leader>fd", "<cmd>FzfLua builtin<CR>", desc = "Fzf Builtin commands" },
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Fzf Find files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "Fzf Live grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Fzf Buffers" },
  },
  opts = {
    winopts = { preview = { layout = "vertical", vertical = "right:50%" } },
  },
}
