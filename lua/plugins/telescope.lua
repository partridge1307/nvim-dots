return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-ui-select.nvim", event = "VeryLazy" },
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_cutoff = 90,
						width = 0.9,
					},
				},
			},
			extentions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})

		telescope.load_extension("ui-select")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files (cwd)" })
		keymap.set("n", "<leader>fF", function()
			require("telescope.builtin").find_files({ cwd = Helpers.get_root_dir() })
		end, { desc = "Find Files (root)" })
		keymap.set("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", { desc = "Find Text (cwd)" })
		keymap.set("n", "<leader>fT", function()
			require("telescope.builtin").live_grep({ cwd = Helpers.get_root_dir() })
		end, { desc = "Find Text (root)" })
	end,
}
