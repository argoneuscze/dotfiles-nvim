local tools = {
	-- Formatters
	"stylua",
	"prettierd",
	-- Linters
	-- ...
}

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = tools,
	},
}
