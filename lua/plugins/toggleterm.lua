return {
	"akinsho/toggleterm.nvim",
	version = "*",
	event = "VeryLazy",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			direction = "float",
			highlights = {
				FloatBorder = {
					guifg = "#2f334d",
				},
			},
			float_opts = {
				border = "curved",
				width = math.floor(vim.api.nvim_get_option_value("columns", {}) * 0.9),
				height = math.floor(vim.api.nvim_get_option_value("lines", {}) * 0.85),
			},
		})

		local key = vim.keymap
		local terminal = require("toggleterm.terminal").Terminal

		vim.api.nvim_create_autocmd("TermOpen", {
			pattern = "term://*",
			callback = function()
				vim.keymap.set("t", "<S-ESC>", [[<C-\><C-n>]], { buffer = 0 })
			end,
		})

		key.set("n", "<leader>gg", function()
			terminal
				:new({
					cmd = "lazygit",
					hidden = true,
				})
				:toggle()
		end, { desc = "Lazygit" })

		key.set("n", "<leader>wtf", function()
			terminal:new():open()
		end, { desc = "Terminal (float)" })

		key.set("n", "<leader>wtv", function()
			terminal
				:new({
					direction = "horizontal",
				})
				:open()
		end, { desc = "Terminal (vertical)" })

		key.set("n", "<leader>wth", function()
			terminal
				:new({
					direction = "vertical",
				})
				:open()
		end, { desc = "Terminal (horizontal)" })
	end,
}
