return {
	{
		"render-markdown.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		ft = { "markdown", "vimwiki", "codecompanion" },
		after = function(plugin)
			require("render-markdown").setup({
				completions = { lsp = { enabled = true } },
				file_types = { "markdown", "vimwiki", "codecompanion" },
				render_modes = true,

				heading = {
					border = true,
					sign = false,
				},
				indent = {
					enabled = true,
					skip_heading = true,
				},
			})

			-- vim.api.nvim_create_autocmd("FileType", {
			-- 	pattern = "markdown",
			-- 	callback = function()
			-- 		vim.opt_local.wrap = true
			-- 		vim.opt_local.linebreak = true
			--
			-- 		vim.opt.linespace = 4
			--
			-- 		vim.opt_local.numberwidth = 6
			-- 	end,
			-- })
		end,
	},
}
