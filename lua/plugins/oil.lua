return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-mini/mini.icons" },
	lazy = false,
	config = function()
		require("oil").setup()
	end,
}
