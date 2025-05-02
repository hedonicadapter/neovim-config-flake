return {
	{
		"reactive-nvim",
		event = "BufReadPost",
		for_cat = "general.extra",
		after = function(plugin)
			local colors_opaque = nixCats.extra("colors_opaque")
			local colorUtils = require("colorUtils")

			local contrast = 0.8

			local n = colors_opaque.base03
			local i = colors_opaque.base0F
			local c = colors_opaque.base0E
			local v = colors_opaque.base0C
			local y = colors_opaque.base0D
			local r = colors_opaque.base0E

			require("reactive").add_preset({
				name = "customCursorLine",
				init = function()
					vim.opt.cursorline = true
				end,
				modes = {
					n = {
						winhl = {
							CursorLine = { bg = colorUtils.darkenColorIfOpaque(n, contrast) },
							CursorLineNr = {
								fg = colors_opaque.base07,
								bg = colorUtils.darkenColorIfOpaque(n, contrast),
							},
						},
						hl = {
							Cursor = { bg = n, fg = colors_opaque.base07 },
						},
					},
					i = {
						winhl = {
							CursorLine = { bg = colorUtils.darkenColorIfOpaque(i, contrast) },
							CursorLineNr = { fg = i, bg = colorUtils.darkenColorIfOpaque(i, contrast) },
						},
						hl = {
							Cursor = { bg = i, fg = colors_opaque.base00 },
						},
					},
					[{ "c", "C" }] = {
						winhl = {
							CursorLine = { bg = colorUtils.darkenColorIfOpaque(c, contrast), fg = colors_opaque.base07 },
							CursorLineNr = { fg = c, bg = colorUtils.darkenColorIfOpaque(c, contrast) },
						},
						hl = {
							Cursor = { bg = c, fg = colors_opaque.base07 },
						},
					},
					-- visual
					[{ "v", "V", "\x16" }] = {
						winhl = {
							Visual = { bg = colorUtils.darkenColorIfOpaque(v, contrast) },
							CursorLineNr = { fg = v, bg = colorUtils.darkenColorIfOpaque(v, contrast) },
						},
						hl = {
							Cursor = { bg = v, fg = colors_opaque.base00 },
						},
					},
					-- replace
					R = {
						winhl = {
							CursorLine = { bg = colorUtils.darkenColorIfOpaque(r, contrast), fg = colors_opaque.base07 },
							CursorLineNr = { fg = r, bg = colorUtils.darkenColorIfOpaque(r, contrast) },
						},
						hl = {
							Cursor = { bg = r, fg = colors_opaque.base07 },
						},
					},
				},
			})
			require("reactive").setup({
				load = { "customCursorLine" },
			})
		end,
	},
}
