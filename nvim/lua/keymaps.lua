vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
local nvim_set_keymap = vim.api.nvim_set_keymap

local function set_keymap_for_all_modes(key, cmd)
	local modes = { "n", "v", "x", "s", "o", "l" }
	for _, mode in ipairs(modes) do
		nvim_set_keymap(mode, key, cmd, {
			noremap = true,
			silent = true,
		})
	end
end

nvim_set_keymap("n", "<leader>sf", "<cmd>w<CR>", {
	desc = "save",
	noremap = true,
	silent = true,
})

set_keymap_for_all_modes("<leader>qq", "<cmd>qa<CR>")

keymap.set("n", "<leader>fu", "<cmd>Telescope undo<CR>", {
	noremap = true,
	silent = true,
})
keymap.set("n", "<leader>fc", "<cmd>Telescope neoclip<CR>", {
	noremap = true,
	silent = true,
})
keymap.set("n", "<leader>fp", "<cmd>Telescope commands<CR>", {
	noremap = true,
	silent = true,
})

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>sv", "<C-w>v", {
	noremap = true,
	desc = "split vertical",
})
keymap.set("n", "<leader>sh", "<C-w>s", {
	noremap = true,
	desc = "split horizontal",
})
keymap.set("n", "<leader>sx", ":close<CR>", {
	noremap = true,
	desc = "close window",
})

keymap.set("n", "<leader>bd", ":bd<CR><CR>", {
	noremap = true,
	desc = "close buffer",
})

keymap.set("v", "y", "ygv<esc>", {
	noremap = true,
})

keymap.set("t", "<Esc>", "<C-\\><C-n>", {
	noremap = true,
})

keymap.set("n", "<S-l>", ":bnext<CR>", {
	noremap = true,
	silent = true,
})
keymap.set("n", "<S-h>", ":bprev<CR>", {
	noremap = true,
	silent = true,
})

keymap.set("n", "<C-j>", ":m .+1<CR>==") -- move line down
keymap.set("n", "<C-k>", ":m .-2<CR>==") -- move line up
keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi", {
	noremap = true,
	silent = true,
})
keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi", {
	noremap = true,
	silent = true,
})
keymap.set("v", "<C-j>", ":m '>+1<CR>gv", {
	noremap = true,
	silent = true,
})
keymap.set("v", "<C-k>", ":m '<-2<CR>gv", {
	noremap = true,
	silent = true,
})

keymap.set("v", "y", "ygv", {
	noremap = true,
})
keymap.set("v", ">", ">gv", {
	noremap = true,
})
keymap.set("v", "<", "<gv", {
	noremap = true,
})

-- paste and then reselect pasted text
keymap.set({ "n", "x" }, "p", "p`[v`]o", { noremap = true, silent = true })
-- yank and then reselect yanked text
keymap.set({ "n", "x" }, "y", "y`[v`]", { noremap = true, silent = true })

keymap.set("x", "<leader>p", '"_dP') -- Paste without copying
keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap.set("n", "<space>e", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>q", vim.diagnostic.setloclist)

keymap.set("n", "<leader>n", "<Cmd>call search('[([{<\\|\"\\|'']')<CR>", {
	desc = "Jump to next brace, quote, or paren",
})
keymap.set("n", "<leader>p", "<Cmd>call search('[([{<\\|\"\\|'']', 'b') <CR>", {
	desc = "Jump to previous brace, quote, or paren",
})

-- Telescope
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

nvim_set_keymap("n", "<leader>ss", "<cmd>Telescope session-lens<cr>", { noremap = true, silent = true })

nvim_set_keymap(
	"n",
	"<leader>fw",
	[[:lua require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })<CR>]],
	{
		noremap = true,
		silent = true,
		desc = "find word under cursor",
	}
)

nvim_set_keymap(
	"v",
	"<leader>fs",
	[[:lua require('telescope.builtin').live_grep({ default_text = vim.fn.GetVisualSelection() })<CR>]],
	{
		noremap = true,
		silent = true,
		desc = "find selection",
	}
)

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
			local prompt = require("telescope.actions.state").get_current_line()
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

vim.keymap.set({ "n", "v" }, "<leader>ff", my_find_files, { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>lg", my_live_grep, { noremap = true, silent = true })
set_keymap_for_all_modes("<leader>fr", ":Telescope resume<CR>")

nvim_set_keymap(
	"n",
	"<leader>o",
	"<CMD>SymbolsOutline<CR>",
	{ desc = "Symbols outline", noremap = true, silent = true }
)

nvim_set_keymap(
	"n",
	"<leader>0",
	"<CMD>lua require('codecompanion').toggle()<CR>",
	{ desc = "Open Copilot Chat", noremap = true, silent = true }
)

-- SnipRun
nvim_set_keymap("n", "<leader>sr", "<CMD>SnipRun<CR>", { desc = "Run SnipRun", noremap = true, silent = true })
keymap.set(
	{ "v", "x" },
	"<leader>sr",
	":'<,'>SnipRun<CR>",
	{ desc = "Run SnipRun in visual mode", noremap = true, silent = true }
)

-- flash.nvim
keymap.set({ "n", "x", "o" }, "s", function()
	require("flash").jump()
end, { noremap = true })
keymap.set({ "n", "x", "o" }, "S", function()
	require("flash").treesitter()
end, { noremap = true })

nvim_set_keymap(
	"v",
	"<leader>ls",
	"<cmd>lua require('plugins.toggle-print').toggle_print()<CR>",
	{ noremap = true, silent = true }
)

keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>")
keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>")

-- credit: u/xmsxms
keymap.set("n", "<leader>bc", function()
	local curbufnr = vim.api.nvim_get_current_buf()
	local buflist = vim.api.nvim_list_bufs()
	for _, bufnr in ipairs(buflist) do
		if vim.bo[bufnr].buflisted and bufnr ~= curbufnr and (vim.fn.getbufvar(bufnr, "bufpersist") ~= 1) then
			vim.cmd("bd " .. tostring(bufnr))
		end
	end
end, { silent = true, desc = "Close unused buffers" })

keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", {
	noremap = true,
	silent = true,
})

local MiniFiles = require("mini.files")
local minifiles_toggle = function()
	if not MiniFiles.close() then
		MiniFiles.open()
	end
end
keymap.set("n", "-", minifiles_toggle, {
	noremap = true,
	silent = true,
})
