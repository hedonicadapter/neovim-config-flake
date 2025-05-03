return {
	{
		"twilight.nvim",
		for_cat = "general.extra",
		event = "BufEnter",
		cmd = "TwilightEnable",
		after = function(plugin)
			local twilight = require("twilight")
			twilight.setup({
				dimming = {
					alpha = 0.5,
				},
				context = 16,
				treesitter = true,
			})
			twilight.enable()

			-- WARN: might be needed if you frick up the order of colorschemes
			-- vim.api.nvim_exec2(
			-- 	[[
			-- 		au BufEnter * Twilight
			-- 	]],
			-- 	{ output = false }
			-- )
		end,
	},
}
