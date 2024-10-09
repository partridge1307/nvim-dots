return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				timeout = 2000,
				max_width = 60,
				max_height = 80,
				stages = "slide",
				render = "simple",
			},
		},
	},
	config = function()
		if vim.o.filetype == "lazy" then
			vim.cmd([[messages clear]])
		end

		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						any = {
							{ find = "%d+L, %d+B" },
							{ find = "; after #%d+" },
							{ find = "; before #%d+" },
						},
					},
					view = "mini",
				},
			},
			cmdline = {
				view = "cmdline",
			},
			presets = {
				long_message_to_split = true,
				lsp_doc_border = true,
			},
		})
	end,
}
