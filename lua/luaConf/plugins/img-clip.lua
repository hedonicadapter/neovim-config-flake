return {
	{
		"img-clip.nvim",
		for_cat = "general.extra",
		event = "BufReadPost",
		after = function(plugin)
			require("image").setup({
				default = {
					use_absolute_path = false,
					relative_to_current_file = true,

					dir_path = vim.g.neovim_mode == "skitty" and "img" or function()
						return vim.fn.expand("%:t:r") .. "-img"
					end,

					prompt_for_file_name = false,
					file_name = "%y%m%d-%H%M%S",
				},

				filetypes = {
					markdown = {
						url_encode_path = true,
						template = vim.g.neovim_mode == "skitty" and "![i](./$FILE_PATH)"
							or "![$FILE_NAME]($FILE_PATH)",
					},
				},
			})
		end,
	},
}
