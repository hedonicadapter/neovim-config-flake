return {
	{
		"snacks.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function()
			require("snacks").setup({
				scroll = {
					enabled = false,
				},
				animate = {
					duration = { step = 7, total = 150 },
					easing = "outQuint",
					fps = "144",
				},
				picker = {
					prompt = "> ",
					focus = "input",
					layout = {
						cycle = true,
						preset = function()
							return vim.o.columns >= 120 and "default" or "vertical"
						end,
					},
					matcher = {
						fuzzy = true,
						smartcase = true,
						sort_empty = false,
						filename_bonus = true,
						file_pos = true, -- support patterns like `file:line:col` and `file:line`
						frecency = true,
					},
					ui_select = true, -- replace `vim.ui.select` with the snacks picker
					formatters = {
						file = {
							truncate = 40, -- truncate file path
							icon_width = 2,
							git_status_hl = true, -- use the git status highlight group for the filename
						},
						selected = {
							unselected = true, -- use the unselected icon for unselected items
						},
						severity = {
							icons = true, -- show severity icons
							pos = "left",
						},
					},
					previewers = {
						diff = {
							builtin = false,
							cmd = { "delta" },
						},
						git = {
							builtin = true,
							args = {},
						},
						file = {
							max_size = 1024 * 1024,
						},
					},
					toggles = {
						hidden = "h",
						ignored = "i",
						modified = "m",
						regex = { icon = "R", value = false },
					},
					win = {
						input = {
							keys = {
								-- to close the picker on ESC instead of going to normal mode,
								-- add the following keymap to your config
								-- ["<Esc>"] = { "close", mode = { "n", "i" } },
								["/"] = "toggle_focus",

								["<C-Down>"] = { "history_forward", mode = { "i", "n" } },
								["<C-Up>"] = { "history_back", mode = { "i", "n" } },

								["<CR>"] = { "confirm", mode = { "n", "i" } },
								["<Down>"] = { "list_down", mode = { "i", "n" } },
								["<Up>"] = { "list_up", mode = { "i", "n" } },
								["<Esc>"] = "cancel",

								["<S-Tab>"] = { "select_and_prev", mode = { "i", "n" } },
								["<Tab>"] = { "select_and_next", mode = { "i", "n" } },

								["<a-f>"] = { "toggle_follow", mode = { "i", "n" } },
								["<a-h>"] = { "toggle_hidden", mode = { "i", "n" } },
								["<a-i>"] = { "toggle_ignored", mode = { "i", "n" } },
								["<a-m>"] = { "toggle_maximize", mode = { "i", "n" } },
								["<a-p>"] = { "toggle_preview", mode = { "i", "n" } },
								["<c-g>"] = { "toggle_live", mode = { "i", "n" } },

								["<c-a>"] = { "select_all", mode = { "n", "i" } },
								["<c-b>"] = { "preview_scroll_up", mode = { "i", "n" } },
								["<c-f>"] = { "preview_scroll_down", mode = { "i", "n" } },

								["<c-q>"] = { "qflist", mode = { "i", "n" } },

								["<c-w>H"] = "layout_left",
								["<c-w>J"] = "layout_bottom",
								["<c-w>K"] = "layout_top",
								["<c-w>L"] = "layout_right",

								["G"] = "list_bottom",
								["gg"] = "list_top",
								["j"] = "list_down",
								["k"] = "list_up",

								["q"] = "close",
								["?"] = "toggle_help_input",
							},
						},
						-- result list window
						list = {
							keys = {
								["/"] = "toggle_focus",
								["i"] = "focus_input",
								["<2-LeftMouse>"] = "confirm",
								["<CR>"] = "confirm",

								["j"] = "list_down",
								["k"] = "list_up",
								["<Down>"] = "list_down",
								["<Up>"] = "list_up",
								["<c-j>"] = "list_down",
								["<c-k>"] = "list_up",
								["<c-n>"] = "list_down",
								["<c-p>"] = "list_up",

								["<Esc>"] = "cancel",

								["<S-Tab>"] = { "select_and_prev", mode = { "n", "x" } },
								["<Tab>"] = { "select_and_next", mode = { "n", "x" } },

								["<a-f>"] = "toggle_follow",
								["<a-h>"] = "toggle_hidden",
								["<a-i>"] = "toggle_ignored",
								["<a-m>"] = "toggle_maximize",
								["<a-p>"] = "toggle_preview",

								["<c-a>"] = "select_all",

								["<c-b>"] = "preview_scroll_up",
								["<c-f>"] = "preview_scroll_down",

								["<c-u>"] = "list_scroll_up",
								["<c-d>"] = "list_scroll_down",
								["zb"] = "list_scroll_bottom",
								["zt"] = "list_scroll_top",
								["zz"] = "list_scroll_center",

								["<c-q>"] = "qflist",
								["<c-t>"] = "tab",

								["<c-w>H"] = "layout_left",
								["<c-w>J"] = "layout_bottom",
								["<c-w>K"] = "layout_top",
								["<c-w>L"] = "layout_right",

								["G"] = "list_bottom",
								["gg"] = "list_top",

								["q"] = "close",
								["?"] = "toggle_help_list",
							},
						},
						-- preview window
						preview = {
							keys = {
								["<Esc>"] = "cancel",
								["q"] = "close",
								["i"] = "focus_input",
							},
						},
					},
					icons = {
						files = {
							enabled = true,
							dir = "󰉋 ",
							dir_open = "󰝰 ",
							file = "󰈔 ",
						},
						keymaps = {
							nowait = "󰓅 ",
						},
						tree = {
							vertical = "│ ",
							middle = "├╴",
							last = "└╴",
						},
						undo = {
							saved = " ",
						},
						ui = {
							live = "󰐰 ",
							hidden = "h",
							ignored = "i",
							follow = "f",
							selected = "● ",
							unselected = "○ ",
						},
						git = {
							enabled = true,
							commit = "󰜘 ", -- used by git log
							staged = "●", -- staged changes. always overrides the type icons
							added = "",
							deleted = "",
							ignored = " ",
							modified = "○",
							renamed = "",
							unmerged = " ",
							untracked = "?",
						},
						diagnostics = {
							Error = "󰰱  ",
							Warn = "  ",
							Hint = "󱠂  ",
							Info = "  ",
						},
						lsp = {
							unavailable = "",
							enabled = " ",
							disabled = " ",
							attached = "󰖩 ",
						},
						kinds = {
							Array = " ",
							Boolean = "󰨙 ",
							Class = " ",
							Color = " ",
							Control = " ",
							Collapsed = " ",
							Constant = "󰏿 ",
							Constructor = " ",
							Copilot = " ",
							Enum = " ",
							EnumMember = " ",
							Event = " ",
							Field = " ",
							File = " ",
							Folder = " ",
							Function = "󰊕 ",
							Interface = " ",
							Key = " ",
							Keyword = " ",
							Method = "󰊕 ",
							Module = " ",
							Namespace = "󰦮 ",
							Null = " ",
							Number = "󰎠 ",
							Object = " ",
							Operator = " ",
							Package = " ",
							Property = " ",
							Reference = " ",
							Snippet = "󱄽 ",
							String = " ",
							Struct = "󰆼 ",
							Text = " ",
							TypeParameter = " ",
							Unit = " ",
							Unknown = " ",
							Value = " ",
							Variable = "󰀫 ",
						},
					},
					debug = {
						leaks = true,
						explorer = false,
						files = false,
						grep = false,
						proc = false,
						extmarks = false,
					},
				},
			})
		end,
	},
}
