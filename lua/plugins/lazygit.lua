return {
	"kdheepak/lazygit.nvim",
	lazy = true,
	cmd = {
		"LazyGit",
	},
	init = function()
		vim.g.lazygit_floating_window_scaling_factor = 0.95
	end,
	keys = {
		{ "<leader>gg", "<CMD>LazyGit<CR>", desc = "LazyGit" },
	},
}
