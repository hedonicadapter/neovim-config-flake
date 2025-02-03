require("toggleterm").setup({
	shell = "zsh",
	shade_terminals = false,
	open_mapping = [[<c-space>]],
	size = 20,
	on_open = function()
		vim.cmd("startinsert")
	end,
	hide_numbers = true,
	autochdir = true,
})

-- vim.api.nvim_exec2(
-- 	[[
-- 		autocmd TermOpen term://*toggleterm* startinsert | normal! A
-- 		autocmd TermLeave term://*toggleterm* stopinsert
-- 	]],
-- 	{ output = false }
-- )

-- vim.api.nvim_set_keymap("n", "<C-Space>", ":ToggleTerm size=20<CR>", {
-- 	noremap = true,
-- 	silent = true,
-- })
--
-- vim.api.nvim_set_keymap("t", "<C-Space>", "<cmd> :ToggleTerm size=20<CR>", {
-- 	noremap = true,
-- 	silent = true,
-- })
