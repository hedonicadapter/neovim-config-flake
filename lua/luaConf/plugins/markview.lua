return {
	{
		"markview.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
			require("markview").setup({
				preview = {
					filetypes = {
						"md",
						"markdown",
						"norg",
						"rmd",
						"org",
						"vimwiki",
						"typst",
						"latex",
						"quarto",
						"codecompanion",
					},
					ignore_buftypes = {},
					hybrid_modes = { "i" },
					condition = function(buffer)
						local ft, bt = vim.bo[buffer].ft, vim.bo[buffer].bt

						if bt == "nofile" and ft == "codecompanion" then
							return true
						elseif bt == "nofile" then
							return false
						else
							return true
						end
					end,
				},
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "codecompanion",
				command = "Markview attach",
			})
		end,
	},
}
