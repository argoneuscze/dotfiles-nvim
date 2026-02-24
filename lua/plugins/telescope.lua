return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install",
		},
	},
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{ "<leader>ff", builtin.find_files, desc = "Telescope find files" },
			{ "<leader>fg", builtin.live_grep, desc = "Telescope live grep" },
			{ "<leader>fb", builtin.buffers, desc = "Telescope buffers" },
		}
	end,
	config = function()
		require("telescope").load_extension("fzf")
	end,
}
