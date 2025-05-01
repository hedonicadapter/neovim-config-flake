return {
	{
		"auto-session",
		for_cat = "general.always",
		event = "VimEnter",
		load = function(name)
			vim.cmd.packadd(name)
		end,
		after = function(plugin)
			require("auto-session").setup({
				auto_restore = false,
				auto_save = true,
				log_level = "error",
				root_dir = vim.fn.stdpath("data") .. "/sessions/",
				suppressed_dirs = { "~/", "~/Documents/coding", "~/Downloads", "/" },
			})
		end,
	},
}
