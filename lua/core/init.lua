require("core.options")
require("core.keymaps")
require("core.lazy")

-- set filetype for image
vim.api.nvim_create_autocmd({ "BufRead" }, {
	pattern = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
	callback = function()
		vim.bo.filetype = "image_nvim"
	end,
})
