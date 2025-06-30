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
	-- { import = "luaConf.plugins.snacks" },

	{
		"oil.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function()
			vim.g.loaded_netrwPlugin = 1
			require("oil").setup({
				delete_to_trash = true,
				show_hidden = true,
				natural_order = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git"
				end,
			})
			vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
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
			vim.cmd.packadd("nvim-scrollbar")
		end,
		after = function()
			require("gitsigns").setup()
			require("scrollbar").setup({
				hide_if_all_visible = true,
				handle = {
					blend = 60,
				},
			})
			require("scrollbar.handlers.gitsigns").setup()
		end,
	},
	{
		"nvim-ufo",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function()
			vim.o.foldcolumn = "0"
			vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true

			require("ufo").setup()

			vim.keymap.set("n", "zR", require("ufo").openAllFolds)
			vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
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
		"base16-nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		load = function(name)
			vim.cmd.packadd(name)
			vim.cmd.packadd("twilight.nvim")
		end,
		after = function()
			local palette = nixCats.extra("palette")
			local palette_opaque = nixCats.extra("palette_opaque")
			local colorUtils = require("colorUtils")

			require("base16-colorscheme").setup(palette)

			local twilight = require("twilight")
			twilight.setup({
				dimming = {
					alpha = 0.3,
					color = { palette.base07, palette.base07 },
					term_bg = colorUtils.get_hex_of_hlgroup("Normal", "bg"),
					inactive = false,
				},
				context = 16,
				treesitter = true,
			})
			-- vim.api.nvim_set_hl(0, "Twilight", { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") })
			twilight.enable()

			local function set_highlights()
				local highlights = {
					TreesitterContextBottom = { sp = "NONE" },
					TreesitterContext = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg"), italic = true },
					TelescopeNormal = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TelescopePreviewNormal = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TelescopeSelection = { bg = palette.base0C, fg = palette.base00 },
					TelescopeSelectionCaret = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TelescopePromptPrefix = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					WinBar = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					LineNr = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					SignColumn = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					DropBarIconKindFunction = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					TabLineFill = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					BlinkCmpMenu = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					BlinkCmpMenuBorder = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					DiagnosticSignError = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					DiagnosticSignWarn = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					DiagnosticSignInfo = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					DiagnosticSignHint = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					DiagnosticSignOk = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					Normal = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					Folded = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					GitSignsAdd = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					GitSignsChange = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					GitSignsDelete = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					VertSplit = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg"), ctermbg = "NONE" },
					MatchParen = { bg = palette.base09, fg = palette.base00 },
					Visual = { bg = colorUtils.darkenColorIfOpaque(palette_opaque.base0D, 0.6) },
					CursorLine = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },

					Comment = { fg = palette.base03 },
					TSComment = { fg = palette.base03 },

					StatusLine = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					StatusLineNC = { bg = colorUtils.get_hex_of_hlgroup("Normal", "bg") },
					ColorColumn = { bg = palette.base02 },
					RenderMarkdownH2Bg = { bg = palette.base02 },

					MiniStarterHeader = { fg = palette.base0E },
					MiniStarterSection = { fg = palette.base0E },
					MiniStarterItemBullet = { fg = palette.base05 },
					MiniStarterItemPrefix = { fg = palette.base0E },
					MiniStarterFooter = { fg = palette.base0E },

					DiffviewPanelFileName = { fg = palette.base07 },
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
