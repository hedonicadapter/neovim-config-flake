return function(_, bufnr)
	-- vim.g.inlay_hints_visible = true
	-- vim.lsp.inlay_hint.enable(true)
	-- navbuddy.attach(client, bufnr)

	local bufmap = function(keys, func)
		vim.keymap.set("n", keys, func, { buffer = bufnr })
	end

	bufmap("<leader>rn", vim.lsp.buf.rename)
	bufmap("<leader>ca", function()
		require("tiny-code-action").code_action()
	end)

	bufmap("gd", vim.lsp.buf.definition)
	bufmap("gD", vim.lsp.buf.declaration)
	bufmap("gI", vim.lsp.buf.implementation)
	bufmap("<leader>D", vim.lsp.buf.type_definition)

	bufmap("gr", require("telescope.builtin").lsp_references)
	bufmap("<leader>ds", require("telescope.builtin").lsp_document_symbols)
	bufmap("<leader>ps", require("telescope.builtin").lsp_dynamic_workspace_symbols)

	bufmap("K", vim.lsp.buf.hover)

	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, {})
end
