require("twilight").setup({
	dimming = {
		alpha = 0.5,
	},
	context = 16,
	treesitter = true,
})

vim.api.nvim_exec2(
	[[
    au BufEnter * TwilightEnable
]],
	{ output = false }
)
