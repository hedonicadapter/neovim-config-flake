local Layout = require("nui.layout")
local Popup = require("nui.popup")
local utils = require("utils")

local function make_popup(options)
	local popup = Popup(options)
	function popup.border:change_title(title)
		popup.border.set_text(popup.border, "top", title)
	end
	local TSLayout = require("telescope.pickers.layout")
	return TSLayout.Window(popup)
end

-- fix telescope auto insert mode
vim.api.nvim_create_autocmd("WinLeave", {
	callback = function()
		if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
		end
	end,
})

local my_find_files
my_find_files = function(opts, no_ignore)
	opts = opts or {}
	no_ignore = vim.F.if_nil(no_ignore, false)
	opts.attach_mappings = function(_, map)
		map({ "n", "i" }, "<C-h>", function(prompt_bufnr)
			local prompt = require("telescope.actions.state").get_current_line()
			require("telescope.actions").close(prompt_bufnr)
			no_ignore = not no_ignore
			my_find_files({ default_text = prompt }, no_ignore)
		end)
		return true
	end

	if no_ignore then
		opts.no_ignore = true
		opts.hidden = true
		opts.prompt_title = "Find Files <ALL>"
		require("telescope.builtin").find_files(opts)
	else
		opts.prompt_title = "Find Files"
		require("telescope.builtin").find_files(opts)
	end
end

local my_live_grep
my_live_grep = function(opts, no_ignore)
	opts = opts or {}
	no_ignore = vim.F.if_nil(no_ignore, false)
	opts.attach_mappings = function(_, map)
		map({ "n", "i" }, "<C-h>", function(prompt_bufnr)
			local prompt = utils.get_selected_text_or_cword()
			require("telescope.actions").close(prompt_bufnr)
			no_ignore = not no_ignore
			my_live_grep({ default_text = prompt }, no_ignore)
		end)
		return true
	end

	if no_ignore then
		opts.no_ignore = true
		opts.hidden = true
		opts.prompt_title = "Live Grep <ALL>"
		require("telescope.builtin").live_grep(opts)
	else
		opts.prompt_title = "Live Grep"
		require("telescope.builtin").live_grep(opts)
	end
end

utils.keymap.set({ "n", "v" }, "<leader>ff", my_find_files, { noremap = true, silent = true })
utils.keymap.set({ "n", "v" }, "<leader>lg", my_live_grep, { noremap = true, silent = true })

utils.keymap.set({ "n", "v" }, "<leader>fr", ":Telescope resume<CR>", {
	noremap = true,
	silent = true,
})

utils.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>", {
	noremap = true,
	silent = true,
})

utils.keymap.set("n", "<leader>fp", "<cmd>Telescope commands<CR>", {
	noremap = true,
	silent = true,
})

utils.keymap.set({ "n", "v" }, "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })

utils.keymap.set(
	"n",
	"<leader>fw",
	[[:lua require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })<CR>]],
	{
		noremap = true,
		silent = true,
		desc = "find word under cursor",
	}
)

vim.api.nvim_exec2(
	[[
	    function! GetVisualSelection()
		let [lnum1, col1] = getpos("'<")[1:2]
		let [lnum2, col2] = getpos("'>")[1:2]
		let lines = getline(lnum1, lnum2)
		if len(lines) == 0
		    return ''
		endif
		let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
		let lines[0] = lines[0][col1 - 1:]
		return join(lines, "\n")
	    endfunction
	]],
	{ output = false }
)
utils.keymap.set(
	"v",
	"<leader>fs",
	[[:lua require('telescope.builtin').live_grep({ default_text = vim.fn.GetVisualSelection() })<CR>]],
	{
		noremap = true,
		silent = true,
		desc = "find selection",
	}
)

utils.keymap.set("n", "<leader>fc", "<cmd>Telescope neoclip<CR>", {
	noremap = true,
	silent = true,
})

utils.keymap.set("n", "<leader>fn", "<cmd>Telescope fidget<CR>", {
	noremap = true,
	silent = true,
})

return {
	{
		"telescope.nvim",
		for_cat = "general.telescope",
		cmd = { "Telescope" },
		on_require = { "telescope", "telescope.builtin", "telescope.actions" },
		load = function(name)
			vim.cmd.packadd(name)
			vim.cmd.packadd("telescope-fzf-native.nvim")
			vim.cmd.packadd("telescope-undo.nvim")
			vim.cmd.packadd("telescope-ui-select.nvim")
			vim.cmd.packadd("session-lens")
		end,
		after = function(plugin)
			require("telescope").setup({
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
								top_left = "┌",
								top = "─",
								top_right = "┐",
								right = "│",
								bottom_right = "┘",
								bottom = "─",
								bottom_left = "└",
								left = "│",
							},
							results_patch = {
								minimal = {
									top_left = "",
									top_right = "",
								},
								horizontal = {
									top_left = "┌",
									top = "─",
									top_right = "┐",
									right = "│",
									bottom_right = "┘",
									bottom = "─",
									bottom_left = "└",
									left = "│",
								},
								vertical = {
									top_left = "┌",
									top = "─",
									top_right = "┐",
									right = "│",
									bottom_right = "┘",
									bottom = "─",
									bottom_left = "└",
									left = "│",
								},
							},
							prompt = {
								top_left = "┌",
								top = "─",
								top_right = "┐",
								right = "│",
								bottom_right = "┘",
								bottom = "─",
								bottom_left = "└",
								left = "│",
							},
							prompt_patch = {
								minimal = {
									bottom_right = "┘",
								},
								horizontal = {
									top_left = "┌",
									top = "─",
									top_right = "┐",
									right = "│",
									bottom_right = "┘",
									bottom = "─",
									bottom_left = "└",
									left = "│",
								},
								vertical = {
									top_left = "┌",
									top = "─",
									top_right = "┐",
									right = "│",
									bottom_right = "┘",
									bottom = "─",
									bottom_left = "└",
									left = "│",
								},
							},
							preview = {
								top_left = "┌",
								top = "─",
								top_right = "┐",
								right = "│",
								bottom_right = "┘",
								bottom = "─",
								bottom_left = "└",
								left = "│",
							},
							preview_patch = {
								minimal = {},
								horizontal = {
									top_left = "┌",
									top = "─",
									top_right = "┐",
									right = "│",
									bottom_right = "┘",
									bottom = "─",
									bottom_left = "└",
									left = "│",
								},
								vertical = {
									top_left = "┌",
									top = "─",
									top_right = "┐",
									right = "│",
									bottom_right = "┘",
									bottom = "─",
									bottom_left = "└",
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
								Layout.Box(preview, { size = "50%" }),
								Layout.Box({
									Layout.Box(results, { grow = 1 }),
									Layout.Box(prompt, { size = 3 }),
								}, { dir = "col", size = "50%" }),
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

						local TSLayout = require("telescope.pickers.layout")
						return TSLayout(layout)
					end,
				},

				pickers = {
					find_files = {
						hidden = true,
					},
					live_grep = {
						hidden = true,
					},
					entry_maker = function(entry)
						local cwd = vim.fn.getcwd()
						local bufname = vim.api.nvim_buf_get_name(entry.bufnr)
						local relative_bufname = bufname:gsub("^" .. vim.pesc(cwd), "")
						local is_modified = vim.bo[entry.bufnr].modified
						local display_name = relative_bufname == "" and "[No Name]" or relative_bufname
						if is_modified then
							display_name = "● " .. display_name
						else
							display_name = "  " .. display_name
						end
						return {
							value = entry,
							ordinal = display_name,
							display = display_name,
							filename = bufname,
							path = bufname,
							lnum = entry.lnum or 1,
							col = entry.col or 1,
						}
					end,
				},
				mappings = {
					i = {
						["<Tab>"] = require("telescope.actions").move_selection_next,
						["<S-Tab>"] = require("telescope.actions").move_selection_previous,
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

			-- Enable telescope extensions, if they are installed
			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "undo")
			pcall(require("telescope").load_extension, "fidget")
		end,
	},
}
