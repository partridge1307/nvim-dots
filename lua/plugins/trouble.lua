return {
	"folke/trouble.nvim",
	opts = {
		focus = true,
	},
	cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<CMD>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Diagnostics (Current)" },
		{ "<leader>xX", "<CMD>Trouble diagnostics toggle<CR>", desc = "Diagnostics" },
		{ "<leader>xl", "<CMD>Trouble loclist toggle<CR>", desc = "Location List" },
		{ "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Quickfix List" },
	},
}
