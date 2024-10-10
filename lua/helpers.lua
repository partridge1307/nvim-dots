Helpers = {}

function Helpers.get_root_dir()
	local status, root = pcall(vim.fn.systemlist, "git rev-parse --show-toplevel")
	local dirStr = ""

	if not status then
		dirStr = vim.lsp.get_clients()[1].config.root_dir
	else
		dirStr = root[1]
	end

	return dirStr
end

--- @param type "zoom_in" | "zoom_out"
--- @param img Image
function Helpers.zoom_image(type, img)
	local scaling_factor = img.image_height / img.image_width

	local new_width = 0
	local new_height = 0
	if type == "zoom_in" then
		new_width = img.image_width * 1.25
		new_height = img.image_height * 1.25
	else
		new_width = img.image_width / 1.25
		new_height = img.image_height / 1.25
	end

	local win_width = vim.o.columns * 10 * 2
	local win_height = vim.o.lines * 16 * 2
	local min_size = 240

	if new_width > win_width then
		new_width = win_width
		new_height = new_width * scaling_factor
	elseif new_width < min_size then
		new_width = min_size
		new_height = new_width * scaling_factor
	end

	if new_height > win_height then
		new_height = win_height
		new_width = new_height / scaling_factor
	elseif new_height < min_size then
		new_height = min_size
		new_width = new_height / scaling_factor
	end

	img.image_width = new_width
	img.image_height = new_height

	return img
end
