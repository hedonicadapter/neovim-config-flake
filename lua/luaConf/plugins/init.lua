require("lze").load({
	{ import = "luaConf.plugins.mini" },
	{ import = "luaConf.plugins.auto-session" },
	{ import = "luaConf.plugins.cokeline" },
	{ import = "luaConf.plugins.reactive" },
	{ import = "luaConf.plugins.telescope" },
	{ import = "luaConf.plugins.treesitter" },
	{ import = "luaConf.plugins.completion" },
	{ import = "luaConf.plugins.toggleterm" },
	{ import = "luaConf.plugins.codecompanion" },
	{ import = "luaConf.plugins.spider" },
	{ import = "luaConf.plugins.staline" },
	{ import = "luaConf.plugins.colorizer" },
	{ import = "luaConf.plugins.render-markdown" },
	{ import = "luaConf.plugins.image" },
	{ import = "luaConf.plugins.img-clip" },
	{ import = "luaConf.plugins.snacks" },

	{
		"oil.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function()
			vim.g.loaded_netrwPlugin = 1
			require("oil").setup({
				delete_to_trash = true,
				columns = {
					"icon",
					-- "permissions",
					-- "size",
					-- "mtime",
				},

				watch_for_changes = true,
				view_options = {
					show_hidden = true,
					is_hidden_file = function(name, bufnr)
						local m = name:match("^%.")
						return m ~= nil
					end,
					is_always_hidden = function(name, _)
						return name == ".."
					end,
					natural_order = "fast",
					sort = { -- :help oil-columns to see which columns are sortable
						{ "mtime", "asc" },
						{ "type", "asc" },
						{ "name", "asc" },
					},
				},
				float = {
					padding = 2,
					max_width = 0.85,
					max_height = 0.8,
					border = "single",
					preview_split = "left",
				},
				preview_win = {
					update_on_cursor_moved = true,
					preview_method = "fast_scratch",
					disable_preview = function(filename)
						return false
					end,
					win_options = {},
				},
				confirmation = {
					border = "single",
				},
				progress = {
					border = "single",
				},
				keymaps_help = {
					border = "single",
				},
			})
			vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
			-- INFO: auto-enable preview a la https://github.com/stevearc/oil.nvim/issues/87#issuecomment-2179322405
			vim.api.nvim_create_autocmd("User", {
				pattern = "OilEnter",
				callback = vim.schedule_wrap(function(args)
					local oil = require("oil")
					if vim.api.nvim_get_current_buf() == args.data.buf and oil.get_cursor_entry() then
						oil.open_preview()
					end
				end),
			})
		end,
	},

	{
		"comment.nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		after = function()
			require("Comment").setup()
		end,
	},
	{
		"git-conflict.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			require("git-conflict").setup({
				highlights = {
					incoming = "DiffAdd",
					current = "DiffText",
				},
			})
		end,
	},
	{
		"ts-error-translator-nvim",
		for_cat = "web.always",
		event = "BufEnter",
		after = function()
			require("ts-error-translator").setup()
		end,
	},

	{
		"gitsigns.nvim",
		for_cat = "general.always",
		event = "DeferredUIEnter",
		load = function(name)
			vim.cmd.packadd(name)
			vim.cmd.packass("nvim-hlslens")
			vim.cmd.packadd("nvim-scrollbar")
		end,
		after = function()
			require("gitsigns").setup()
			require("scrollbar").setup({
				hide_if_all_visible = true,
				marks = {
					Search = { text = { "", "" } },
					Error = { text = { "󰰱", "󰰱" } },
					Warn = { text = { "", "" } },
					Hint = { text = { "󱠂", "󱠂" } },
					Info = { text = { "", "" } },
				},
			})
			require("scrollbar.handlers.gitsigns").setup()
			require("scrollbar.handlers.search").setup()
		end,
	},

	{
		"nvim-ufo",
		for_cat = "general.always",
		event = "BufReadPost",
		dep_of = "nvim-lspconfig",
		after = function()
			vim.keymap.set("n", "zR", require("ufo").openAllFolds)
			vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

			require("ufo").setup()
		end,
	},

	{
		"garbage-day-nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		after = function()
			require("garbage-day").setup({})
		end,
	},

	{
		"hawtkeys-nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		after = function()
			require("hawtkeys").setup({})
		end,
	},

	{
		"sniprun",
		for_cat = "general.always",
		event = "BufReadPost",
		cmd = "SnipRun",
		after = function()
			require("sniprun").setup({})
		end,
	},

	{
		"vim-visual-multi",
		for_cat = "general.always",
		event = "BufReadPost",
	},

	{
		"vim-wakatime",
		for_cat = "general.extra",
		event = "VimEnter",
	},

	{
		"flash.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			require("flash").setup({
				prompt = {
					enabled = true,
					prefix = { { "   ", "FlashPromptIcon" } },
				},
				label = {
					uppercase = false,
					rainbow = {
						enabled = true,
						shade = 6,
					},
				},
			})
		end,
	},

	{
		"debugprint.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function()
			require("debugprint").setup()
		end,
	},

	{
		"tiny-code-action-nvim",
		for_cat = "general.extra",
		event = "LspAttach",
		after = function()
			require("tiny-code-action").setup()
		end,
	},

	{
		"nvim-neoclip-lua",
		for_cat = "general.always",
		event = "TextYankPost",
		after = function()
			require("neoclip").setup()
		end,
	},

	{
		"zoxide.vim",
		for_cat = "general.always",
		event = "CmdlineEnter", -- Load when the command line is entered, as it provides a command
		after = function()
			vim.cmd([[command! -bang -nargs=* -complete=customlist,zoxide#complete Z zoxide#vim_cd <args>]])
		end,
	},

	{
		"guess-indent.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function()
			require("guess-indent").setup()

			vim.api.nvim_exec2(
				[[
			autocmd BufEnter * silent! :GuessIndent
		]],
				{ output = false }
			)
		end,
	},

	{
		"eyeliner.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			require("eyeliner").setup({
				highlight_on_key = true,
				dim = true,
			})
		end,
	},

	{
		"dropbar.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			require("dropbar").setup({
				icons = {
					ui = {
						bar = {
							separator = " > ",
						},
					},
				},
			})
		end,
	},

	{
		"dial.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			vim.keymap.set("n", "<C-a>", function()
				require("dial.map").manipulate("increment", "normal")
			end)
			vim.keymap.set("n", "<C-x>", function()
				require("dial.map").manipulate("decrement", "normal")
			end)
			vim.keymap.set("n", "g<C-a>", function()
				require("dial.map").manipulate("increment", "gnormal")
			end)
			vim.keymap.set("n", "g<C-x>", function()
				require("dial.map").manipulate("decrement", "gnormal")
			end)
			vim.keymap.set("v", "<C-a>", function()
				require("dial.map").manipulate("increment", "visual")
			end)
			vim.keymap.set("v", "<C-x>", function()
				require("dial.map").manipulate("decrement", "visual")
			end)
			vim.keymap.set("v", "g<C-a>", function()
				require("dial.map").manipulate("increment", "gvisual")
			end)
			vim.keymap.set("v", "g<C-x>", function()
				require("dial.map").manipulate("decrement", "gvisual")
			end)
		end,
	},

	{
		"quicker.nvim",
		for_cat = "general.always",
		event = "DeferredUIEnter",
		after = function()
			require("quicker").setup()

			-- autoclose quickfix after selection
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "qf" },
				command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]],
			})
		end,
	},

	{
		"todo-comments.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function()
			require("todo-comments").setup()
		end,
	},

	{
		"stay-centered.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			require("stay-centered").setup({
				skip_filetypes = { "ministarter" },
			})
		end,
	},
	{
		"hlchunk.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function()
			local palette = nixCats.extra("palette")
			require("hlchunk").setup({
				chunk = {
					enable = true,
					style = { palette.base09 },
					delay = 100,
					use_treesitter = false,
				},
				indent = {
					enable = true,
					style = { palette.base01 },
					use_treesitter = false,
				},
				line_num = {
					enable = true,
					style = { palette.base09 },
					use_treesitter = false,
				},
			})
		end,
	},
	{
		"diffview.nvim",
		for_cat = "general.always",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		on_require = "diffview.lib",
		after = function()
			vim.opt.fillchars:append("diff:╱")
		end,
	},
	{
		"fidget.nvim",
		for_cat = "general.extra",
		event = "VimEnter",
		after = function()
			require("fidget").setup({
				notification = {
					override_vim_notify = true,
					-- window = {
					-- 	align = "top",
					-- 	border = "single",
					-- },
				},
			})
		end,
	},
	{
		"git-blame.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function()
			local comment_highlight = vim.api.nvim_get_hl(0, { name = "Comment", link = false })
			local original_highlight =
				vim.api.nvim_get_hl(0, { name = "ReactiveCursorLine@preset.customCursorLine.@mode.n", link = false })

			vim.api.nvim_set_hl(0, "GitBlameReactive", {
				fg = comment_highlight.fg,
				bg = original_highlight.bg,
			})

			require("gitblame").setup({
				enabled = true,
				highlight_group = "GitBlameReactive",
			})
		end,
	},

	{
		"tiny-glimmer-nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		after = function()
			require("tiny-glimmer").setup()
		end,
	},

	{
		"base16-nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		after = function()
			local palette = nixCats.extra("palette")
			local palette_opaque = nixCats.extra("palette_opaque")
			local colorUtils = require("colorUtils")

			require("base16-colorscheme").setup(palette)

			local function set_highlights()
				local highlights = {
					Normal = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					FloatBorder = { fg = palette.base06 },

					Search = { fg = palette.base06 },

					TreesitterContextBottom = { sp = "NONE" },
					TreesitterContext = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg"), italic = true },
					TelescopeNormal = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TelescopePreviewNormal = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TelescopeSelection = { bg = palette.base0C, fg = palette.base00 },
					TelescopeSelectionCaret = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TelescopePromptPrefix = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					WinBar = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					LineNr = {
						bg = colorUtils.get_hex_of_hlgroup("Normal", "bg"),
						fg = colorUtils.get_hex_of_hlgroup("Comment", "fg"),
					},
					SignColumn = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TabLineFill = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					DropBarIconKindFunction = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					DropBarKind = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindCall = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindEnum = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindFile = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindList = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindNull = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindObject = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindPair = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindType = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindUnit = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindArray = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindClass = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindEvent = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindField = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMacro = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindScope = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindTable = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindValue = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindDelete = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindFolder = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMethod = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindModule = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindNumber = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindRepeat = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindString = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindStruct = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindBoolean = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindElement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindKeyword = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindPackage = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindRuleSet = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindSection = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindConstant = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindFunction = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindOperator = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindProperty = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindVariable = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindInterface = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindNamespace = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindReference = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindSpecifier = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindEnumMember = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindIdentifier = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMarkdownH1 = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMarkdownH2 = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMarkdownH3 = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMarkdownH4 = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMarkdownH5 = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindMarkdownH6 = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindConstructor = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindDeclaration = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindDoStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindIfStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindForStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindCaseStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindElseStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindGotoStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindTypeParameter = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindBreakStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindWhileStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindReturnStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindSwitchStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindBlockMappingPair = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },
					DropBarKindContinueStatement = { fg = colorUtils.get_hex_of_hlgroup("Comment", "fg") },

					BlinkCmpMenu = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					BlinkCmpMenuBorder = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					Folded = { bg = palette.base01 },
					-- GitSignsAdd = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					-- GitSignsChange = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					-- GitSignsDelete = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					VertSplit = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg"), ctermbg = "NONE" },
					MatchParen = { bg = palette.base09, fg = palette.base00 },
					Visual = { bg = colorUtils.darkenColorIfOpaque(palette_opaque.base0D, 0.6) },
					CursorLine = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					Comment = { fg = palette.base03 },
					TSComment = { fg = palette.base03 },

					StatusLine = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					StatusLineNC = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					ColorColumn = { bg = palette.base02 },

					RenderMarkdownIndent = { fg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					RenderMarkdownH1Bg = { bg = palette.base06, fg = palette.base01 },
					RenderMarkdownH2Bg = { bg = palette.base05, fg = palette.base02 },
					RenderMarkdownH3Bg = { bg = palette.base04, fg = palette.base03 },
					RenderMarkdownH4Bg = { bg = palette.base03, fg = palette.base04 },
					RenderMarkdownH5Bg = { bg = palette.base02, fg = palette.base05 },
					RenderMarkdownH6Bg = { bg = palette.base01, fg = palette.base06 },

					MiniStarterHeader = { fg = palette.base0E },
					MiniStarterSection = { fg = palette.base0E },
					MiniStarterItemBullet = { fg = palette.base05 },
					MiniStarterItemPrefix = { fg = palette.base0E },
					MiniStarterFooter = { fg = palette.base0E },

					DiffviewPanelFileName = { fg = palette.base06 },
				}

				for group, settings in pairs(highlights) do
					vim.api.nvim_set_hl(0, group, settings)
				end
			end

			vim.api.nvim_create_autocmd("BufEnter", {
				callback = function()
					set_highlights()
				end,
			})
		end,
	},
})
