return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")

		wk.setup({})

		wk.add({
			{ "<leader>b", group = "Buffers" },
			{ "<leader>c", group = "Codes" },
			{ "<leader>f", group = "Find" },
			{ "<leader>g", group = "Git" },
			{ "<leader>x", group = "Diagnostics" },
			{ "<leader>w", group = "Windows" },
		})

		wk.add({
			"<leader>?",
			function()
				wk.show()
			end,
			desc = "Keymaps",
		})
	end,
}
