local servers = {
	-- LSPs
	"lua_ls",
	"pyright",
}

local extras = {
	-- Formatters
	"stylua",
	-- Linters
	"ruff",
}

local all = vim.deepcopy(servers)
vim.list_extend(all, extras)

return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = all,
			automatic_enable = false,
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		for _, server in ipairs(servers) do
			vim.lsp.config(server, {
				capabilities = capabilities,
			})
			vim.lsp.enable(server)
		end
	end,
}
