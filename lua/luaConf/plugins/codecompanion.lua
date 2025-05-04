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
								api_key = "cmd:op read op://personal/anthropic/credential --no-newline",
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
