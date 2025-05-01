return {
	{
		"toggleterm.nvim",
		for_cat = "general.extra",
		event = "BufEnter",
		after = function(plugin)
			require("toggleterm").setup({
				shell = "zsh",
				shade_terminals = false,
				size = 20,
				on_open = function()
					vim.cmd("startinsert")
				end,
				hide_numbers = true,
				autochdir = true,
			})
		end,
	},
}
