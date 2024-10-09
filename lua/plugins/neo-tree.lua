return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree = require("neo-tree")

		neotree.setup({
			close_if_last_window = true,
		})

		local key = vim.keymap

		key.set("n", "<leader>e", "<cmd>Neotree filesystem reveal left toggle<cr>", { desc = "file explorer (cmd)" })
		key.set("n", "<leader>E", function()
			require("neo-tree.command").execute({
				source = "filesystem",
				position = "left",
				dir = Helpers.get_root_dir(),
				toggle = true,
			})
		end, { desc = "file explorer (root)" })
	end,
}
