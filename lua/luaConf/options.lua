local o = vim.o
local opt = vim.opt
local g = vim.g
local keymap = vim.keymap
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local palette = nixCats.extra("palette")

o.showmode = false
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
o.autoread = true
o.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
o.cmdheight = 0
o.sidescroll = 1
o.sidescrolloff = 20

opt.autoindent = true
opt.expandtab = true
opt.swapfile = false
opt.wrap = false
opt.termguicolors = true
opt.updatetime = 250
opt.ttimeoutlen = 10
opt.ignorecase = true
opt.smartcase = true
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.guifont = "Mx437 DOS/V re. JPN30"
opt.undofile = true
opt.fillchars:append(",eob: ")

g.have_nerd_font = true

if g.neovide then
	opt.linespace = 2
	opt.guifont = "Mx437 DOS/V re. JPN30:h16"

	g.neovide_padding_top = 10
	g.neovide_padding_bottom = 0
	g.neovide_padding_right = 4
	g.neovide_padding_left = 4

	g.neovide_theme = "auto"

	g.neovide_refresh_rate = 144
	g.neovide_refresh_rate_idle = 5
	g.neovide_fullscreen = false
	g.neovide_remember_window_size = false

	g.neovide_scroll_animation_length = 0.2
	g.neovide_cursor_smooth_blink = true
	g.neovide_floating_shadow = false

	-- Helper function for transparency formatting
	-- local alpha = function()
	-- 	return string.format("%x", math.floor(255 * g.transparency or 0.8))
	-- end
	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
	g.neovide_transparency = 1
	g.transparency = 1
	g.neovide_background_color = palette.base00 -- .. alpha()
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

		-- TODO: for neovim 0.12
		-- local client = vim.lsp.get_client_by_id(ev.data.client_id)
		-- if client and client:supports_method("textDocument/documentColor") then
		-- 	vim.lsp.document_color.enable(true, ev.buf)
		-- end
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

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.cshtml", "*.razor" },
	callback = function()
		vim.bo.filetype = "html.cshtml.razor"
	end,
})

-- open messages in a new buffer (by EstudiandoAjedrez)
vim.api.nvim_create_user_command("Messages", function()
	scratch_buffer = vim.api.nvim_create_buf(false, true)
	vim.bo[scratch_buffer].filetype = "vim"
	local messages = vim.split(vim.fn.execute("messages", "silent"), "\n")
	vim.api.nvim_buf_set_text(scratch_buffer, 0, 0, 0, 0, messages)
	vim.cmd("vertical sbuffer " .. scratch_buffer)
	vim.opt_local.wrap = true
	vim.bo.buflisted = false
	vim.bo.bufhidden = "wipe"
end, {})

vim.api.nvim_create_user_command("ListLoadedModules", function()
	vim.cmd("new")
	local buf = vim.api.nvim_get_current_buf()

	local modules = {}
	for k in pairs(package.loaded) do
		if k:match("^(.+)%.") then
			table.insert(modules, k)
		end
	end
	table.sort(modules)

	vim.api.nvim_buf_set_lines(buf, 0, -1, false, modules)

	vim.api.nvim_buf_set_option(buf, "modifiable", false)
	vim.api.nvim_buf_set_option(buf, "buftype", "nofile")
	vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe")
	vim.api.nvim_buf_set_option(buf, "filetype", "lua")
end, {})
