local M = {}

M.keymap = vim.keymap

M.set_keymap_for_all_modes = function(key, cmd)
	local modes = { "n", "v", "x", "s", "o", "l" }
	for _, mode in ipairs(modes) do
		M.keymap.set(mode, key, cmd, {
			noremap = true,
			silent = true,
		})
	end
end

M.get_selected_text = function(opts)
	local options = opts or {}
	local keep_newlines = options.keep_newlines

	local save_reg = vim.fn.getreg('"')
	local save_reg_type = vim.fn.getregtype('"')

	vim.cmd('noau normal! "vy')

	local selection = vim.fn.getreg('"')

	vim.fn.setreg('"', save_reg, save_reg_type)

	if not keep_newlines then
		selection = string.gsub(selection, "\n", "")
	else
		selection = string.gsub(selection, "\n$", "")
	end

	return selection
end

M.trim = function(s)
	return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

return M
