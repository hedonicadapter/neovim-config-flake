return {
	{
		"nvim-cokeline",
		for_cat = "general.always",
		event = "DeferredUIEnter",
		after = function()
			local palette_opaque = nixCats.extra("palette_opaque")
			local palette = nixCats.extra("palette")
			local colorUtils = require("colorUtils")
			local contrast = nixCats.extra("contrast")
			local comments_fg = colorUtils.get_hex_of_hlgroup("Comment", "fg")
			local darkMode = colorUtils.is_dark_color(palette_opaque.base00)

			vim.notify(palette.base00)
			vim.notify(tostring(darkMode))

			local bgColors = function(buffer)
				if darkMode then
					if buffer.is_focused then
						return palette_opaque.base02
					else
						return palette_opaque.base01
					end
				else
					if buffer.is_focused then
						return palette_opaque.base06
					else
						return palette_opaque.base05
					end
				end
			end

			local fgColors = function(buffer)
				if buffer.is_focused then
					if buffer.diagnostics.errors ~= 0 then
						return palette_opaque.base08
					elseif buffer.is_modified then
						return palette_opaque.base0B
					elseif buffer.diagnostics.warnings ~= 0 then
						return palette_opaque.base09
					elseif buffer.diagnostics.infos ~= 0 then
						return palette_opaque.base0C
					elseif buffer.diagnostics.hints ~= 0 then
						return palette_opaque.base0C
					else
						return palette_opaque.base09
					end
				else
					if buffer.diagnostics.errors ~= 0 then
						return colorUtils.darkenColorIfOpaque(palette_opaque.base08, contrast * 0.9)
					elseif buffer.is_modified then
						return colorUtils.darkenColorIfOpaque(palette_opaque.base0B, contrast * 0.9)
					elseif buffer.diagnostics.warnings ~= 0 then
						return colorUtils.darkenColorIfOpaque(palette_opaque.base09, contrast * 0.9)
					elseif buffer.diagnostics.infos ~= 0 then
						return colorUtils.darkenColorIfOpaque(palette_opaque.base0C, contrast * 0.9)
					elseif buffer.diagnostics.hints ~= 0 then
						return colorUtils.darkenColorIfOpaque(palette_opaque.base0C, contrast * 0.9)
					else
						return colorUtils.darkenColorIfOpaque(palette_opaque.base09, contrast * 0.9)
					end
				end
			end

			local components = {
				separator_external = {
					text = " ",
					truncation = { priority = 1 },
					bg = "NONE",
				},
				separator_internal = {
					text = " ",
					truncation = { priority = 1 },
				},

				lil_guy = {
					text = function(buffer)
						if not buffer.is_focused then
							return ""
						elseif buffer.diagnostics.errors ~= 0 then
							return "(٥¯ ¯) "
						elseif buffer.diagnostics.warnings ~= 0 then
							return "<(˶˃⤙˂˶)> "
						elseif buffer.is_modified then
							return "~(‾ࡇ‾)/ "
						elseif buffer.diagnostics.infos ~= 0 then
							return "(｡- .•) "
						elseif buffer.diagnostics.hints ~= 0 then
							return "\\( ‾ ｡‾)◞ "
						else
							return "(~‾⌣‾)> "
						end
					end,
					truncation = { priority = 1 },
				},

				devicon_or_pick_letter = {
					text = function(buffer)
						return buffer.devicon.icon
					end,
					fg = function(buffer)
						return (buffer.is_focused and buffer.devicon.color or comments_fg)
					end,
					style = function(_)
						return "italic,bold" or nil
					end,
					truncation = { priority = 1 },
				},

				index = {
					text = function(buffer)
						return buffer.index .. " "
					end,
					fg = function(buffer)
						return buffer.is_focused and palette_opaque.base07 or comments_fg
					end,
					truncation = { priority = 1 },
				},

				filename_root = {
					text = function(buffer)
						return vim.fn.fnamemodify(buffer.filename, ":r")
					end,
					style = function(buffer)
						return ((buffer.is_focused and buffer.diagnostics.errors ~= 0) and "bold,underline")
							or (buffer.is_focused and "bold,italic")
							or (buffer.diagnostics.errors ~= 0 and "underline")
							or nil
					end,
					truncation = {
						priority = 3,
						direction = "middle",
					},
				},

				filename_extension = {
					text = function(buffer)
						local ext = vim.fn.fnamemodify(buffer.filename, ":e")
						return ext ~= "" and "." .. ext or ""
					end,
					style = function(buffer)
						return (buffer.is_focused and buffer.diagnostics.errors ~= 0 and "bold,underline") or nil
					end,
					truncation = {
						priority = 2,
						direction = "left",
					},
				},

				diagnostics = {
					text = function(buffer)
						return (buffer.diagnostics.errors ~= 0 and "󰰱 " .. buffer.diagnostics.errors .. " ")
							or (buffer.diagnostics.warnings ~= 0 and " " .. buffer.diagnostics.warnings .. " ")
							or (buffer.diagnostics.infos ~= 0 and " " .. buffer.diagnostics.infos .. " ")
							or (buffer.diagnostics.hints ~= 0 and "󱠂 " .. buffer.diagnostics.hints .. " ")
							or ""
					end,
					fg = function(buffer)
						if buffer.is_focused then
							if buffer.diagnostics.errors ~= 0 then
								return palette_opaque.base08
							elseif buffer.diagnostics.warnings ~= 0 then
								return palette_opaque.base09
							elseif buffer.diagnostics.infos ~= 0 then
								return palette_opaque.base0C
							elseif buffer.diagnostics.hints ~= 0 then
								return palette_opaque.base0C
							else
								return "NONE"
							end
						else
							if buffer.diagnostics.errors ~= 0 then
								return palette_opaque.base08
							elseif buffer.diagnostics.warnings ~= 0 then
								return palette_opaque.base09
							elseif buffer.diagnostics.infos ~= 0 then
								return palette_opaque.base04
							elseif buffer.diagnostics.hints ~= 0 then
								return palette_opaque.base0C
							else
								return "NONE"
							end
						end
					end,
					style = "bold",
					truncation = { priority = 1 },
				},

				close_or_unsaved = {
					text = function(buffer)
						return buffer.is_modified and "● " or ""
					end,
					fg = function(buffer)
						if not buffer.is_modified then
							return nil
						end

						if buffer.is_focused then
							return palette_opaque.base0D
						else
							return palette_opaque.base0D
						end
					end,
					truncation = { priority = 1 },
				},
			}

			require("cokeline").setup({
				show_if_buffers_are_at_least = 1,

				buffers = {
					-- filter_valid = function(buffer) return buffer.type ~= 'terminal' end,
					-- filter_visible = function(buffer) return buffer.type ~= 'terminal' end,
					focus_on_delete = "next",
					new_buffers_position = "next",
				},

				default_hl = {
					bg = bgColors,
					fg = fgColors,
					bold = function(buffer)
						return buffer.is_focused
					end,
				},

				components = {
					components.separator_internal,
					components.index,
					components.lil_guy,
					-- components.devicon_or_pick_letter,
					components.separator_internal,
					components.filename_root,
					components.filename_extension,
					components.separator_internal,
					components.diagnostics,
					components.close_or_unsaved,
					components.separator_internal,
					components.separator_external,
				},
			})
		end,
	},
}
