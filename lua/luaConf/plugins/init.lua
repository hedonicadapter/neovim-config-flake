if nixCats("general") then
	-- I didnt want to bother with lazy loading this.
	-- I could put it in opt and put it in a spec anyway
	-- and then not set any handlers and it would load at startup,
	-- but why... I guess I could make it load
	-- after the other lze definitions in the next call using priority value?
	-- didnt seem necessary.
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
end

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

	{
		"comment.nvim",
		for_cat = "general.extra",
		event = "DeferredUIEnter",
		after = function(plugin)
			require("Comment").setup()
		end,
	},
	{
		"git-conflict.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
			require("git-conflict").setup()
		end,
	},
	{
		"ts-error-translator-nvim",
		for_cat = "web.always",
		event = "BufEnter",
		after = function(plugin)
			require("ts-error-translator").setup()
		end,
	},

	{
		"gitsigns.nvim",
		for_cat = "general.always",
		event = "DeferredUIEnter",
		after = function(plugin)
			require("gitsigns").setup()
		end,
	},
	{
		"nvim-ufo",
		for_cat = "general.always",
		event = "BufEnter",
		after = function(plugin)
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
		event = "VimEnter",
		after = function(plugin)
			require("garbage-day").setup({})
		end,
	},

	{
		"hawtkeys-nvim",
		for_cat = "general.extra",
		event = "VimEnter",
		after = function(plugin)
			require("hawtkeys").setup({})
		end,
	},

	{
		"sniprun",
		for_cat = "general.always",
		event = "BufReadPost",
		cmd = "SnipRun",
		after = function(plugin)
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
		"sqlite.lua",
		for_cat = "general.always",
		event = "VimEnter",
	},

	{
		"flash.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
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
		after = function(plugin)
			require("debugprint").setup()
		end,
	},

	{
		"tiny-code-action-nvim",
		for_cat = "general.extra",
		event = "LspAttach",
		after = function(plugin)
			require("tiny-code-action").setup()
		end,
	},

	{
		"nvim-neoclip-lua",
		for_cat = "general.always",
		event = "TextYankPost",
		after = function(plugin)
			require("neoclip").setup()
		end,
	},

	{
		"snacks.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function(plugin)
			require("snacks").setup({
				zen = {},
			})
		end,
	},

	{
		"zoxide.vim",
		for_cat = "general.always",
		event = "CmdlineEnter", -- Load when the command line is entered, as it provides a command
		after = function(plugin)
			vim.cmd([[command! -bang -nargs=* -complete=customlist,zoxide#complete Z zoxide#vim_cd <args>]])
		end,
	},

	{
		"guess-indent.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function(plugin)
			require("guess-indent").setup()

			vim.api.nvim_exec(
				[[
			autocmd BufEnter * silent! :GuessIndent
		]],
				false
			)
		end,
	},

	{
		"eyeliner.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
			require("eyeliner").setup({
				highlight_on_key = true,
				dim = true,
			})
		end,
	},

	{
		"nvim-scrollbar",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function(plugin)
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
		"dropbar.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
			require("dropbar").setup()
		end,
	},

	{
		"dial.nvim",
		for_cat = "general.always",
		event = "VimEnter",
		after = function(plugin)
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
		after = function(plugin)
			require("quicker").setup()
		end,
	},

	{
		"todo-comments.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function(plugin)
			require("todo-comments").setup()
		end,
	},

	{
		"stay-centered.nvim",
		for_cat = "general.always",
		event = "BufReadPost",
		after = function(plugin)
			require("stay-centered").setup({
				skip_filetypes = { "ministarter" },
			})
		end,
	},
	{
		"hlchunk.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function(plugin)
			local colors = nixCats.extra("colors")
			require("hlchunk").setup({
				chunk = {
					enable = true,
					style = { colors.base09 },
					delay = 100,
				},
			})
		end,
	},
	{
		"diffview.nvim",
		for_cat = "general.always",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
	},
	{ "twilight.nvim" },
	{
		"base16-nvim",
		for_cat = "general.extra",
		event = "VimEnter",
		after = function(plugin)
			local colors = nixCats.extra("colors")
			local colors_opaque = nixCats.extra("colors_opaque")
			local colorUtils = require("colorUtils")

			require("base16-colorscheme").setup(colors)

			local twilight = require("twilight")
			twilight.setup({
				dimming = {
					alpha = 0.2,
					color = { colors.base07, colors.base07 },
					term_bg = colors.base00,
					inactive = false,
				},
				context = 16,
				treesitter = true,
			})
			vim.api.nvim_set_hl(0, "Twilight", { bg = "NONE" })
			twilight.enable()

			local function set_highlights()
				local highlights = {
					TreesitterContextBottom = { sp = "NONE" },
					TreesitterContext = { bg = "NONE", italic = true },
					TelescopeNormal = { bg = "NONE" },
					TelescopePreviewNormal = { bg = "NONE" },
					TelescopeSelection = { bg = colors.base0C, fg = colors.base00 },
					TelescopeSelectionCaret = { bg = "NONE" },
					WinBar = { bg = "NONE" },
					LineNr = { bg = "NONE" },
					SignColumn = { bg = "NONE" },
					DropBarIconKindFunction = { bg = "NONE" },
					TabLineFill = { bg = "NONE" },
					DiagnosticSignError = { bg = "NONE" },
					DiagnosticSignWarn = { bg = "NONE" },
					DiagnosticSignInfo = { bg = "NONE" },
					DiagnosticSignHint = { bg = "NONE" },
					DiagnosticSignOk = { bg = "NONE" },
					Folded = { bg = "NONE" },
					GitSignsAdd = { bg = "NONE" },
					GitSignsChange = { bg = "NONE" },
					GitSignsDelete = { bg = "NONE" },
					VertSplit = { bg = "NONE", ctermbg = "NONE" },
					MatchParen = { bg = colors.base09, fg = colors.base00 },
					Visual = { bg = colorUtils.darkenColorIfOpaque(colors_opaque.base0D, 0.6) },

					Comment = { fg = colors.base04 },
					TSComment = { fg = colors.base04 },

					StatusLine = { bg = "NONE" },

					MiniStarterHeader = { fg = colors.base0E },
					MiniStarterSection = { fg = colors.base0E },
					MiniStarterItemBullet = { fg = colors.base05 },
					MiniStarterItemPrefix = { fg = colors.base0E },
					MiniStarterFooter = { fg = colors.base0E },
				}

				for group, settings in pairs(highlights) do
					vim.api.nvim_set_hl(0, group, settings)
				end
			end

			-- vim.api.nvim_create_autocmd("BufEnter", {
			-- 	callback = function()
			set_highlights()
			-- 	end,
			-- })
		end,
	},
})
