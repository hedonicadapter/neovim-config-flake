return {
	{
		"staline.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function(plugin)
			local palette = nixCats.extra("palette")

			require("staline").setup({
				sections = {
					left = { "-mode" },
					mid = {},
					right = { "- ", "-cwd", "-branch" },
				},
				mode_colors = {
					i = palette.base0F,
					n = palette.base03,
					c = palette.base0E,
					v = palette.base0C,
					V = palette.base0C,
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
