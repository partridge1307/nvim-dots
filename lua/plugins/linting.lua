return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		lint.linters_by_ft = {
			go = { "golangcilint" },
		}

		-- exclude lint
		lint.linters_by_ft = {
			json = {},
		}

		vim.keymap.set("n", "<leader>cl", function()
			lint.try_lint()
		end, { desc = "Linting" })
	end,
}
