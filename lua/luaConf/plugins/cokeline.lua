return {
	{
		"nvim-cokeline",
		for_cat = "general.always",
		event = "BufAdd",
		after = function()
			local colorUtils = require("colorUtils")
			local comments_fg = colorUtils.get_hex_of_hlgroup("Comment", "fg")

			local mainColors = function(buffer)
				if buffer.is_focused then
					if buffer.diagnostics.errors ~= 0 then
						return vim.g.palette_base08_opaque
					elseif buffer.is_modified then
						return vim.g.palette_base0B_opaque
					elseif buffer.diagnostics.warnings ~= 0 then
						return vim.g.palette_base09_opaque
					elseif buffer.diagnostics.infos ~= 0 then
						return vim.g.palette_base0C_opaque
					elseif buffer.diagnostics.hints ~= 0 then
						return vim.g.palette_base0C_opaque
					else
						return vim.g.palette_base09_opaque
					end
				else
					if buffer.diagnostics.errors ~= 0 then
						return vim.g.palette_base08_opaque
					elseif buffer.is_modified then
						return vim.g.palette_base0A_opaque
					elseif buffer.diagnostics.warnings ~= 0 then
						return vim.g.palette_base09_opaque
					elseif buffer.diagnostics.infos ~= 0 then
						return vim.g.palette_base0C_opaque
					elseif buffer.diagnostics.hints ~= 0 then
						return vim.g.palette_base0C_opaque
					else
						return vim.g.palette_0A_opaque
					end
				end
			end

			local components = {
				separator = {
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
					bg = mainColors,
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
					fg = comments_fg,
					truncation = { priority = 1 },
				},

				filename_root = {
					text = function(buffer)
						return vim.fn.fnamemodify(buffer.filename, ":r")
					end,
					fg = mainColors,
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
					fg = mainColors,
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
					bg = "NONE",
					fg = function(buffer)
						if buffer.is_focused then
							if buffer.diagnostics.errors ~= 0 then
								return vim.g.palette_base08_opaque
							elseif buffer.diagnostics.warnings ~= 0 then
								return vim.g.palette_base09_opaque
							elseif buffer.diagnostics.infos ~= 0 then
								return vim.g.palette_base0C_opaque
							elseif buffer.diagnostics.hints ~= 0 then
								return vim.g.palette_base0C_opaque
							else
								return "NONE"
							end
						else
							if buffer.diagnostics.errors ~= 0 then
								return vim.g.palette_base08_opaque
							elseif buffer.diagnostics.warnings ~= 0 then
								return vim.g.palette_base09_opaque
							elseif buffer.diagnostics.infos ~= 0 then
								return vim.g.palette_base04_opaque
							elseif buffer.diagnostics.hints ~= 0 then
								return vim.g.palette_base0C_opaque
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
							return vim.g.palette_base0D_opaque
						else
							return vim.g.palette_base0D_opaque
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

				components = {
					components.separator,
					components.separator,
					components.index,
					components.lil_guy,
					components.devicon_or_pick_letter,
					components.separator,
					components.filename_root,
					components.filename_extension,
					components.separator,
					components.diagnostics,
					components.close_or_unsaved,
					components.separator,
				},
			})
		end,
	},
}
