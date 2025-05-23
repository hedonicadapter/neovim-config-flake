return {
	{
		"render-markdown.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
			require("render-markdown").setup({
				completions = { blink = { enabled = true } },
				render_modes = true,
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "markdown",
				callback = function()
					vim.opt_local.wrap = true
					vim.opt_local.linebreak = true

					vim.opt.linespace = 4

					vim.opt_local.numberwidth = 6
				end,
			})
		end,
	},
}
