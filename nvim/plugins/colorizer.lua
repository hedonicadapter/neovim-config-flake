require("colorizer").setup({
	filetypes = {
		user_default_options = {
			css = true,
			css_fn = true,
			mode = "background",
			tailwind = true,
			sass = {
				enable = true,
				parsers = { "css" },
			},
		},
	},
})

vim.api.nvim_exec2(
	[[
            autocmd BufEnter * silent! :ColorizerAttachToBuffer
          ]],
	{ output = false }
)
