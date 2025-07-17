-- NOTE: These 2 need to be set up before any plugins are loaded.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local utils = require("utils")

utils.keymap.set("n", "<leader>sf", function()
	vim.cmd("w")
	vim.notify("saved")
end, {
	desc = "Save and notify",
	noremap = true,
	silent = true,
})

utils.set_keymap_for_all_modes("<leader>qq", "<cmd>qa<CR>")

utils.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {
	noremap = true,
	silent = true,
})

utils.keymap.set("n", "<leader>sv", "<C-w>v", {
	noremap = true,
	desc = "split vertical",
})
utils.keymap.set("n", "<leader>sh", "<C-w>s", {
	noremap = true,
	desc = "split horizontal",
})
utils.keymap.set("n", "<leader>sx", ":close<CR>", {
	noremap = true,
	desc = "close window",
})

-- utils.keymap.set("n", "<leader>bd", ":bd<CR><CR>", {
-- 	noremap = true,
-- 	desc = "close buffer",
-- })
--
utils.keymap.set("n", "<leader>bd", "<cmd>confirm bd<CR>", {
	noremap = true,
	desc = "Delete buffer with save promopt",
})

utils.keymap.set("v", "y", "ygv<esc>", {
	noremap = true,
})

utils.keymap.set("t", "<Esc>", "<C-\\><C-n>", {
	noremap = true,
})

utils.keymap.set("n", "<S-l>", ":bnext<CR>", {
	noremap = true,
	silent = true,
})
utils.keymap.set("n", "<S-h>", ":bprev<CR>", {
	noremap = true,
	silent = true,
})

utils.keymap.set("n", "<C-j>", ":m .+1<CR>==") -- move line down
utils.keymap.set("n", "<C-k>", ":m .-2<CR>==") -- move line up
utils.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi", {
	noremap = true,
	silent = true,
})
utils.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi", {
	noremap = true,
	silent = true,
})
utils.keymap.set("v", "<C-j>", ":m '>+1<CR>gv", {
	noremap = true,
	silent = true,
})
utils.keymap.set("v", "<C-k>", ":m '<-2<CR>gv", {
	noremap = true,
	silent = true,
})

utils.keymap.set("v", "y", "ygv", {
	noremap = true,
})
utils.keymap.set("v", ">", ">gv", {
	noremap = true,
})
utils.keymap.set("v", "<", "<gv", {
	noremap = true,
})

-- paste and then reselect pasted text
utils.keymap.set({ "n", "x" }, "p", "p`[v`]o", { noremap = true, silent = true })
-- yank and then reselect yanked text
utils.keymap.set({ "n", "x" }, "y", function()
	local initialLastYankedText = vim.fn.getreg('"')
	vim.api.nvim_command("normal! y`[v`]")
	local lastYankedText = vim.fn.getreg('"')

	if initialLastYankedText ~= lastYankedText then
		vim.notify("Yanked text: " .. lastYankedText)
	else
		vim.notify("Nothing new yanked")
	end
end, { noremap = true, silent = true })

utils.keymap.set("x", "<leader>p", '"_dP') -- Paste without copying
utils.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
utils.keymap.set("n", "<space>e", vim.diagnostic.open_float)
utils.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

utils.keymap.set("n", "<leader>n", "<Cmd>call search('[([{<\\|\"\\|'']')<CR>", {
	desc = "Jump to next brace, quote, or paren",
})
utils.keymap.set("n", "<leader>p", "<Cmd>call search('[([{<\\|\"\\|'']', 'b') <CR>", {
	desc = "Jump to previous brace, quote, or paren",
})

utils.keymap.set(
	"n",
	"<leader>0",
	"<CMD>lua require('codecompanion').toggle()<CR>",
	{ desc = "Toggle Copilot Chat", noremap = true, silent = true }
)
utils.keymap.set(
	{ "v", "x" },
	"<leader>0",
	"<CMD>CodeCompanionChat Add<CR>",
	{ desc = "Open Copilot Chat with selected inserted", noremap = true, silent = true }
)

-- SnipRun
utils.keymap.set("n", "<leader>sr", "<CMD>SnipRun<CR>", { desc = "Run SnipRun", noremap = true, silent = true })
utils.keymap.set(
	{ "v", "x" },
	"<leader>sr",
	":'<,'>SnipRun<CR>",
	{ desc = "Run SnipRun in visual mode", noremap = true, silent = true }
)

-- flash.nvim
utils.keymap.set({ "n", "x", "o" }, "s", function()
	require("flash").jump()
end, { noremap = true })
utils.keymap.set({ "n", "x", "o" }, "S", function()
	require("flash").treesitter()
end, { noremap = true })

utils.keymap.set(
	"v",
	"<leader>ls",
	"<cmd>lua require('plugins.toggle-print').toggle_print()<CR>",
	{ noremap = true, silent = true }
)

utils.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>")
utils.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>")

-- credit: u/xmsxms
utils.keymap.set("n", "<leader>bc", function()
	local curbufnr = vim.api.nvim_get_current_buf()
	local buflist = vim.api.nvim_list_bufs()
	for _, bufnr in ipairs(buflist) do
		if vim.bo[bufnr].buflisted and bufnr ~= curbufnr and (vim.fn.getbufvar(bufnr, "bufpersist") ~= 1) then
			vim.cmd("silent! bd " .. tostring(bufnr))
		end
	end
end, { silent = true, desc = "Close unused buffers" })

utils.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", {
	noremap = true,
	silent = true,
})

utils.keymap.set(
	"n",
	"<leader>cn",
	"<cmd>lua require('todo-comments').jump_next()<CR>",
	{ noremap = true, silent = true }
)
utils.keymap.set(
	"n",
	"<leader>cp",
	"<cmd>lua require('todo-comments').jump_prev()<CR>",
	{ noremap = true, silent = true }
)

utils.keymap.set("n", "<leader>dv", function()
	local lib = require("diffview.lib")
	local view = lib.get_current_view()
	if view then
		vim.cmd.DiffviewClose()
	else
		vim.cmd.DiffviewOpen()
	end
end, {
	noremap = true,
	silent = true,
})

local function jump_to_buffer_by_index(index)
	local buffers = vim.fn.getbufinfo({ buflisted = 1 })
	if index <= #buffers and index > 0 then
		vim.api.nvim_set_current_buf(buffers[index].bufnr)
	else
		print("Buffer " .. index .. " does not exist")
	end
end

for i = 1, 9 do
	utils.keymap.set({ "n", "v" }, "<Leader>" .. i, function()
		jump_to_buffer_by_index(i)
	end, { noremap = true, silent = true, desc = "Jump to buffer " .. i })
end
