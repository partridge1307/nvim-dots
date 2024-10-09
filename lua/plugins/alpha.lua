return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                                     ",
			"██████╗  █████╗ ██████╗ ████████╗██████╗ ██╗██████╗  ██████╗ ███████╗",
			"██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██║██╔══██╗██╔════╝ ██╔════╝",
			"██████╔╝███████║██████╔╝   ██║   ██████╔╝██║██║  ██║██║  ███╗█████╗  ",
			"██╔═══╝ ██╔══██║██╔══██╗   ██║   ██╔══██╗██║██║  ██║██║   ██║██╔══╝  ",
			"██║     ██║  ██║██║  ██║   ██║   ██║  ██║██║██████╔╝╚██████╔╝███████╗",
			"╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═════╝  ╚═════╝ ╚══════╝",
			"                                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("SPACE e", "  > File Explorer", "<CMD>Neotree filesystem reveal left toggle<CR>"),
			dashboard.button("SPACE ff", "󰱼  > Find Files", "<CMD>Telescope find_files<CR>"),
			dashboard.button("SPACE ft", "  > Find Text", "<CMD>Telescope live_grep<CR>"),
			dashboard.button("SPACE gg", "  > Lazy Git", "<CMD>LazyGit<CR>"),
			dashboard.button("l", "󰒲  > Lazy", "<CMD>Lazy<CR>"),
			dashboard.button("q", "  > Touch Grass", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
