require("nvim-treesitter.configs").setup({
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				["ia"] = "@parameter.inner",
				["aa"] = "@parameter.outer",

				["if"] = "@function.inner",
				["af"] = "@function.outer",

				["ic"] = "@conditional.inner",
				["ac"] = "@conditional.outer",

				["il"] = "@loop.inner",
				["al"] = "@loop.outer",
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				[")F"] = { query = "@function.inner" },
				[")C"] = { query = "@conditional.inner" },
				[")L"] = { query = "@loop.inner" },
				[")P"] = { query = "@parameter.inner" },
				[")B"] = { query = "@block.inner" },
				[")T"] = { query = "@textobject.inner" },
			},
			goto_previous_start = {
				["(F"] = { query = "@function.inner" },
				["(C"] = { query = "@conditional.inner" },
				["(L"] = { query = "@loop.inner" },
				["(P"] = { query = "@parameter.inner" },
				["(B"] = { query = "@block.inner" },
				["(T"] = { query = "@textobject.inner" },
			},
		},

		lsp_interop = {
			enable = true,
			border = "none",
			floating_preview_opts = {},
			peek_definition_code = {
				["<leader>pf"] = "@function.outer",
			},
		},
	},
})
-- Jump to previous variable and select it (Ctrl+h)
vim.keymap.set({ "n", "v" }, "<C-h>", function()
	require("nvim-treesitter.textobjects.move").goto_previous_start("@variable.declaration")
	-- If in normal mode, switch to visual and select the variable
	if vim.fn.mode() == "n" then
		vim.cmd("normal! viw")
	end
end)

-- Jump to next variable and select it (Ctrl+l)
vim.keymap.set({ "n", "v" }, "<C-l>", function()
	require("nvim-treesitter.textobjects.move").goto_next_start("@variable.declaration")
	-- If in normal mode, switch to visual and select the variable
	if vim.fn.mode() == "n" then
		vim.cmd("normal! viw")
	end
end)
