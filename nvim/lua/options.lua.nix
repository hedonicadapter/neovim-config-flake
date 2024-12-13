{colors, ...}: let
  lua = ''
    local o = vim.o
    local opt = vim.opt
    local g = vim.g
    local keymap = vim.keymap
    local autocmd = vim.api.nvim_create_autocmd
    local augroup = vim.api.nvim_create_augroup
    local exec = vim.api.nvim_exec

    o.showmode = false
    o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    opt.autoindent = true
    opt.expandtab = true
    opt.wrap = false
    opt.termguicolors = true
    opt.signcolumn = "yes"
    opt.updatetime = 250
    opt.ttimeoutlen = 10
    opt.ignorecase = true
    opt.smartcase = true
    opt.backspace = "indent,eol,start"
    opt.clipboard:append("unnamedplus")
    g.have_nerd_font = true
    opt.guifont = "vt323"
    o.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
    o.cmdheight = 0
    o.sidescroll = 1
    o.sidescrolloff = 20
    opt.undofile = true
    opt.fillchars:append(",eob: ")

    if g.neovide then
    	opt.linespace = 2
    	opt.guifont = "vt323:#h-none"

    	g.neovide_padding_top = 10
    	g.neovide_padding_bottom = 0
    	g.neovide_padding_right = 20
    	g.neovide_padding_left = 20

    	g.neovide_theme = "auto"

    	g.neovide_refresh_rate = 144
    	g.neovide_refresh_rate_idle = 5
    	g.neovide_fullscreen = false
    	g.neovide_remember_window_size = false

    	g.neovide_scroll_animation_length = 0.1
    	g.neovide_cursor_smooth_blink = true
    	g.neovide_floating_shadow = false

    	-- Helper function for transparency formatting
    	-- local alpha = function()
    	-- 	return string.format("%x", math.floor(255 * g.transparency or 0.8))
    	-- end
    	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    	g.neovide_transparency = 1
    	g.transparency = 1
    	g.neovide_background_color = "${colors.outputs.colors.base00}" -- .. alpha()
    	-- g.neovide_window_blurred = true

    	keymap.set("n", "<C-s>", ":w<CR>") -- Save
    	keymap.set("v", "<C-c>", '"+y') -- Copy
    	keymap.set("n", "<C-v>", '"+P') -- Paste normal mode
    	keymap.set("v", "<C-v>", '"+P') -- Paste visual mode
    	keymap.set("c", "<C-v>", "<C-R>+") -- Paste command mode
    	keymap.set("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode

    	keymap.set("", "<C-v>", "+p<CR>", { noremap = true, silent = true })
    	keymap.set("!", "<C-v>", "<C-R>+", { noremap = true, silent = true })
    	keymap.set("t", "<C-v>", "<C-R>+", { noremap = true, silent = true })
    	keymap.set("v", "<C-v>", "<C-R>+", { noremap = true, silent = true })
    end

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    autocmd("LspAttach", {
    	group = augroup("UserLspConfig", {}),
    	callback = function(ev)
    		-- Enable completion triggered by <c-x><c-o>
    		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Buffer local mappings.-- See `:help vim.lsp.*` for documentation on any of the below functions
    		local opts = {
    			buffer = ev.buf,
    		}
    		local lsp_buf = vim.lsp.buf

    		keymap.set("n", "gD", lsp_buf.declaration, opts)
    		keymap.set("n", "gd", lsp_buf.definition, opts)
    		keymap.set("n", "K", lsp_buf.hover, opts)
    		keymap.set("n", "gi", lsp_buf.implementation, opts)
    		keymap.set("n", "<C-k>", lsp_buf.signature_help, opts)
    		keymap.set("n", "<space>wa", lsp_buf.add_workspace_folder, opts)
    		keymap.set("n", "<space>wr", lsp_buf.remove_workspace_folder, opts)
    		keymap.set("n", "<space>wl", function()
    			print(vim.inspect(lsp_buf.list_workspace_folders()))
    		end, opts)
    		keymap.set("n", "<space>D", lsp_buf.type_definition, opts)
    		keymap.set("n", "<space>rn", lsp_buf.rename, opts)
    		keymap.set({ "n", "v" }, "<space>ca", lsp_buf.code_action, opts)
    		keymap.set("n", "gr", lsp_buf.references, opts)
    		keymap.set("n", "<space>f", function()
    			lsp_buf.format({
    				async = true,
    			})
    		end, opts)
    	end,
    })

    -- clear unused buffers
    -- credit: u/xmsxms
    local id = vim.api.nvim_create_augroup("startup", {
    	clear = false,
    })

    local persistbuffer = function(bufnr)
    	bufnr = bufnr or vim.api.nvim_get_current_buf()
    	vim.fn.setbufvar(bufnr, "bufpersist", 1)
    end

    autocmd({ "BufRead" }, {
    	group = id,
    	pattern = { "*" },
    	callback = function()
    		vim.api.nvim_create_autocmd({ "InsertEnter", "BufModifiedSet" }, {
    			buffer = 0,
    			once = true,
    			callback = function()
    				persistbuffer()
    			end,
    		})
    	end,
    })

    autocmd("BufWritePost", {
    	group = augroup("hide_message_after_write", {
    		clear = true,
    	}),
    	desc = "Get rid of message after writing a file",
    	pattern = { "*" },
    	command = "redrawstatus",
    })

    autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
    	callback = function()
    		local bufname = vim.fn.bufname()

    		if bufname == "Starter" then
    			o.scrolloff = 0
    		else
    			-- local win_h = vim.api.nvim_win_get_height(0)
    			-- local off = math.min(o.scrolloff, math.floor(win_h / 2))
    			-- local dist = vim.fn.line("$") - vim.fn.line(".")
    			-- local rem = vim.fn.line("w$") - vim.fn.line("w0") + 1
    			-- if dist < off and win_h - rem + dist < off then
    			-- 	local view = vim.fn.winsaveview()
    			-- 	view.topline = view.topline + off - (win_h - rem + dist)
    			-- 	vim.fn.winrestview(view)
    			-- end
    			o.scrolloff = 999
    		end
    	end,
    })

    local function set_highlights()
    	local highlights = {
    		TreesitterContextBottom = { sp = "NONE" },
    		TreesitterContext = { bg = "NONE", italic = true },
        TelescopeNormal = { bg = "NONE" },
        TelescopePreviewNormal = { bg = "NONE" },
        TelescopeSelection = { bg = "${colors.outputs.colors.base0C}", fg = "${colors.outputs.colors.base00}" },
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
    		Twilight = { bg = "NONE" },
    		GitSignsAdd = { bg = "NONE" },
    		GitSignsChange = { bg = "NONE" },
    		GitSignsDelete = { bg = "NONE" },
    		VertSplit = { bg = "NONE", ctermbg = "NONE" },
    		MatchParen = { bg = "${colors.outputs.colors.base09}", fg = "${colors.outputs.colors.base00}"},
        Visual = { bg = "${colors.outputs.darken colors.outputs.colors_opaque.base0D 0.6}"},
    	}

    	for group, settings in pairs(highlights) do
    		vim.api.nvim_set_hl(0, group, settings)
    	end
    end

    vim.api.nvim_create_autocmd("BufEnter", {
    	callback = function()
    		set_highlights()
    		vim.opt.relativenumber = true
    		vim.opt.number = true
    		vim.opt.cursorline = true

    		local bufname = vim.fn.expand("<afile>:t")
    		if bufname ~= "copilot-chat" then
    			vim.opt_local.wrap = false
    			vim.opt_local.signcolumn = "no"
    		end
    	end,
    })

    vim.api.nvim_create_autocmd("BufEnter", {
    	pattern = { "*.cshtml", "*.razor" },
    	callback = function()
    		vim.bo.filetype = "html.cshtml.razor"
    	end,
    })

    -- fix telescope auto insert mode
    vim.api.nvim_create_autocmd("WinLeave", {
    	callback = function()
    		if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
    			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
    		end
    	end,
    })
  '';
in
  lua
