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
	local mode = vim.fn.mode()

	if mode == "v" or mode == "V" or mode == "" then
		local save_reg = vim.fn.getreg('"')
		local save_reg_type = vim.fn.getregtype('"')

		vim.cmd('noau normal! "vy')

		local selection = vim.fn.getreg('"')

		vim.fn.setreg('"', save_reg, save_reg_type)

		selection = string.gsub(selection, "\n", "")
		return selection
	else
		return vim.fn.expand("<cword>")
	end
end

return M
