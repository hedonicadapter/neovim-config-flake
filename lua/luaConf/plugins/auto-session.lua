return {
	{
		"auto-session",
		for_cat = "general.always",
		event = "VimEnter",
		after = function(plugin)
			require("auto-session").setup({
				auto_save = true,
				auto_restore = true,
				auto_restore_last_session = false,
				log_level = "warn",
				-- lazy_support = false,
				root_dir = vim.fn.stdpath("data") .. "/sessions/",
			})
		end,
	},
}
