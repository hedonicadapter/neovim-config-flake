vim.o.background = "dark"
vim.opt.swapfile = false

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
