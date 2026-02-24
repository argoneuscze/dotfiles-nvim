return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local ts = require("nvim-treesitter")
        local langs = {
            "lua", "luadoc", "vim", "vimdoc", "markdown", "markdown_inline",
            "regex", "json", "yaml", "toml",
            "bash", "powershell",
            "c", "cpp", "rust",
            "python", "go", "ruby",
            "html", "css", "javascript", "typescript",
        }

        ts.install(langs)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = langs,
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end
}

