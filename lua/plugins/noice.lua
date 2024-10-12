return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				timeout = 3000,
				max_width = 60,
				max_height = 80,
				stages = "static",
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
							{ find = "; after #%d+" },
							{ find = "; before #%d+" },
						},
					},
					view = "mini",
				},
				{
					filter = {
						event = "msg_show",
						any = {
							{ find = "%d+L, %d+B" },
							{ find = "%d+ lines yanked" },
							{ find = "%d+ fewer lines" },
							{ find = "%d+ more lines" },
						},
					},
					opts = { skip = true },
				},
			},
			cmdline = {
				view = "cmdline",
			},
			presets = {
				long_message_to_split = true,
			},
		})
	end,
}
