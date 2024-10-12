return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"gopls",
			},
		})

		mason_installer.setup({
			ensure_installed = {
				-- linters
				"stylua",
				"golangci-lint",
				-- formatters
				"gofumpt",
				"goimports",
				"golines",
				"clang-format",
			},
		})
	end,
}
