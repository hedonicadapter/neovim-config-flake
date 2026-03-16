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

	local goto_references = function()
		vim.lsp.buf.references(nil, {
			on_list = function(list)
				local raw_items = list.items or {}
				if #raw_items == 0 then
					vim.notify("No references found", vim.log.levels.INFO)
					return
				end

				-- Deduplicate by stable key to avoid duplicate single-entry quickfix
				local seen = {}
				local items = {}
				for _, item in ipairs(raw_items) do
					local loc = item.user_data and item.user_data.lsp
					local uri = loc and (loc.uri or loc.targetUri)
					local range = loc and (loc.range or loc.targetSelectionRange or loc.targetRange)
					local key
					if uri and range and range.start then
						key = table.concat({ uri, range.start.line, range.start.character or 0, range["end"] and range["end"].line or "" }, ":")
					else
						key = table.concat({ item.filename or "", item.lnum or "", item.col or "", item.text or "" }, ":")
					end
					if not seen[key] then
						seen[key] = true
						table.insert(items, item)
					end
				end

				if #items == 1 then
					local item = items[1]
					local location = item.user_data and item.user_data.lsp
					if location then
						local uri = location.uri or location.targetUri
						local range = location.range or location.targetSelectionRange or location.targetRange
						if uri and range then
							vim.lsp.util.show_document({ uri = uri, range = range }, { focus = true })
							return
						end
					end

					-- Fallback to quickfix-style fields when LSP location data is absent
					if item.bufnr and item.lnum and item.col then
						vim.fn.bufload(item.bufnr)
						vim.api.nvim_win_set_buf(0, item.bufnr)
						vim.api.nvim_win_set_cursor(0, { item.lnum, math.max(item.col - 1, 0) })
						vim.cmd("normal! zv")
						return
					end

					if item.filename and item.lnum and item.col then
						vim.cmd("edit " .. vim.fn.fnameescape(item.filename))
						vim.api.nvim_win_set_cursor(0, { item.lnum, math.max(item.col - 1, 0) })
						vim.cmd("normal! zv")
						return
					end
				end

				vim.fn.setqflist(items, "r")
				vim.cmd("copen")
			end,
		})
	end

	bufmap("gr", goto_references)
	bufmap("<leader>ds", require("telescope.builtin").lsp_document_symbols)
	bufmap("<leader>ps", require("telescope.builtin").lsp_dynamic_workspace_symbols)

	bufmap("K", vim.lsp.buf.hover)

	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, {})
end
