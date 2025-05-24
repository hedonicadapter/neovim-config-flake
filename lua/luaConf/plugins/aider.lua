return {
	{
		"nvim-aider",
		for_cat = "general.extra",
		event = "VimEnter",
		dep_of = { "snacks.nvim" },
		load = function(name)
			vim.cmd.packadd(name)
		end,
		after = function(plugin)
			require("nvim_aider").setup({
				aider_cmd = "aider",
				args = {
					"--no-gitignore",
					"--no-auto-commits",
					"--no-dirty-commits",
					"--pretty",
					"--stream",
				},
				auto_reload = true,
				picker_cfg = {
					preset = "vscode",
				},
				config = {
					os = { editPreset = "nvim-remote" },
					gui = { nerdFontsVersion = "3" },
				},
				win = {
					wo = { winbar = "Aider" },
					style = "nvim_aider",
					position = "left",
				},
			})
		end,
	},
}
