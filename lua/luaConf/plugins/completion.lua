local load_w_after = function(name)
	vim.cmd.packadd(name)
	vim.cmd.packadd(name .. "/after")
end

return {
	{
		"cmp-cmdline",
		for_cat = "general.blink",
		on_plugin = { "blink.cmp" },
		load = load_w_after,
	},
	{
		"blink.compat",
		for_cat = "general.blink",
		dep_of = { "cmp-cmdline" },
	},
	{
		"friendly-snippets",
		for_cat = "general.blink",
		dep_of = { "blink.cmp" },
	},
	{
		"colorful-menu.nvim",
		for_cat = "general.blink",
		on_plugin = { "blink.cmp" },
	},
	{
		"blink.cmp",
		for_cat = "general.blink",
		event = "DeferredUIEnter",
		after = function(_)
			require("blink.cmp").setup({
				enabled = function()
					local filetype = vim.api.nvim_buf_get_option(0, "filetype")
					if filetype == "TelescopePrompt" then
						return false
					end
					return true
				end,

				signature = {
					enabled = true,
				},

				completion = {
					documentation = {
						auto_show = true,
					},

					menu = {
						draw = {
							columns = {
								{
									"kind_icon",
									"label",
									"label_description",
									gap = 1,
								},
								{
									"kind",
								},
							},
							components = {
								kind_icon = {
									text = function(ctx)
										local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
										return kind_icon
									end,
									-- (optional) use highlights from mini.icons
									highlight = function(ctx)
										local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
										return hl
									end,
								},
								kind = {
									-- (optional) use highlights from mini.icons
									highlight = function(ctx)
										local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
										return hl
									end,
								},
							},
						},
					},
				},
			})
		end,
	},
}
