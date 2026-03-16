return {
	{
		"copilot.vim",
		for_cat = "general.extra",
		cmd = { "Copilot" },
		on_plugin = { "codecompanion.nvim" },
		after = function(plugin) end,
	},
	{
		"codecompanion.nvim",
		for_cat = "general.extra",
		on_require = { "codecompanion", "codecompanion.adapters" },
		cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionCmd", "CodeCompanionActions" },
		after = function(plugin)
			require("codecompanion").setup({
				interactions = {
					chat = {
						adapter = "copilot",
					},
					inline = {
						adapter = "copilot",
					},
					cmd = {
						adapter = "copilot",
					},
					background = {
						adapter = "copilot",
					},
				},
				adapters = {
					copilot = function()
						return require("codecompanion.adapters").extend("copilot", {
							env = {
								endpoint = "/responses",
							},
						})
					end,
				},
				display = {
					chat = {
						start_in_insert_mode = true,
					},
					action_palette = {
						provider = "telescope",
					},
				},
			})
		end,
	},
}
