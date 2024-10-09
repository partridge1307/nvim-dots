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
