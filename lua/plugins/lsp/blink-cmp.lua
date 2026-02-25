return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets", "folke/lazydev.nvim" },
  version = "1.*",
  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = { "accept", "fallback" },
      ["<C-s>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-q>"] = { "show_signature", "hide_signature", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = { auto_show = true },
      trigger = { show_in_snippet = true },
      list = { selection = { preselect = true } },
    },
    signature = { enabled = true, window = { show_documentation = false } },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
