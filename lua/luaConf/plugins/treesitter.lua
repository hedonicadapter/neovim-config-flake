return {
	{
		"nvim-treesitter",
		for_cat = "general.treesitter",
		event = "DeferredUIEnter",
		load = function(name)
			vim.cmd.packadd(name)
			vim.cmd.packadd("nvim-treesitter-textobjects")
			vim.cmd.packadd("nvim-ts-context-commentstring")
			vim.cmd.packadd("nvim-treesitter-context")

			if nixCats("web") then
				vim.cmd.packadd("nvim-ts-autotag")
			end
		end,
		on_require = { "nvim-treesitter", "nvim-treesitter.configs", "nvim-treesitter.install" },
		after = function()
			require("nvim-treesitter.install").compilers = { "gcc" }
			require("nvim-treesitter.configs").setup({
				highlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-m>",
						node_incremental = "<C-m>",
						scope_incremental = false,
						node_decremental = "<C-b>",
					},
				},
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
			require("treesitter-context").setup({
				enable = true,
				max_lines = 4,
			})
			if nixCats("web") then
				require("nvim-ts-autotag").setup({})
			end
		end,
	},
}
