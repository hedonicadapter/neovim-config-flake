return {
	{
		"codecompanion.nvim",
		for_cat = "general.extra",
		on_require = { "codecompanion", "codecompanion.adapters" },
		cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionCmd", "CodeCompanionActions" },
		after = function(plugin)
			require("codecompanion").setup({
				strategies = {
					chat = {
						adapter = "openai",
					},
				},
				adapters = {
					openai = function()
						return require("codecompanion.adapters").extend("openai", {
							schema = {
								model = {
									default = "gpt-4o",
								},
							},
							env = {
								api_key = "cmd: gpg --batch --quiet --decrypt ~/.secrets/openai_api_key.gpg",
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
