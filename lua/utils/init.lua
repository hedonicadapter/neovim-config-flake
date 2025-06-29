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

return M
