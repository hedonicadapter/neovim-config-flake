return {
	{
		"reactive.nvim",
		event = "BufReadPost",
		for_cat = "general.extra",
		after = function(plugin)
			local palette_opaque = nixCats.extra("palette_opaque")
			local colorUtils = require("colorUtils")
			local contrast = nixCats.extra("contrast")
			local modeColors = nixCats.extra("modeColors")

			require("reactive").add_preset({
				name = "customCursorLine",
				init = function()
					vim.opt.cursorline = true
				end,
				modes = {
					n = {
						winhl = {
							CursorLine = { bg = colorUtils.darkenColorIfOpaque(modeColors.n, contrast) },
							CursorLineNr = {
								fg = palette_opaque.base07,
								bg = colorUtils.darkenColorIfOpaque(modeColors.n, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.n, fg = palette_opaque.base07 },
						},
					},
					i = {
						winhl = {
							CursorLine = { bg = colorUtils.darkenColorIfOpaque(modeColors.i, contrast) },
							CursorLineNr = {
								fg = modeColors.i,
								bg = colorUtils.darkenColorIfOpaque(modeColors.i, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.i, fg = palette_opaque.base00 },
						},
					},
					c = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.c, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.c,
								bg = colorUtils.darkenColorIfOpaque(modeColors.c, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.c, fg = palette_opaque.base07 },
						},
					},
					C = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.C, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.C,
								bg = colorUtils.darkenColorIfOpaque(modeColors.C, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.C, fg = palette_opaque.base07 },
						},
					},
					v = {
						winhl = {
							Visual = { bg = colorUtils.darkenColorIfOpaque(modeColors.v, contrast) },
							CursorLineNr = {
								fg = modeColors.v,
								bg = colorUtils.darkenColorIfOpaque(modeColors.v, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.v, fg = palette_opaque.base00 },
						},
					},
					[{ "V", "\x16" }] = {
						winhl = {
							Visual = { bg = colorUtils.darkenColorIfOpaque(modeColors.V, contrast) },
							CursorLineNr = {
								fg = modeColors.V,
								bg = colorUtils.darkenColorIfOpaque(modeColors.V, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.V, fg = palette_opaque.base00 },
						},
					},
					r = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.r, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.r,
								bg = colorUtils.darkenColorIfOpaque(modeColors.r, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.r, fg = palette_opaque.base07 },
						},
					},
					R = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.R, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.R,
								bg = colorUtils.darkenColorIfOpaque(modeColors.R, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.R, fg = palette_opaque.base07 },
						},
					},
					s = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.s, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.s,
								bg = colorUtils.darkenColorIfOpaque(modeColors.s, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.s, fg = palette_opaque.base07 },
						},
					},
					S = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.S, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.S,
								bg = colorUtils.darkenColorIfOpaque(modeColors.S, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.S, fg = palette_opaque.base07 },
						},
					},
					y = {
						winhl = {
							CursorLine = {
								bg = colorUtils.darkenColorIfOpaque(modeColors.y, contrast),
								fg = palette_opaque.base07,
							},
							CursorLineNr = {
								fg = modeColors.y,
								bg = colorUtils.darkenColorIfOpaque(modeColors.y, contrast),
							},
						},
						hl = {
							Cursor = { bg = modeColors.y, fg = palette_opaque.base07 },
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
