return {
    "https://github.com/neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable("pyright")
    end
}
