return {
	"3rd/image.nvim",
	event = "BufEnter",
	ft = { "png", "jpg", "jpeg", "gif", "webp", "avif" },
	dependencies = {
		{
			"vhyrro/luarocks.nvim",
			opts = {
				rocks = { "magick" },
			},
		},
	},
	config = function()
		local image = require("image")

		---@diagnostic disable-next-line: missing-fields
		image.setup({
			backend = "kitty",
			max_width = 1000,
			max_width_window_percentage = 100,
			max_height = 1000,
			max_height_window_percentage = 100,
		})

		local key = vim.keymap

		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			group = vim.api.nvim_create_augroup("UserImage", {}),
			pattern = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
			callback = function(ev)
				local bufnr = ev.buf
				local images = image.get_images({ buffer = bufnr })
				if #images ~= 1 then
					return
				end

				local preview_image = images[1]

				key.set("n", "+", function()
					local resized_img = Helpers.zoom_image("zoom_in", preview_image)
					resized_img:render()
				end, { buffer = bufnr })
				key.set("n", "_", function()
					local resized_img = Helpers.zoom_image("zoom_out", preview_image)
					resized_img:render()
				end, { buffer = bufnr })
			end,
		})
	end,
}
