local Layout = require("nui.layout")
local Popup = require("nui.popup")

local telescope = require("telescope")
local actions = require("telescope.actions")
local TSLayout = require("telescope.pickers.layout")

local function make_popup(options)
	local popup = Popup(options)
	function popup.border:change_title(title)
		popup.border.set_text(popup.border, "top", title)
	end
	return TSLayout.Window(popup)
end

telescope.setup({
	defaults = {
		layout_strategy = "flex",
		layout_config = {
			horizontal = {
				size = {
					width = "90%",
					height = "60%",
				},
			},
			vertical = {
				size = {
					width = "90%",
					height = "90%",
				},
			},
		},
		create_layout = function(picker)
			local border = {
				results = {
					top_left = "╭",
					top = "─",
					top_right = "╮",
					right = "│",
					bottom_right = "╯",
					bottom = "─",
					bottom_left = "╰",
					left = "│",
				},
				results_patch = {
					minimal = {
						top_left = "",
						top_right = "",
					},
					horizontal = {
						top_left = "╭",
						top = "─",
						top_right = "╮",
						right = "│",
						bottom_right = "╯",
						bottom = "─",
						bottom_left = "╰",
						left = "│",
					},
					vertical = {
						top_left = "╭",
						top = "─",
						top_right = "╮",
						right = "│",
						bottom_right = "╯",
						bottom = "─",
						bottom_left = "╰",
						left = "│",
					},
				},
				prompt = {
					top_left = "╭",
					top = "─",
					top_right = "╮",
					right = "│",
					bottom_right = "╯",
					bottom = "─",
					bottom_left = "╰",
					left = "│",
				},
				prompt_patch = {
					minimal = {
						bottom_right = "╯",
					},
					horizontal = {
						top_left = "╭",
						top = "─",
						top_right = "╮",
						right = "│",
						bottom_right = "╯",
						bottom = "─",
						bottom_left = "╰",
						left = "│",
					},
					vertical = {
						top_left = "╭",
						top = "─",
						top_right = "╮",
						right = "│",
						bottom_right = "╯",
						bottom = "─",
						bottom_left = "╰",
						left = "│",
					},
				},
				preview = {
					top_left = "╭",
					top = "─",
					top_right = "╮",
					right = "│",
					bottom_right = "╯",
					bottom = "─",
					bottom_left = "╰",
					left = "│",
				},
				preview_patch = {
					minimal = {},
					horizontal = {
						top_left = "╭",
						top = "─",
						top_right = "╮",
						right = "│",
						bottom_right = "╯",
						bottom = "─",
						bottom_left = "╰",
						left = "│",
					},
					vertical = {
						top_left = "╭",
						top = "─",
						top_right = "╮",
						right = "│",
						bottom_right = "╯",
						bottom = "─",
						bottom_left = "╰",
						left = "│",
					},
				},
			}

			local results = make_popup({
				focusable = false,
				border = {
					style = border.results,
					text = {
						top = picker.results_title,
						top_align = "center",
					},
				},
				win_options = {
					winhighlight = "Normal:TelescopeNormal,FloatBorder:TelescopeNormal",
				},
			})

			local prompt = make_popup({
				enter = true,
				border = {
					style = border.prompt,
					text = {
						top = picker.prompt_title,
						top_align = "center",
					},
				},
				win_options = {
					winhighlight = "Normal:TelescopeNormal,FloatBorder:TelescopeNormal",
				},
			})

			local preview = make_popup({
				focusable = false,
				border = {
					style = border.preview,
					text = {
						top = picker.preview_title,
						top_align = "center",
					},
				},
				win_options = {
					winhighlight = "Normal:TelescopeNormal,FloatBorder:TelescopeNormal",
				},
			})

			local box_by_kind = {
				vertical = Layout.Box({
					Layout.Box(preview, { grow = 1 }),
					Layout.Box(results, { grow = 1 }),
					Layout.Box(prompt, { size = 3 }),
				}, { dir = "col" }),
				horizontal = Layout.Box({
					Layout.Box({
						Layout.Box(results, { grow = 1 }),
						Layout.Box(prompt, { size = 3 }),
					}, { dir = "col", size = "50%" }),
					Layout.Box(preview, { size = "50%" }),
				}, { dir = "row" }),
				minimal = Layout.Box({
					Layout.Box(results, { grow = 1 }),
					Layout.Box(prompt, { size = 3 }),
				}, { dir = "col" }),
			}

			local function get_box()
				local strategy = picker.layout_strategy
				if strategy == "vertical" or strategy == "horizontal" then
					return box_by_kind[strategy], strategy
				end

				local height, width = vim.o.lines, vim.o.columns
				local box_kind = "horizontal"
				if width < 100 then
					box_kind = "vertical"
					if height < 40 then
						box_kind = "minimal"
					end
				end
				return box_by_kind[box_kind], box_kind
			end

			local function prepare_layout_parts(layout, box_type)
				layout.results = results
				results.border:set_style(border.results_patch[box_type])

				layout.prompt = prompt
				prompt.border:set_style(border.prompt_patch[box_type])

				if box_type == "minimal" then
					layout.preview = nil
				else
					layout.preview = preview
					preview.border:set_style(border.preview_patch[box_type])
				end
			end

			local function get_layout_size(box_kind)
				return picker.layout_config[box_kind == "minimal" and "vertical" or box_kind].size
			end

			local box, box_kind = get_box()
			local layout = Layout({
				relative = "editor",
				position = "50%",
				size = get_layout_size(box_kind),
			}, box)

			layout.picker = picker
			prepare_layout_parts(layout, box_kind)

			local layout_update = layout.update
			function layout:update()
				local box, box_kind = get_box()
				prepare_layout_parts(layout, box_kind)
				layout_update(self, { size = get_layout_size(box_kind) }, box)
			end

			return TSLayout(layout)
		end,
	},
	mappings = {
		i = {
			["<Tab>"] = actions.move_selection_next,
			["<S-Tab>"] = actions.move_selection_previous,
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("undo")
telescope.load_extension("session-lens")
telescope.load_extension("live_grep_args")

local function open_telescope_buffers_with_jump(prefer_forward)
	local jump_list = vim.fn.getjumplist()[1] -- Get the jump list
	local current_position = vim.api.nvim_win_get_cursor(0)
	local current_buf = vim.api.nvim_get_current_buf()

	local function find_closest_jump()
		local closest_index, closest_distance = nil, math.huge

		for i, jump in ipairs(jump_list) do
			if jump.bufnr == current_buf then
				local line_distance = math.abs(jump.lnum - current_position[1])
				if
					(prefer_forward and jump.lnum > current_position[1])
					or (not prefer_forward and jump.lnum < current_position[1])
				then
					if line_distance < closest_distance then
						closest_distance = line_distance
						closest_index = i
					end
				end
			end
		end

		return closest_index
	end

	local preselect_index = find_closest_jump()

	if preselect_index then
		telescope.buffers({
			default_selection_index = preselect_index,
		})
	else
		telescope.buffers()
	end
end

vim.keymap.set("n", "<Tab>", function()
	open_telescope_buffers_with_jump(true)
end, { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", function()
	open_telescope_buffers_with_jump(false)
end, { noremap = true, silent = true })
