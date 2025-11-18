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

M.get_selected_text_or_cword = function()
	local vstart = vim.fn.getpos("'<")
	local vend = vim.fn.getpos("'>")

	local line_start = vstart[2]
	local line_end = vend[2]

	local lines = vim.fn.getline(line_start, line_end)
	if lines == "" then
		lines = vim.fn.expand("<cword>")
	elseif type(lines) == "table" then
		lines = table.concat(lines, "")
	end

	return lines
end

return M
