return {
	{
		"staline.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function(plugin)
			local colors = nixCats.extra("colors")

			require("staline").setup({
				sections = {
					left = { "-mode" },
					mid = {},
					right = { "- ", "-cwd", "-branch" },
				},
				mode_colors = {
					i = colors.base0F,
					n = colors.base03,
					c = colors.base0E,
					v = colors.base0C,
					V = colors.base0C,
				},
				mode_icons = {
					n = "NORMAL",
					i = "INSERT",
					c = "COMMAND",
					v = "VISUAL",
					V = "VISUAL",
				},
				defaults = {
					true_colors = true,
					branch_symbol = " ",
					bg = "none",
				},
			})
		end,
	},
}
