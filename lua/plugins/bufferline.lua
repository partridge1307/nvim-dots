return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	version = "*",
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				right_mouse_command = "",
				indicator = {
					style = "underline",
				},
				style_preset = {
					bufferline.style_preset.no_bold,
					bufferline.style_preset.no_italic,
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return icon .. count
				end,
			},
		})

		local key = vim.keymap

		key.set("n", "<leader>bp", "<CMD>BufferLineTogglePin<CR>", { desc = "Toggle Pin" })
		key.set("n", "<leader>bP", "<CMD>BufferLineGroupClose ungrouped<CR>", { desc = "Delete Non-Pinned Buffers" })
	end,
}
