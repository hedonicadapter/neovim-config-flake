return {
	{
		"codecompanion.nvim",
		for_cat = "general.extra",
		event = "VimEnter",
		after = function(plugin)
			require("codecompanion").setup({
				adapters = {
					anthropic = function()
						return require("codecompanion.adapters").extend("anthropic", {
							env = {
								api_key = "cmd: gpg --batch --quiet --decrypt ~/secrets/api_key.gpg",
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
