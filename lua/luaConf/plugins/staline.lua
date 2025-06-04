return {
	{
		"staline.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function(plugin)
			local palette_opaque = nixCats.extra("palette_opaque")
			local colorUtils = require("colorUtils")
			local contrast = nixCats.extra("contrast")
			local modeColors = nixCats.extra("modeColors")

			require("staline").setup({
				sections = {
					left = { "-mode" },
					mid = {},
					right = { "- ", "-cwd", "-branch" },
				},
				mode_colors = {
					n = colorUtils.darkenColorIfOpaque(modeColors.n, contrast),
					i = colorUtils.darkenColorIfOpaque(modeColors.i, contrast),

					c = colorUtils.darkenColorIfOpaque(modeColors.c, contrast),
					C = colorUtils.darkenColorIfOpaque(modeColors.c, contrast),

					v = colorUtils.darkenColorIfOpaque(modeColors.v, contrast),
					V = colorUtils.darkenColorIfOpaque(modeColors.v, contrast),

					r = colorUtils.darkenColorIfOpaque(modeColors.r, contrast),
					R = colorUtils.darkenColorIfOpaque(modeColors.R, contrast),

					y = colorUtils.darkenColorIfOpaque(modeColors.y, contrast),
				},
				mode_icons = {
					n = "NORMAL",
					i = "INSERT",

					c = "COMMAND",
					C = "COMMAND",

					v = "VISUAL",
					V = "VISUAL",

					r = "REPLACE",
					R = "REPLACE",

					y = "YANK",
				},
				defaults = {
					true_colors = true,
					branch_symbol = " ",
					bg = "none",
					fg = palette_opaque.base07,
				},
			})
		end,
	},
}
